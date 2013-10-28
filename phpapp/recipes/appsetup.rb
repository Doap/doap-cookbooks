node[:deploy].each do |app_name, deploy|

  script "install_composer" do
    interpreter "bash"
    user "root"
    cwd "#{deploy[:deploy_to]}/current"
    code <<-EOH
    chown -R apache:apache *
    EOH
  end

   only_if do
     File.directory?("#{deploy[:deploy_to]}/current")
   end
  end
end
