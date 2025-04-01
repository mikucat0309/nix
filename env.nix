{ ... }:
{
  environment = {
    systemPath = [
      "/opt/homebrew/bin"
    ];
    variables = {
      EDITOR = "nvim";
      VISUAL = "nvim";
      JAVA_HOME = "/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home";
      POETRY_VIRTUALENVS_IN_PROJECT = "true";
      PIP_DISABLE_PIP_VERSION_CHECK = "1";
      JSII_SILENCE_WARNING_UNTESTED_NODE_VERSION = "1";
    };
  };
}
