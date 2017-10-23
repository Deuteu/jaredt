Gem::Specification.new do |s|
  s.name        = 'jaredt'
  s.version     = '0.0.0'
  s.date        = '2017-10-22'
  s.summary     = 'Jared'
  s.description = 'Tasks to wake up web app.'
  s.authors     = ['Guillaume Dt']
  s.email       = 'Deuteu@users.noreply.github.com'
  s.homepage    = 'https://github.com/Deuteu/jaredt'
  s.license     = 'MIT'
  s.files       = %w(lib/jaredt.rb lib/tasks/jaredt.rake)
  s.add_runtime_dependency 'rails', '>= 4', '< 6'
end