# nix/modules/home-manager.nix — auto-generated from cfg-if.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.cfg-if; in {
  options.programs.cfg-if = {
    enable = lib.mkEnableOption "cfg-if";
    package = lib.mkOption { type = lib.types.package; default = pkgs.cfg-if or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
