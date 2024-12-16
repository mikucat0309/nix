{ ... }:
{
  homebrew.casks = [
    {
      name = "maccy";
      greedy = true;
    }
    {
      name = "keepingyouawake";
      greedy = true;
    }
    { name = "unnaturalscrollwheels"; }
    {
      name = "iterm2";
      greedy = true;
    }
    {
      name = "librewolf";
      args = {
        no_quarantine = true;
      };
    }
    {
      name = "slack";
      greedy = true;
    }
    {
      name = "zed";
      greedy = true;
    }
  ];
  homebrew.caskArgs = {
    no_binaries = true;
  };
}
