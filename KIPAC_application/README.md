# KIPAC application drafts

Prepared 3 November 2026 for [Stanford–KIPAC–FELLOWS, position 32588](https://academicjobsonline.org/ajo/Stanford/KIPAC/FELLOWS).

| Document | PDF | Length |
| --- | --- | --- |
| Cover letter | `Cover_Letter_KIPAC.pdf` | 1 page |
| Curriculum vitae | `CV_KIPAC.pdf` | 2 pages |
| General research statement | `Research_Statement_KIPAC.pdf` | 3 pages, including references |
| Publication list | `Publication_List_KIPAC.pdf` | 2 pages |
| CV with publication list appended | `CV_with_Publications_KIPAC.pdf` | 4 pages |

Each of the four main documents has an editable `.tex` source. `application_style.tex` controls shared formatting: US Letter paper, one-inch margins, 11-point body text, and 10-point research-statement references. The combined CV is an alternative upload containing the same CV and publication list. For separate AJO fields, upload `CV_KIPAC.pdf` and `Publication_List_KIPAC.pdf`; use `CV_with_Publications_KIPAC.pdf` only as the combined alternative, without duplicating the publication list.

## Items for author review

- Publication contribution descriptions incorporate your latest corrections. Gupta et al. (2024) now credits lensing statistics and future-detector forecasts; Pathak et al. (2026) credits match tests, parameter estimation, interpretation, and comparison with related work. The waveform paper explicitly credits Achamveedu Gopakumar’s substantial manuscript-writing and interpretation contributions. The solo science-writing entry credits editor Gautam Basu of Bose Institute. The Tiwari et al. (2019) description retains your supplied waveform-calculation, Mathematica, and manuscript-equation contributions.
- Your supplied thesis title is included verbatim. The expected formal degree award remains December 2026, as you confirmed during review. The exact defence date has been omitted from the CV and cover letter.
- The cover letter expresses interest in Kavli/Porat fellowships and other suitable KIPAC positions. It proposes scientific exchanges with Phil Marshall and Risa Wechsler's group; it does not assert agreed collaborations. The research statement is general and contains no institution-specific promises. The CV and research statement now name the existing collaborators for each research direction, using your supplied project associations and verified name spellings; see the collaborator section of the source notes.
- No reference letters or referee contact list were created, as requested. Arrange the three to four letters through AJO.
- KIPAC encourages an optional community-contribution appendix of up to one page. It is not included in these four requested documents; mentoring, teaching, and outreach appear in the CV and cover letter.

The advertised deadline was 2 November 2026 at 11:59 p.m. Eastern Time (3 November at 12:59 p.m. Hong Kong time). The advert allows discretionary consideration of late applications. Nothing has been submitted.

## Structure and source checks

The [AAS guidelines](https://aas.org/jobregister/postdoc-application-guidelines) specify a CV of at most two pages excluding publications and a research statement of at most three pages including references. For institutional fellowships they recommend approximately one-third prior/current work and two-thirds proposed research. The research statement follows this emphasis: research context and foundations on page 1, followed by proposed projects and their feasibility. The CV includes five selected presentations. Publications are separated by type, with software identified separately.

Primary local sources were `../LVK_resume_common/main.tex`, the three `.tex` application documents in `../CAA_application/`, and `../IGAFE/IGFAE_CV.tex` plus `research_eligibility_igfae.tex`. Existing documents were not modified. The 15 bibliography entries are retained; scientific software is also listed as research products without counting the associated papers twice.

The newer IGFAE documents specify implementation of TaylorF2Ecck in a LALSuite **fork**; that distinction is retained. The applicant-supplied correspondence further distinguishes Shri Krishna Anand’s ongoing analytical spin extension under Achamveedu Gopakumar’s guidance from the applicant’s planned implementation, testing, and validation. Possible coordination on 3.5PN eccentric phasing remains prospective; official LALSuite integration remains a goal. These distinctions are retained in the revised research statement and cover letter. Published waveform analyses retain their null-evidence conclusions. Source/lens model uncertainty, observational sampling, and Monte Carlo error remain distinct. SNR-based detection estimates are not equated with calibrated search sensitivity. The cosmography project builds on Maity et al.; it is proposed work and is not listed as your publication. The GRB project remains distinct from GW population cosmography.

Online checks covered the KIPAC advert, its opportunities page, AAS guidelines (recovered through the search index after direct requests returned HTTP 403), relevant KIPAC profiles, and the arXiv records for ler, gwsnr, TaylorF2Ecck, GW190814, multimessenger lensing, and the proposed cosmography extension. Other bibliography metadata were retained from your existing CV rather than independently reverified. Links and source notes are in `sources/requirements_and_sources.md`.

## Review revisions

The external review was applied selectively: the opening now gives a separate motivation for each project, and the final research paragraph specifies concrete outcomes and the applicant's role. The cover-letter outreach sentence was simplified, and the exact defence date was removed while retaining the expected December 2026 award. Visible, clickable documentation URLs were added to the software entries and checked in both the publication list and combined CV.

The three research directions remain separate. Collaborator names, Gopakumar's explicit contribution credit, and LVK/GRASP commitments are retained. Eccentric waveform development and implementation remain the stated objective. Institutional fit remains in the cover letter, preserving the requested general research statement. No unconfirmed appointment or fellowship selections were added.

## Build and validation

Run `bash build.sh` from this directory. This compiles the four documents, copies the PDFs here, and assembles the combined CV using `~/anaconda3/envs/ler/bin/python`.

The final build was checked for page counts, extractable text, and LaTeX warnings; every page was rendered for visual inspection. See `build/verification.json`, compilation logs, extracted text, and PNG previews. Recheck pagination after editing. All requested contribution descriptions are now included.
