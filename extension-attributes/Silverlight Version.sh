#!/bin/bash

###
#
#            Name:  Silverlight Version.sh
#     Description:  Returns Silverlight version (if plugin is installed).
#         Created:  2017-01-04
#   Last Modified:  2018-06-20
#         Version:  1.2.1
#
#
# Copyright 2017 Palantir Technologies, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#
###



########## variable-ing ##########



silverlightPlugin="/Library/Internet Plug-Ins/Silverlight.plugin"



########## main process ##########


if [[ -e "$silverlightPlugin" ]]; then
	silverlightVersion=$("/usr/bin/defaults" read "$silverlightPlugin/Contents/Info" "SilverlightVersion")
else
	silverlightVersion=""
fi


"/bin/echo" "<result>$silverlightVersion</result>"


exit 0
