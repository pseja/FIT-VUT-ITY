\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{fitthesispresn}[2020/09/14]

%Vychozi hodnoty parametru / Default values for parameters
\newif\ifczech \let\ifczech\iftrue
\newif\ifenglish \let\ifenglish\iffalse

%-----------------------------------------------------------------------------
% Parametry tridy (odkomentovani zakomentovanych na vlastni nebezpeci)
% Class parameters (uncommenting of commented one is only on your own risk)
%-----------------------------------------------------------------------------
\DeclareOption{english}{\let\ifenglish\iftrue\let\ifczech\iffalse}
\DeclareOption*{}
\ProcessOptions\relax
\LoadClass[10pt,hyperref={unicode}]{beamer}

%-----------------------------------------------------------------------------
% Balicky / Packages
%-----------------------------------------------------------------------------
\ifenglish
  \PassOptionsToPackage{main=english}{babel}
\fi
\usepackage[czech,slovak,english]{babel}
\usepackage[utf8]{inputenc} %kodovani / encoding
\usepackage{newcent}
\usepackage{hyperref}
\usepackage{fancyvrb}
\usepackage{appendixnumberbeamer}
\usepackage{tikz}

% Volba loga dle zvoleneho jazyka / Logo selection according to the chosen language
\ifenglish
  \usetheme{FIT}
\else
  \usetheme[logocz]{FIT}
\fi

\ifczech
  \main@language{czech}
\else
  \main@language{english}
\fi

%-----------------------------------------------------------------------------
% Texty / Texts
%-----------------------------------------------------------------------------

%-----------------------------------------------------------------------------
% Projectinfo - parametrizace sablony / template parameters
%-----------------------------------------------------------------------------
% Parametry / Parameters
\define@key{projinfo}{title}{\def\@title{#1}}
\define@key{projinfo}{title.footer}{\def\@title@f{#1}}
\define@key{projinfo}{author.name}{\def\@author@n{#1}}
\define@key{projinfo}{author.surname}{\def\@author@s{#1}}
\define@key{projinfo}{author.title.first}{\def\@author@tf{#1}}
\define@key{projinfo}{date}{\def\@date{#1}}

% Vychozi hodnoty / Default values
\setkeys{projinfo}{
  date=\today
}
    
\ifczech
  \setkeys{projinfo}{
      title={Název prezentace}, title.footer={Název prezentace},
      author.name=Jméno, author.surname=Příjmení, author.title.first={}
    }%
\else
  \setkeys{projinfo}{
    title={Title of a Presentation}, title.footer={Title of a Presentation},
    author.name=Name, author.surname=Surname, author.title.first={}
  }% 
\fi

\def\projectinfo{\setkeys{projinfo}}

% Cele jmeno autora/vedouciho / Full name of author/supervisor
\usepackage{ifthen}
\def\@author{\@author@tf\ \@author@n\ \@author@s}

%-----------------------------------------------------------------------------
% Titulní stránka / Title page
%-----------------------------------------------------------------------------
\title[\@title@f]{\@title}
\author[]{\@author}
\institute[]{}
\date{\@date}
