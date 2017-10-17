Gem::Specification.new do |s|
  s.name = 'ccu_tool'
  s.version = '0.2.1'
  s.summary = 'CCUTool'
  s.description = "Ruby bindings and CLI to access Akamai's CCU API."
  s.authors = ['Stephano Zanzin']
  s.email = 'sz@shitty.pizza'
  s.files = ['lib/ccu_tool.rb', 'lib/ccu_tool/base.rb']
  s.executables << 'ccu-tool'
end
