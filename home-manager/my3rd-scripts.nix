{ config, lib, pkgs, ... }:

{
  home.file.".myscript/agenda-html".source =pkgs.fetchFromGitHub {
    owner = "dantecatalfamo";
    repo = "agenda-html";
    rev = "6dd1cbcd5c9743ec176e2529102ad6825d113419";
    sha256 = "1ca5017wbzvbmpm68qrvclgphzdwhdicaqdwcc3hj5a0w5gxrhjg";
  };
  ##https://github.com/matthewbauer/nix-bundle/commits/master
  home.file.".myscript/nix-bundle".source =pkgs.fetchFromGitHub {
    owner = "matthewbauer";
    repo = "nix-bundle";
    rev = "4300437ede1f10c14cde157d9cce407bd46f5902";
    sha256 = "1axy552dx9x478d2499ghy5rd2rm826f55mnz7zvscykcnk6fk0f";
  };

  home.file.".myscript/eaf".source =pkgs.fetchFromGitHub {
    owner = "manateelazycat";
    repo = "emacs-application-framework";
    rev = "320840214bcb3cd2f5a0729adbe09a0ff56c8148";
    sha256 = "0f4wra2w78nlbfgnwlnpmn2i73lrv4kqcsnfs86asmvf3g26d5jy";
  };


  home.file.".myscript/snails".source =pkgs.fetchFromGitHub {
    owner = "manateelazycat";
    repo = "snails";
    rev = "7e83f3822c00ee496cce42cf69331436cb3b1379";
    sha256 = "1448d333vny2gq4jaldl9zy62jy81ih5166l0aak3p49vv8g38bz";
  };
}
