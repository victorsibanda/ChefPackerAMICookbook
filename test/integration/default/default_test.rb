# InSpec test for recipe ChefPackerAMICookbook::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/



describe package('chef') do
  it { should be_installed }
end
