{
  pkgs,
  osConfig,
  ...
}: {
  home = {
    packages = with pkgs;
      [
        curl
        dig
        imagemagick
        openssl
        jq
        tree
        wget
      ];
  };
}
