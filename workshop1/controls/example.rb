# copyright: 2018, The Authors

title "sample section"

# you can also use plain tests
describe file("C:\\Users") do
  it { should be_directory }
end

# you add controls here
control "Users-1.0" do                        # A unique ID for this control
  impact 0.2                                # The criticality, if this control fails.
  title "Check c:\\users directory"             # A human-readable title
  desc "An optional description..."
  describe file("C:\\Users") do                  # The actual test
    it { should be_directory }
  end
end
