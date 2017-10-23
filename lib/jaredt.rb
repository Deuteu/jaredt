class JaredtTask < Rails::Railtie
  rake_tasks do
    load 'tasks/jaredt.rake'
  end
end
