\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{matematicasud}[2024/03/01 Paquete matematicas_udistrital optimizado]

% ==================================================
% CLASE BASE Y CONFIGURACIÓN PRINCIPAL
% ==================================================
\LoadClass[12pt, titlepage]{article}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[spanish]{babel}
\RequirePackage{microtype} % Evita problemas de desbordamiento y mejora la justificación

% ==================================================
% PAQUETES MATEMÁTICOS Y HERRAMIENTAS GRÁFICAS
% ==================================================
\RequirePackage{xcolor, amssymb, amsmath, amsthm}
\RequirePackage{fancyhdr}
\RequirePackage{graphicx}
\RequirePackage{tikz}
\RequirePackage{pgfplots}
\RequirePackage{pgf}
\RequirePackage{tkz-euclide}
\RequirePackage{enumerate}
\RequirePackage{float}
\RequirePackage{etoolbox}

% ==================================================
% FUENTES
% ==================================================
\RequirePackage{kpfonts}
\RequirePackage{baskervald}

% ==================================================
% CONFIGURACIÓN DE GRÁFICOS Y PGFPLOTS
% ==================================================
\pgfplotsset{width=7cm,compat=1.8}
\usepgfplotslibrary{polar}
\DeclareGraphicsExtensions{.pdf}  % Imágenes en formato PDF

% ==================================================
% ENTORNOS TIPO TEOREMA
% ==================================================
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

% ==================================================
% MÁRGENES Y FORMATO DE PÁGINA
% ==================================================
\RequirePackage{geometry}
\geometry{
  letterpaper,
  tmargin=4cm,
  bmargin=4cm,
  lmargin=2cm,
  rmargin=2cm,
  headheight=1cm,
  headsep=1cm,
  footskip=2cm
}

% ==================================================
% COMANDOS PARA TÍTULO, AUTORES Y FECHA
% ==================================================
\newcommand\titulodeltrabajo[1]{%
  \title{
    \vspace{-3cm}
    \includegraphics[width=0.25\textwidth]{escudo.pdf}\\[1cm]
    \rule{\linewidth}{0.7pt} \\[15pt]
      {#1}\\
    \rule{\linewidth}{0.7pt}\\[10pt]
    \normalsize{Trabajo de Grado Modalidad Pasantía}
  }
}

\newcommand\autoresydirector[3]{%
  \author{
    \textbf{Autor:} #1 \\
    \textbf{Director:} #2 \\
    \textbf{Profesional designado:} #3
  }
}

\newcommand\mesyano[2]{%
  \date{\vspace{3cm}\textsc{Bogotá, DC\\#1 de #2}}
}

% ==================================================
% CONFIGURACIÓN DE ENCABEZADOS Y PIE DE PÁGINA
% ==================================================
\AtBeginDocument{%
  \setlength{\parskip}{\medskipamount}
  \setlength{\parindent}{0pt}
  \pagestyle{fancy}
  \renewcommand{\headrulewidth}{2pt}
  \renewcommand{\footrulewidth}{1pt}
  \fancyhf{}
  \chead{\leftmark}
  \cfoot{Página \thepage}
  \sloppy               % Menos estricto con saltos de línea
  \emergencystretch=1em % Permite un pequeño estiramiento extra en las líneas
}

% ==================================================
% HYPERREF (SE CARGA AL FINAL PARA EVITAR CONFLICTOS)
% ==================================================
\RequirePackage{hyperref}

\endinput

