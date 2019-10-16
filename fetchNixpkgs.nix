{ rev    ? "2b575a3a90677c64f0d26fbb18eb1f44d3192739"             # The Git revision of nixpkgs to fetch
, sha256 ? "0hyx57gg1mmks405lq91qv6mcba1dgzz35b1bidbq382scaqlj75" # The SHA256 of the downloaded data
}:

builtins.fetchTarball {
  url = "https://github.com/airalab/airapkgs/archive/${rev}.tar.gz";
  inherit sha256;
}
