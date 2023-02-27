%% Copyright 2019 UX Stack

\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{uxstack}[2019/07/05 v0.1.0 uxstack class]

\LoadClass[11pt,a4paper]{article}

\RequirePackage{fancyhdr}
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage{url}
\RequirePackage{graphicx}
\RequirePackage{calc}
\RequirePackage{microtype}
\RequirePackage{babel}
\RequirePackage[autolanguage]{numprint}
\RequirePackage[unicode]{hyperref}
\RequirePackage{translator}
\RequirePackage{etoolbox}
\RequirePackage{bookmark}
\RequirePackage{eurosym}
\RequirePackage[sfdefault]{roboto}


% do not show thumbnails or bookmarks on opening (on supporting browsers); set \pdfpagemode to "UseOutlines" to show bookmarks
\newcommand*\pdfpagemode{UseNone}

\AtEndPreamble{
    % has to be issued before loading hyperref, as to set \thepage and hence to avoid hyperref issuing a warning and setting pdfpagelabels=false

    \hypersetup{
        breaklinks,
        baseurl        = http://,
        pdfborder      = 0 0 0,
        pdfpagemode    = \pdfpagemode,
        pdfstartpage   = 1,
        pdfcreator     = {\LaTeX{} with 'uxstack-latex' package by UX Stack},
%       pdfproducer    = {\LaTeX{}},% will/should be set automatically to the correct TeX engine used
        bookmarksopen  = true,
        bookmarksdepth = 2,% to show sections and subsections
        pdfauthor      = {UX Stack},
        pdftitle       = {\title},
%        pdfsubject     = {Resum\'{e} of \@firstname{}~\@lastname{}},
        pdfkeywords    = {\keywords}
    }
}

% Use questionnaire type
%
% usage \questionnairetype{<type_name>}
\newcommand*{\questionnairetype}[1]{%
    \RequirePackage{questionnaire-#1}%
}

% Make questionnaire logo
%
% usage: \makequestionnairelogo
\newcommand*{\makequestionnairelogo}{}

% Make questionnaire header
%
% usage: \makequestionnaireheader
\newcommand*{\makequestionnaireheader}{}

% Make questionnaire table
%
% usage: \makequestionnaireform
\newcommand*{\makequestionnaireform}{}

% Make questionnaire footer
%
% usage: \makequestionnairefooter
\newcommand*{\makequestionnairefooter}{}

% Make questionnaire
%
% usage: \makequestionnaire
\newcommand*{\makequestionnaire}{
    \makequestionnairelogo
    \makequestionnaireheader
    \makequestionnaireform
    \makequestionnairefooter
}

\endinput
