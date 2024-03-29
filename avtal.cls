\ProvidesClass{avtal}
\LoadClass[a4paper,11pt]{article}
\usepackage[utf8]{inputenc}
\usepackage[margin=1.8cm]{geometry}
\date{}

% Defaults
\newcommand{\arbetstimmar}{40}
\newcommand{\semesterdagar}{30}
\newcommand{\heltiddeltid}{Heltid}
\newcommand{\anstallningsform}{Tillsvidare}
\newcommand{\overtidsersattning}{Övertidsersättning utgår ej.}
\newcommand{\ovrigavillkor}{}
\newcommand{\chefnamn}{}

% Diverse uppgifter om anställningen
\newcommand{\befattning}[1]{\renewcommand{\befattning}{#1}}
\newcommand{\arbetsplats}[1]{\renewcommand{\arbetsplats}{#1}}
\newcommand{\tilltrade}[1]{\renewcommand{\tilltrade}{#1}}
\newcommand{\uppsagningstid}[1]{\renewcommand{\uppsagningstid}{#1}}
\newcommand{\lon}[1]{\renewcommand{\lon}{#1}}
\newcommand{\semester}[1]{\renewcommand{\semesterdagar}{#1}}
\newcommand{\arbetsuppgifter}[1]{\renewcommand{\arbetsuppgifter}{#1}}
\newcommand{\formaner}[1]{\renewcommand{\formaner}{#1}}
\newcommand{\heltid}[1][40]{
    \renewcommand{\arbetstimmar}{#1}
    \renewcommand{\heltiddeltid}{Heltid}
}
\newcommand{\deltid}[2]{
    \renewcommand{\arbetstimmar}{#1}
    \renewcommand{\heltiddeltid}{Deltid om #2\%}
}
\newcommand{\overtid}[1]{\renewcommand{\overtidsersattning}{#1}}
\newcommand{\chef}[1]{\renewcommand{\chefnamn}{#1}}

% Anställningsformer
\newcommand{\tillsvidare}{\renewcommand{\anstallningsform}{Tillsvidareanställning}}
\newcommand{\provanstallning}[1]{\renewcommand{\anstallningsform}{Provanställning t o m #1}}
\newcommand{\tidsbegransad}[1]{\renewcommand{\anstallningsform}{Tidsbegränsad anställning t o m #1}}

\newcommand{\pad}{\vspace{0.2cm}}
\newcommand{\cell}[5]{\multicolumn{#2}{#1}{\parbox{#3}{\pad{\footnotesize #4}\newline#5\pad}}}



%%% Uppgifter arbetsgivaren %%%
\newcommand{\arbetsgivare}[6]{
    \newcommand{\foretag}{#1}
    \renewcommand{\arbetsgivare}{
        \begin{section}{Arbetsgivare}
            \begin{tabular}{|l|l|l|l|}
                \hline
                \cell{|l|}{4}{16cm}{Namn}{#1}\\

                \hline

                \cell{|l|}{3}{12cm}{Adress}{#4} &
                \cell{l|}{1}{4cm}{Organisationsnummer}{#2}\\

                \hline

                \cell{|l|}{1}{4cm}{Postnummer}{#5} &
                \cell{l}{2}{8cm}{Ort}{#6} &
                \cell{|l|}{1}{4cm}{Telefonnummer}{#3}\\
                \hline
            \end{tabular}
        \end{section}
    }
}



%%% Uppgifter arbetstagaren %%%
\newcommand{\arbetstagare}[6]{
    \newcommand{\arbetstagarnamn}{#1}
    \renewcommand{\arbetstagare}{
        \begin{section}{Arbetstagare}
            \begin{tabular}{|l|l|l|l|}
                \hline
                \cell{|l|}{4}{16cm}{Namn}{#1}\\

                \hline

                \cell{|l|}{3}{12cm}{Adress}{#4} &
                \cell{l|}{1}{4cm}{Personnummer}{#2}\\

                \hline

                \cell{|l|}{1}{4cm}{Postnummer}{#5} &
                \cell{l}{2}{8cm}{Ort}{#6} &
                \cell{|l|}{1}{4cm}{Telefonnummer}{#3}\\
                \hline
            \end{tabular}
        \end{section}
    }
}



%%% Uppgifter om anställningen %%%
\newcommand{\anstallning}{
    \begin{section}{Uppgifter om anställning}
        \begin{tabular}{|l|l|l|l|}
            \hline
            % Jag har inte den blekaste aning om varför 12cm är kortare här än i resten av dokumentet...
            \cell{|l|}{3}{12.41cm}{Befattning}{\befattning} &
            \cell{l|}{1}{4cm}{Tillträdesdag}{\tilltrade} \\

            \hline
            \cell{|l|}{4}{16cm}{Arbetsplats}{\arbetsplats}\\

            \hline

            \cell{|l|}{4}{16cm}{Arbetsuppgifter}{\arbetsuppgifter} \\

            \hline

            \cell{|l|}{3}{12cm}{Lön}{\lon\ SEK/månad} &
            \cell{l|}{1}{4cm}{Semesterdagar/år}{\semesterdagar}\\

            \hline

            \cell{|l|}{4}{16cm}{Löneutbetalning}{
                Lön utbetalas den 25:e varje månad. Om den 25:e inte infaller på en vardag utbetalas lönen närmast
                föregående vardag. Förskottslön tillämpas. Avvikelser regleras på nästkommande månadslön.
            }\\

            \hline

            \cell{|l|}{4}{16cm}{Uppsägningstid}{\uppsagningstid} \\

            \hline

            \cell{|l|}{4}{16cm}{Övriga förmåner}{\formaner}\\

            \hline
        \end{tabular}
    \end{section}
    \begin{section}{Anställningsform och arbetstid}
        \begin{tabular}{|l|l|l|l|}
            \hline
            \cell{|l|}{2}{8cm}{Anställningsform}{\anstallningsform} &
            \cell{l|}{1}{4cm}{Arbetstimmar/vecka}{\arbetstimmar} &
            \cell{l|}{1}{4cm}{Arbetstid}{\heltiddeltid} \\

            \hline
            \cell{|l|}{4}{16cm}{Övertid}{\overtidsersattning}\\

            \hline
        \end{tabular}
    \end{section}
}



%%% Övriga villkor %%%
\newcommand{\ovrigt}[1]{\renewcommand{\ovrigavillkor}{
    \begin{section}{Övriga villkor}
        #1
    \end{section}
}}



%%% Underskrifter %%%
\newcommand{\signbox}[2]{
    \parbox{8cm}{
        \hspace{0.18cm}{\large\textbf{#1 underskrift}}\\
        \begin{tabular}{l}
            \\\\\\
            {\large}\vspace{-0.3cm}\\
            \makebox[8cm]{\dotfill}\\
            {\footnotesize Datum och ort}\\\\\\
            {\large}\vspace{-0.3cm}\\
            \makebox[8cm]{\dotfill}\\
            {\footnotesize Underskrift}\\\\\\
            {\large #2}\vspace{-0.3cm}\\
            \makebox[8cm]{\dotfill}\\
            {\footnotesize Namnförtydligande}\\\\
        \end{tabular}
    }
}

\newcommand{\underskrifter}{
    \vspace{2cm}
    \hspace{-1cm}
    \begin{tabular}{lr}
        \signbox{Arbetsgivarens}{\chefnamn}\hspace{0.25cm} &
        \hspace{0.25cm}\signbox{Arbetstagarens}{\arbetstagarnamn}
    \end{tabular}
}



%%% Obligatoriska delar för alla anställningsavtal %%%
\newcommand{\basvillkor}{
    \arbetsgivare
    \arbetstagare
    \anstallning
}
