# nix/modules/darwin.nix — auto-generated from cfg-if.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.services.cfg-if; in {
  options.services.cfg-if = {
    enable = lib.mkEnableOption "cfg-if";
    package = lib.mkOption { type = lib.types.package; default = pkgs.cfg-if or null; };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
