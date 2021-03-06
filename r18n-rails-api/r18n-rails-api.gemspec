require '../r18n-core/lib/r18n-core/version'

Gem::Specification.new do |s|
  s.platform = Gem::Platform::RUBY
  s.name = 'r18n-rails-api'
  s.version = R18n::VERSION.dup
  s.date = Time.now.strftime('%Y-%m-%d')
  s.summary = 'Rails I18n compatibility for R18n'
  s.description = <<-EOF
    R18n backend for Rails I18n and R18n filters and loader to support Rails
    translation format.
    R18n has nice Ruby-style syntax, filters, flexible locales, custom loaders,
    translation support for any classes, time and number localization, several
    user language support, agnostic core package with out-of-box support for
    Rails, Sinatra and desktop applications.
  EOF

  s.files            = `git ls-files`.split("\n")
  s.test_files       = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.extra_rdoc_files = ['README.md', 'LICENSE']
  s.require_path     = 'lib'

  s.author   = 'Andrey "A.I." Sitnik'
  s.email    = 'andrey@sitnik.ru'
  s.homepage = 'https://github.com/ai/r18n/tree/master/r18n-rails-api'

  s.add_dependency 'r18n-core', ["= #{R18n::VERSION}"]
  s.add_dependency 'i18n'
end
