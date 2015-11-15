require 'spec_helper'

describe 'I18n' do
  it 'does not have invalid files' do
    d = Dir["./config/{locales,translations}/*.yml"]
    d.each do |file|
      begin
        puts "checking : #{file}"
        f = YAML.load_file(file)

        #Add file checks here f.to_s.include? X
        raise 'double %%' if f.to_s.include? '%%'
      rescue Exception
        raise "failed to read #{file}: #{$!}"
      end
    end
  end
end
