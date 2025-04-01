{ ... }:
{
  homebrew = {
    enable = true;
    caskArgs = {
      no_binaries = true;
      no_quarantine = true;
    };
    casks = [
      { name = "aerospace"; }
      { name = "android-studio"; greedy = true; }
      { name = "anytype"; greedy = true; }
      { name = "bruno"; }
      { name = "dbeaver-community"; }
      { name = "eloston-chromium"; }
      { name = "ghostty"; }
      { name = "gimp"; }
      { name = "imazing-profile-editor"; }
      { name = "keepingyouawake"; }
      { name = "librewolf"; }
      { name = "localsend"; }
      { name = "maccy"; greedy = true; }
      { name = "slack"; greedy = true; }
      { name = "unnaturalscrollwheels"; }
      { name = "zed"; greedy = true; }
    ];
  };
}
