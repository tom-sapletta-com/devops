## Update Server Apache with php

https://www.tecmint.com/install-different-php-versions-in-ubuntu/



There are a number of plain text files and some sub-directories in this directory. These are some of the more useful locations to be familiar with:

apache2.conf: This is the main configuration file for the server. Almost all configuration can be done from within this file, although it is recommended to use separate, designated files for simplicity. This file will configure defaults and be the central point of access for the server to read configuration details.
ports.conf: This file is used to specify the ports that virtual hosts should listen on. Be sure to check that this file is correct if you are configuring SSL.
conf.d/: This directory is used for controlling specific aspects of the Apache configuration. For example, it is often used to define SSL configuration and default security choices.
sites-available/: This directory contains all of the virtual host files that define different web sites. These will establish which content gets served for which requests. These are available configurations, not active configurations.
sites-enabled/: This directory establishes which virtual host definitions are actually being used. Usually, this directory consists of symbolic links to files defined in the "sites-available" directory.
mods-[enabled,available]/: These directories are similar in function to the sites directories, but they define modules that can be optionally loaded instead.