namespace :ansible do

  desc "Deploy to Vagrant"
  task :vagrant_deploy do
    sh 'vagrant up'
    sh 'railsbox/development/deploy.sh'
  end

  desc "Deploy to Production"
  task :vagrant_deploy do
    sh 'railsbox/production/deploy.sh'
  end

  task :setup do
    source = File.join(Gem.loaded_specs["ansible_rails_stack"].full_gem_path, "railsbox")
    target = File.join(Rails.root, "railsbox")
    FileUtils.cp_r source, target
  end
end
