{ config, pkgs, ... }: {
  programs.vscode = {
    enable = true;
    package = pkgs.vscode; # Can be changed to vscodium
    profiles = {
      latex = {
        extensions = with pkgs.vscode-extensions; [
          james-yu.latex-workshop
        ];
        userSettings = {
          "editor.acceptSuggestionOnCommitCharacter" = false;
          "editor.acceptSuggestionOnEnter" = "on";
          "editor.accessibilitySupport" = "off";
          "editor.autoClosingBrackets" = "always";
          "editor.autoClosingQuotes" = "always";
          "editor.autoIndent" = "full";
          "editor.bracketPairColorization.enabled" = true;
          "editor.fontSize" = 16;
          "editor.formatOnSave" = true;
          "editor.suggestOnTriggerCharacters" = true;
          "editor.tabSize" = 4;
          "editor.wordWrap" = "off";

          "latex-workshop.bind.enter.key" = false;
          "latex-workshop.formatting.latex" = "latexindent";
          "latex-workshop.hover.citation.enable" = true;
          "latex-workshop.hover.command.enable" = true;
          "latex-workshop.intellisense.citation.backend" = "biblatex";
          "latex-workshop.intellisense.package.enabled" = true;
          "latex-workshop.intellisense.package.extra" = [
            "amsmath"
            "mhchem"
            "chemfig"
          ];

          "latex-workshop.latex.autoBuild.run" = "onSave";
          "latex-workshop.latex.autoClean.run" = "onBuilt";
          "latex-workshop.latex.clean.fileTypes" = [ "*.aux" "*.bbl" "*.blg" "*.idx" "*.ind" "*.lof" "*.lot" "*.out" "*.toc" "*.acn" "*.acr" "*.alg" "*.glg" "*.glo" "*.gls" "*.fls" "*.log" "*.fdb_latexmk" "*.snm" "*.synctex(busy)" "*.synctex.gz(busy)" "*.nav" "*.vrb" "*.xdv" ];
          "latex-workshop.latex.recipes" = [
            {
              "name" = "latexmk";
              "tools" = [ "latexmk" ];
            }
            {
              "name" = "latexmk -> bibtex -> latexmk * 2";
              "tools" = [ "latexmk" "bibtex" "latexmk" "latexmk" ];
            }
            {
              "name" = "pdflatex";
              "tools" = [ "pdflatex" ];
            }
            {
              "name" = "pdflatex -> bibtex -> pdflatex * 2";
              "tools" = [ "pdflatex" "bibtex" "pdflatex" "pdflatex" ];
            }
          ];
          "latex-workshop.latex.tools" = [
            {
              "name" = "latexmk";
              "command" = "latexmk";
              "args" = [ "-synctex=1" "-interaction=nonstopmode" "-file-line-error" "-pdf" "-outdir=%OUTDIR%" "%DOC%" ];
              "env" = {};
            }
            {
              "name" = "pdflatex";
              "command" = "pdflatex";
              "args" = [ "-synctex=1" "-interaction=nonstopmode" "-file-line-error" "-outdir=%OUTDIR%" "%DOC%" ];
              "env" = {};
            }
            {
              "name" = "bibtex";
              "command" = "bibtex";
              "args" = ["%DOCFILE%"];
            }
            {
              "name" = "biber";
              "command" = "biber";
              "args" = ["%DOCFILE%"];
            }
          ];
          "latex-workshop.message..error.show" = false;
          "latex-workshop.message..warning.show" = false;
          "latex-workshop.view.pdf.dark.backgroundColor" = "#1e1e1e";
          "latex-workshop.view.pdf.zoom" = "page-fit";

          "workbench.colorTheme" = "Default Dark Modern";
          "workbench.preferredDarkColorTheme" = "Default Dark Modern";
          "workbench.sideBar.location" = "right";
          "workbench.statusBar.visible" = true;
        };
      };
      python = {
        extensions = with pkgs.vscode-extensions; [
          ms-python.python
          ms-python.vscode-pylance
          ms-python.debugpy
        ];
        userSettings = {
          
        };
      };
    };
  };
}
