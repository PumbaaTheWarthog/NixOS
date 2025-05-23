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
          "editor" = {
            "acceptSuggestionOnCommitCharacter" = false;
            "acceptSuggestionOnEnter" = "on";
            "accessibilitySupport" = "off";
            "autoClosingBrackets" = "always";
            "autoClosingQuotes" = "always";
            "autoIndent" = "full";
            "bracketPairColorization.enabled" = true;
            "fontSize" = 16;
            "formatOnSave" = true;
            "suggestOnTriggerCharacters" = true;
            "tabSize" = 4;
            "wordWrap" = "off";
          };
        
          "latex-workshop" = {
            "bind.enter.key" = false;
            "formatting" = {
              "latex" = "latexindent";
            };
            "hover" = {
                "citation.enable" = true;
                "command.enable" = true;
            };
            "intellisense" = {
              "citation.backend" = "biblatex";
              "package.enabled" = true;
              "package.extra" = [
                "amsmath"
                "mhchem"
                "chemfig"
              ];
              };
              "latex" = {
                "autoBuild.run" = "onSave";
                "autoClean.run" = "onBuilt";
                "clean.fileTypes" = [ "*.aux" "*.bbl" "*.blg" "*.idx" "*.ind" "*.lof" "*.lot" "*.out" "*.toc" "*.acn" "*.acr" "*.alg" "*.glg" "*.glo" "*.gls" "*.fls" "*.log" "*.fdb_latexmk" "*.snm" "*.synctex(busy)" "*.synctex.gz(busy)" "*.nav" "*.vrb" "*.xdv" ];
                "recipes" = [
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
                "tools" = [
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
              };
              "message" = {
                "error.show" = false;
                "warning.show" = false;
              };
              "view" = {
                "pdf.dark.backgroundColor" = "#1e1e1e";
                "pdf.zoom" = "page-fit";
              };
            };
        
          "workbench" = {
            "colorTheme" = "Default Dark Modern";
            "preferredDarkColorTheme" = "Default Dark Modern";
            "sideBar.location" = "right";
            "statusBar.visible" = true;
          };
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
