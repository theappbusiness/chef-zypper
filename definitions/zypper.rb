#
# Cookbook Name:: zypper
# Recipe:: default
# Author:: The App Business <engineering@theappbusiness.com>
#
# Copyright 2012, The App Business
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

define :zypper_repository do
  name = params[:name]
  name ||= params[:alias]
  url = params[:url]

  execute "update zypper for #{name}" do
    command "zypper ref –force"
    action :nothing
  end

  execute "zypper repo #{name}" do
    command "zypper ar #{url} #{name}"
    not_if "zypper lr #{name}"
    notifies :run, "execute[update zypper for #{name}]", :immediately
  end
end