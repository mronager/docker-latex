Docker Image for LaTeX
======================

This Docker Image contains the texlive-full package, which should include most of the packages available for LaTeX. It works by mounting your working directory to the container, and supplying the `.tex`-file you want to compile.

## Quick Start

To compile a latex file called `example.tex`, run

```
$ docker run --rm -v $(pwd):/data nokk/docker-latex example.tex
```

