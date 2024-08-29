{lib, config, pkgs. ..}
{
  options = {

  };
  config = {
    users.users."smith" = {
      isNormalUser = true;
      initialPassword = "12345";
      description = "Main User: Smith";
      shell = pkgs.zsh;
    };
  };
}
