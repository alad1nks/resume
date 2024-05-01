FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive 

RUN apt-get update                                  \
    && apt-get install -y texlive-latex-base        \
                          texlive-fonts-recommended \
                          texlive-fonts-extra       \
                          texlive-latex-extra

CMD pdflatex                                        \
    -interaction=nonstopmode                        \
    -halt-on-error                                  \
    -output-directory /resume                        \
    /resume/resume.tex
