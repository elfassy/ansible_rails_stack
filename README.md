# WIP
use at your own risk

# Ansible Rails Stack

- Puma
- Sidekiq
- Redis
- PostgreSQL
- RVM or rbenv

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ansible_rails_stack', github: 'elfassy/ansible_rails_stack'
```

And then execute:

    $ bundle



## Control
### VM
Virtual machine can be controlled by running the following commands:

```
vagrant up                      # To start VM
vagrant provision               # To re-run ansible playbook
vagrant halt                    # To stop VM
vagrant destroy                 # To destroy VM completely
```

### puma
You can start and stop puma by running standard upstart commands:

```
sudo start {app_name}
sudo stop {app_name}
sudo restart {app_name}
```

## How to install
### Requirements
You will need VirtualBox, vagrant and ansible to be installed. ansible also requires Python and some Python modules to be installed.

Fast way to install VirtualBox and vagrant is to use brew cask. ansible can be installed with homebrew as well:

```
# brew install caskroom/cask/brew-cask
brew cask install virtualbox
brew cask install vagrant
brew install ansible
```


### Start VM
Go to the railsbox directory and type `vagrant up`. vagrant will download the base box and provision it with ansible using your configuration.

```
cd /path/to/rails/project/railsbox/development
vagrant up
# visit localhost:8080
```

Once it's done, you'll be able to login into it using `vagrant ssh` command. Your application is stored in /{app_name} directory.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/elfassy/ansible_rails_stack.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

