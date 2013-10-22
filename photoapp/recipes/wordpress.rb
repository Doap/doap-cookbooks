#
# Cookbook Name:: application_php_wordpress
# Provider:: wordpress
#
 
include Chef::Provider::ApplicationPhpBase
 
protected
 
def create_configuration_files
  if(new_resource.write_settings_file)
    template "#{new_resource.path}/shared/#{new_resource.local_settings_file_name}" do
      source new_resource.settings_template || "#{new_resource.local_settings_file_name}.erb"
      owner new_resource.owner
      group new_resource.group
      mode "644"
      variables(
        :wp_params => new_resource.wp_params,
        :database => new_resource.database
      )
    end
  end
end
