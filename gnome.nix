{ config, ... }:
{
  services = {
    xserver = {
      enable = true;
      displayManager = {
	autoLogin.enable = true;
	autoLogin.user =  "mx2uller";
        gdm.enable = true;
      };
      desktopManager.gnome.enable = true;
    };
  };
  # Workaround for gnome autologin
  systemd.services = {
    "getty@tty1".enable = false;
    "autovt@tt1".enable = false;
  };
}
