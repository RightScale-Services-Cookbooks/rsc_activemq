if node['java']['flavor']=='oracle'
  node.override['java']['oracle']['accept_oracle_download_terms']=true
end

include_recipe "activemq"
