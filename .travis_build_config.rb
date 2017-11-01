MRuby::Build.new do |conf|
  toolchain :gcc
  conf.gembox 'default'

  conf.gem mgem: 'mruby-httprequest'
  conf.gem github: 'mattn/mruby-json'
  conf.gem File.expand_path(__dir__)
  conf.enable_test
end
