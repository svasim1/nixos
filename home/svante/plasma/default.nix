{ ... }: {
  programs.plasma = {
    enable = true;

    workspace = {
      lookAndFeel = "org.kde.breezedark.desktop";
      colorScheme = "BreezeDark";
      iconTheme = "breeze-dark";
      wallpaper = ./wallpaper.jpg;
      wallpaperFillMode = "preserveAspectCrop";
    };

    kwin.effects.shakeCursor.enable = false;

    panels = [
      {
        location = "bottom";
        height = 44;
        widgets = [
          "org.kde.plasma.kickoff"
          "org.kde.plasma.pager"
          {
            iconTasks = {
              launchers = [
                "applications:codium.desktop"
                "applications:vesktop.desktop"
                "applications:spotify.desktop"
                "applications:firefox.desktop"
                "applications:steam.desktop"
              ];
            };
          }
          "org.kde.plasma.marginsseparator"
          "org.kde.plasma.systemtray"
          "org.kde.plasma.digitalclock"
          "org.kde.plasma.showdesktop"
        ];
      }
    ];

    shortcuts = {
      "alacritty.desktop" = {
        "_launch" = [ "Ctrl+Alt+T" ];
      };
    };

    configFile = {
      "ksmserverrc"."General"."loginMode" = "emptySession";
      "kdeglobals"."General"."TerminalApplication" = "alacritty";
      "kdeglobals"."General"."TerminalService" = "Alacritty.desktop";
      "kdeglobals"."KDE"."AnimationDurationFactor" = "0.5";
      "kwalletrc"."Wallet"."Enabled" = "false";
      "plasma-localerc"."Formats"."LC_TIME" = "sv_SE.UTF-8";
      "plasma-localerc"."Formats"."TimeFormat" = "HH:mm:ss";
      "powerdevilrc"."AC"."TurnOffDisplayAfterIdleSec" = "1800";
      "powerdevilrc"."AC"."SuspendSessionAfterIdleSec" = "0";
    };
  };
}
