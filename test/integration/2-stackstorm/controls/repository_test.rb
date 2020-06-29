# encoding: utf-8
# The Inspec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec_reference.html

control 'st2-repo' do
  title 'Coditation apt repository check'
  desc '
    Ensure that coditation apt package repository is installed, enabled and actually works.
  '

  describe file '/etc/apt/sources.list.d/Coditation.list' do
    it { should exist }
  end

  describe apt('https://packagecloud.io/Coditation/stable/ubuntu/') do
    it { should exist }
    it { should be_enabled }
  end
end
