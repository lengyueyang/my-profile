self: super:
{
  
  bat = super.callPackage ./python/bat {};
  zeek = super.callPackage ./zeek {};
#  nuclear = super.callPackage ./custom/feh-nuclear.nix {};
#  outline-client = super.callPackage ./custom/outline-client.nix {};
}
