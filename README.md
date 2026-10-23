# Academic CV

LaTeX source and compiled PDF of Phurailatpam Hemantakumar's academic CV.

## Files

- [`LVK_resume_common/main.pdf`](LVK_resume_common/main.pdf): compiled CV.
- [`LVK_resume_common/main.tex`](LVK_resume_common/main.tex): editable LaTeX source.
- [`LVK_resume_common/res.cls`](LVK_resume_common/res.cls): resume document class.

## Build

Install a TeX distribution with `pdflatex` and `latexmk`, then run:

```sh
cd LVK_resume_common
latexmk -pdf -interaction=nonstopmode -halt-on-error main.tex
```

The compiled PDF is tracked so it can be viewed without building the source.
Temporary LaTeX build files are ignored.

To remove temporary build files while keeping the PDF:

```sh
latexmk -c main.tex
```
