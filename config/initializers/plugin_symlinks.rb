def maintain_plugin_symlinks(local_path, plugin_path=nil)
  plugin_path ||= local_path
  Dir.glob("vendor/plugins/*/#{plugin_path}").each do |plugin_dir|
    Dir.mkdir("#{local_path}/plugins") unless File.exists?("#{local_path}/plugins")
    plugin = plugin_dir.gsub(%r{^vendor/plugins/(.*)/#{plugin_path}$}, '\1')
    source = "#{local_path}/plugins/#{plugin}"
    target = "#{local_path.gsub(%r{[^/]+}, '..')}/../#{plugin_dir}"
    unless File.symlink?(source) && File.readlink(source) == target
      File.unlink(source) if File.exists?(source)
      File.symlink(target, source)
    end
  end
end

maintain_plugin_symlinks('public')
maintain_plugin_symlinks('app/coffeescripts')
maintain_plugin_symlinks('app/views/jst')
maintain_plugin_symlinks('app/stylesheets')
maintain_plugin_symlinks('spec/coffeescripts', 'spec_canvas/coffeescripts')
