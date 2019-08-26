{ pkgs ? import <nixpkgs> {} }:

pkgs.vscode-with-extensions.override {
  # When the extension is already available in the default extensions set.
  vscodeExtensions = with pkgs.vscode-extensions; [
    bbenoist.Nix
  ]
    # Concise version from the vscode market place when not available in the default set.
  ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [

    {
      publisher = "ms-python";
      name = "python";
      version = "2019.8.30787";
      sha256 = "078gmq57l91ny5panmr82yh46rmyqclqy05sdpvnidllkcfg8kcz";
    }
    
    {
      name = "matchit";
      publisher = "redguardtoo";
      version = "1.0.1";
      sha256 = "1jjpzr48gpcxx1ic0k1mmvrghpx5drgcl6gh8rwcn57lshzrs4a4";
    }

    {
      name = "bro";
      publisher = "aeppert";
      version = "0.6.0";
      sha256 = "01a2g6n9jq2l9fjcg4pnff94cyhgll16hkn7wxsgkas65cc140pv";

    }


    {
      name = "vscode-emacs-friendly";
      publisher = "lfs";
      version = "0.9.0";
      sha256 = "1j4cy77m1077wdl2vvpmzi98y3jkycvf8z84pscs3lkkk1mvcsv1";

    }

    {
      name = "readable-indent";
      publisher = "cnojima";
      version = "1.2.1";
      sha256 = "08mn7rmcy27vbnphjw7ngi2k4g9rz5waip1kfp8sw7pkvh0gzg1m";

    }

    {
      name = "indent-rainbow";
      publisher = "oderwat";
      version = "7.4.0";
      sha256 = "1xnsdwrcx24vlbpd2igjaqlk3ck5d6jzcfmxaisrgk7sac1aa81p";

    }

   ];
}
