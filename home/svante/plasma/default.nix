{ ... }: {
  programs.plasma = {
    enable = true;

    workspace = {
      lookAndFeel = "org.kde.breezedark.desktop";
      colorScheme = "BreezeDark";
      iconTheme = "breeze-dark";
    };

    kwin.effects.shakeCursor.enable = false;

    configFile = {
      "kdeglobals"."General"."TerminalApplication" = "alacritty";
      "kdeglobals"."General"."TerminalService" = "Alacritty.desktop";
      "kdeglobals"."KDE"."AnimationDurationFactor" = "0.5";
      "plasma-localerc"."Formats"."TimeFormat" = "HH:mm:ss";
      "powerdevilrc"."AC"."TurnOffDisplayAfterIdleSec" = "1800";
      "powerdevilrc"."AC"."SuspendSessionAfterIdleSec" = "0";
    };
  };
}
