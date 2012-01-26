#
# Cookbook Name:: mongodb
# Recipe:: apt
#
# Author:: Michael Shapiro (<koudelka@ryoukai.org>)
#
# Copyright 2011, Active Prospect, Inc.
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

execute 'apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10' do
  user 'root'
end

ubuntu_version = node[:platform_version]
ubuntu_version.gsub! '.0', '.'
execute "echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' >> /etc/apt/sources.list" do
  user 'root'
  not_if 'grep mongodb /etc/apt/sources.list'
end

execute 'apt-get update' do
  user 'root'
end

package 'mongodb-10gen'
