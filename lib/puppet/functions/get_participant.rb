Puppet::Functions.create_function(:get_participant) do
  def get_participant()    
    File.read('/etc/puppetlabs/server_data/my_param.txt').strip
    #'ub'
  end
end