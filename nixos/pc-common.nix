{ config, lib, pkgs, mod, ... }: 
with builtins;

{
  # Use local nixpkgs checkout
  # The first time, might have to run:
  # nixos-rebuild -I nixpkgs=/etc/nixos/nixpkgs -I nixos-config=/etc/nixos/configuration.nix switch
  # imports = [
  #   (mod "./overlays/zeek/zeek.nix")
  # ];
  services.trezord.enable = true;  
  networking.firewall.allowedTCPPorts = [ 80 443 53];
  networking.firewall.allowedUDPPorts = [ 80 443 53];
  networking.nameservers = ["10.220.170.137"];

  nixpkgs.config.packageOverrides = pkgs: {
    nur = import (builtins.fetchTarball "https://github.com/nix-community/NUR/archive/master.tar.gz") {
      inherit pkgs;
    };
  };
  nix.nixPath = [
    "nixpkgs=/etc/nixos/nixpkgs"
    "nixos-config=/etc/nixos/configuration.nix"
    "nixpkgs-overlays=/etc/nixos/overlays-compat/"
  ];
  nixpkgs.config.allowUnfree = true;
  nixpkgs.overlays = [
    (import ./overlays/custom/youtube-dl.nix)
    (import ./overlays/custom/outline-client.nix)
    (import ./overlays/custom/Motrix.nix)
    (import ./overlays/custom/shadowsocks-qt5.nix)
    (import ./overlays/python/01-yapf.nix)
    (import ./overlays/python/02-ms-pyls.nix)
    #    (import ./overlays/python/03-bat.nix)
    (import ./overlays/python/04-test.nix)
    (import ./overlays)
    # (self: super:
    #   {
    #     bat = super.callPackage ./overlays/python/bat{ };
    #   }
    # )
  ];
  ##docker-adguard localhost:3000
  services.dnscrypt-proxy = {
    enable = true;
    # the official default resolver is unreliable from time to time
    # either use a different, trust-worthy one from here:
    #   https://github.com/jedisct1/dnscrypt-proxy/blob/master/dnscrypt-resolvers.csv 
    # or setup your own.
    #resolverName = "cs-de";
  };

}
