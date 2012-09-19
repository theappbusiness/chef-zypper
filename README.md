Description
===========

Manages zypper repositories on OpenSuse and SLES.

Platform
--------

* OpenSuse/SLES (Chef can't differentiate between the two suse at the moment)

Attributes
==========

* `node['zypper']['repos']` - name and url of additional repos you want to add, in hash format (e.g. { 'sles11-server' => 'http://ftp5.gwdg.de/pub/opensuse/repositories/server:/http/SLE\_11/x86_64/' })

Recipes
=======

* default: same as server-sles11.
* server-sles11: use if you need packages like nginx or varnish.
* custom: add you own repos (set the `node['zypper']['repos']` attribute).

Acknowledgements
======

Thanks to @meineerde (Holger Just) for the sample code.

License and Author
==================

Author:: The App Business (<engineering@theappbusiness.com>)

Copyright:: 2012, The App Business

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
