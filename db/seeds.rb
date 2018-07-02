# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
seed_file = Rails.root.join('db', 'seeds', 'seed.yml')
APP_CONFIG = HashWithIndifferentAccess.new(YAML.load(File.read(seed_file)))

APP_CONFIG['projects'].each do |project|

  pr = project[:title]
  @project = Project.create(title: pr)

  project['todos'].each do |todo|
    @project.todos.create todo
  end
end