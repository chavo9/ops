control 'check_website' do

  describe http('https://github.com/chavo4/example-kitchen') do
    its('status') { should cmp 200 }
    its('body') { should match 'My awesome codebase' }
  end

end
