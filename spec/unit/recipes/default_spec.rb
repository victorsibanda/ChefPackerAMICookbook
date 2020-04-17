#
# Cookbook:: ChefPackerAMICookbook
# Spec:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'ChefPackerAMICookbook::default' do
  context 'When all attributes are default, on Ubuntu 18.04' do
    # for a complete list of available platforms and versions see:
    # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
    platform 'ubuntu', '18.04'

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
    it 'installs packer' do
      expect(chef_run).to install_package('packer')
    end

    it 'installs chef' do
      expect(chef_run).to install_package('chef')
    end
  end
end
