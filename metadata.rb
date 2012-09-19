maintainer        "The App Business"
maintainer_email  "engineering@theappbusiness.com"
license           "Apache 2.0"
description       "Manages zypper repositories"
version           "0.1"

recipe "zypper", "Installs the gwdg.de repo"
recipe "zypper::server-sles11", "Installs the gwdg.de server repo for SLES 11"

supports "suse"

attribute "repos",
  :display_name => "Additional repos to be installed",
  :description => "Add any additional repo in name/url hash format",
  :default => {}