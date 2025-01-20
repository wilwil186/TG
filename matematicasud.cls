\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{matematicasud}[2020/07/31 Paquete matematicas udistrital]
\LoadClass[12pt, titlepage]{article}
\RequirePackage{xcolor, amssymb, amsmath, amsthm, fancyhdr, hyperref, graphicx, tikz, pgfplots, pgf, tkz-euclide, enumerate, float}

%%CONFIGURACIÓN DE PGF Y TIKZ
\pgfplotsset{width=7cm,compat=1.8}
\usepgfplotslibrary{polar}

%% LAS IMAGENES DEBEN ESTAR VECTORIZADAS EN FORMATO PDF
\DeclareGraphicsExtensions{.pdf}

%% ESTILOS DE TEOREMAS
\theoremstyle{plain}
\newtheorem{teorema}{Teorema}
\newtheorem*{teorema*}{Teorema}
\newtheorem{lema}{Lema}
\newtheorem{proposicion}{Proposición}
\newtheorem{corolario}{Corolario}
\theoremstyle{definition}
\newtheorem{definicion}{Definición}
\theoremstyle{remark}
\newtheorem{nota}{Nota}
\newtheorem{ejercicio}{Ejercicio}

%% IDIOMAS
\usepackage[spanish]{babel}

%% MÁRGENES
\usepackage{geometry}
\geometry{letterpaper,tmargin=4cm,bmargin=4cm,lmargin=2cm,rmargin=2cm, headheight=1cm,headsep=1cm,footskip=2cm}

%% FUENTES
\usepackage{kpfonts,baskervald}

%% TÍTULO
\newcommand\titulodeltrabajo[1]{\title{
\vspace{-3cm}
 \includegraphics[width=0.25\textwidth]{escudo.pdf} % Cambiado de 0.3 a 0.15 para reducir el tamaño
	\vspace{1cm}\\
	\rule{\linewidth}{0.7pt} \\ [15pt] 
	{#1}
	\\
	\rule{\linewidth}{0.7pt}\\ [10pt]
		\normalsize{Trabajo de Grado Modalidad Pasantía}
}}


\newcommand\autoresydirector[3]{\author{
    \textbf{Autor:} {#1} \\
    \textbf{Director:} {#2} \\
    \textbf{Profesional designado:} {#3}
}}


\newcommand\mesyano[2]{\date{\vspace{3cm}\textsc{Bogotá, DC\\{#1} de {#2}}}}

\usepackage{etoolbox}
\patchcmd{\abstract}{\null\vfil}{}{}{}

\AtBeginDocument{
\setlength{\parskip}{\medskipamount}
\setlength{\parindent}{0pt}
\pagestyle{fancy}
\renewcommand{\headrulewidth}{2pt}
\renewcommand{\footrulewidth}{1pt}
\fancyhf{}
\fancyhead{}
\chead{\leftmark}
\cfoot{Página \thepage}
}

