# Resume

Generate a resume PDF from LaTeX.

> Only tested on Mac. YMMV

## Quickstart

Install required dependencies:
```
make deps
```

Generate the resume:
```
make
```

Output can be found at `build/resume.pdf`

## Release

The release artifact is simply `resume.pdf`, to update it, perform a release:

```
make release
```
