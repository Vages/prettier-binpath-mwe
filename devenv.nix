{ pkgs, lib, config, inputs, ... }:

{
  languages.javascript = {
    enable = true;
    npm.enable = true;
    npm.install.enable = true;
  };
  # https://devenv.sh/pre-commit-hooks/
  git-hooks.hooks.prettier.enable = true;
  git-hooks.hooks.prettier.settings.binPath = ./node_modules/.bin/prettier;
}
