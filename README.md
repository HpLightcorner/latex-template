# A simple latex template for working with Visual Studio Code
This template shall kickstart the LaTeX and git/github experience of my students at Carinthian University of Applied Sciences.

To get started need the following tools installed on your system:
- Visual Studio Code
- LaTeX Workshop (Visual Studio Code Extension)
- A LaTeX Distribution
  - for MacOS: [MacTeX](https://www.tug.org/mactex/)
  - for Windows/Linux: [TeX Live](https://www.tug.org/texlive/)
- If not already installed with your TeX distribution: Install [arara](https://github.com/islandoftex/arara)

# Workflow
The template uses `arara` and `latex-mk` to automate PDF builds. 
It furthermore puts all the output files into an out folder, keeping a clean file system.

It should work out of the box, no further settings are necessary.
Be aware of the special comments
```latex
% !TEX root = ../Thesis.tex
````
at the beginning of each file. 
This comment instructs the LaTeX Workshop plugin to always use the Thesis.tex file in the root folder   as your document-root, hence building your PDF works from every source file.

# Recommended Workflow
The template includes two special functions:

```latex
\q{A scientific question I want to answer}
\qs{Another question needing a reference}{my reference}
```

The commands introduce so called microquestions, a concept you should definitly give a try.
Further information can be found [here](https://www.youtube.com/watch?v=Ff8lGPHK2ls).


# Disclaimer
This template is based on [latex-mimosis](https://github.com/Pseudomanifold/latex-mimosis)
