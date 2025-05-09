require 'yaml'

Puppet::Functions.create_function(:get_participant) do
  def get_participant()    
    data = YAML.load_file('/etc/participant.yaml')
    data['participant']
    #'ub'
  end
end