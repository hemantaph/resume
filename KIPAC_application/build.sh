#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
mkdir -p build
latexmk -pdf -interaction=nonstopmode -halt-on-error -outdir=build \
  Cover_Letter_KIPAC.tex CV_KIPAC.tex Research_Statement_KIPAC.tex Publication_List_KIPAC.tex \
  > build/build_output.txt 2>&1
for name in Cover_Letter_KIPAC CV_KIPAC Research_Statement_KIPAC Publication_List_KIPAC; do
  cp "build/$name.pdf" "$name.pdf"
  pdftotext -layout "$name.pdf" "build/$name.txt"
done
"$HOME/anaconda3/envs/ler/bin/python" - <<'PY'
from pathlib import Path
from pypdf import PdfReader, PdfWriter
import json

expected = {
    'Cover_Letter_KIPAC': 1,
    'CV_KIPAC': 2,
    'Research_Statement_KIPAC': 3,
    'Publication_List_KIPAC': 2,
}
report = {}
for name, target in expected.items():
    reader = PdfReader(f'{name}.pdf')
    assert len(reader.pages) == target, f'{name}: expected {target} pages, got {len(reader.pages)}'
    assert all(page.extract_text().strip() for page in reader.pages), f'{name}: blank page'
    log = Path(f'build/{name}.log').read_text()
    warnings = [line for line in log.splitlines()
                if any(token in line for token in ('Overfull', 'Underfull', 'Warning', '!'))]
    report[name] = {'pages': len(reader.pages), 'warnings': warnings}
    assert not warnings, f'{name}: inspect LaTeX warnings'

writer = PdfWriter()
for name in ('CV_KIPAC', 'Publication_List_KIPAC'):
    writer.append(f'{name}.pdf')
writer.add_metadata({'/Title': 'CV and publication list | Phurailatpam Hemantakumar',
                     '/Author': 'Phurailatpam Hemantakumar'})
writer.write('CV_with_Publications_KIPAC.pdf')
report['CV_with_Publications_KIPAC'] = {'pages': len(PdfReader('CV_with_Publications_KIPAC.pdf').pages)}
report['author_review_pending'] = []
Path('build/verification.json').write_text(json.dumps(report, indent=2) + '\n')
print(json.dumps(report, indent=2))
PY
