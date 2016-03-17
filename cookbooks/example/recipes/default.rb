# This is a Chef recipe file. It can be used to specify resources which will
# apply configuration to a server.

# apt_repository 'variety' do
#   uri          'ppa:peterlevi/ppa'
#   distribution node['lsb']['codename']
# end

# apt_repository 'atom' do
#   uri          'ppa:webupd8team/atom'
#   distribution node['lsb']['codename']
# end

# apt_update 'all platforms' do
#   action :update
# end

# # sets up ppa launchpad repo
# include_recipe "atom"
#
# # install atom
# package "atom" do
#   action :install
# end
#
# # install plugins
# atom_apm "minimap"

cli_packages = [
  'wget',
	'curl',
	'byobu',
	'fish',
	'git',
	'nano',
	'glances',
]
apt_package cli_packages do
  action :install
end

dev_cli_packages = [
  'build-essential',
  'cmake',
	'cmake-curses-gui',
]
apt_package dev_cli_packages do
  action :install
end

dev_gui_packages = [
  # 'atom',
	'cmake-qt-gui',
	'qtcreator',
	'terminator',
	'gedit',
	'meld',
]
apt_package dev_gui_packages do
  action :install
end

system_ui_packages = [
  'indicator-multiload',
	'redshift',
  # 'variety',
  # 'variety-slideshow',
  'unity-tweak-tool',
  'compizconfig-settings-manager',
  'compiz-plugins-extra',
]
apt_package system_ui_packages do
  action :install
end

system_gui_packages = [
	'synaptic',
	'gparted',
]
apt_package system_gui_packages do
  action :install
end

browser_app_packages = [
  'firefox',
  # 'google-chrome-stable',
]
apt_package browser_app_packages do
  action :install
end

media_app_packages = [
	'vlc',
	'inkscape',
	'gimp',
	# 'texmaker',
	'blender',
	'meshlab',
]
apt_package media_app_packages do
  action :install
end

# ros 'indigo' do
#   config 'ros-desktop-full'
#   action [:install, :upgrade]
# end
#
# catkin do
#   action :create
# end

# http://www.syntevo.com/static/smart/download/smartgit/smartgit-7_1_2.deb
# https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

# remote_file "/tmp/atom.deb" do
#   source "https://atom.io/download/deb"
#   mode 0666
# end
# dpkg_package "atom" do
#   source "/tmp/atom.deb"
#   action :install
# end

# For more information, see the documentation: https://docs.chef.io/essentials_cookbook_recipes.html
