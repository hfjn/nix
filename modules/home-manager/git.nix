{
  vars,
  osConfig,
  ...
}: {
  programs = {
    git = {
      enable = true;
      userName = vars.fullName;
      inherit (vars) userEmail;
    };
  };
}
