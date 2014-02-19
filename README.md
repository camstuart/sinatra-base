## sinatra-base

Base Sinatra app layout for use in ruby, or jruby with dependency-free JAR compilation.

#### General:

Sinatra is great for quick and small web apps, and even better if you want to have users run the the app on their own workstation under Java.
<br/>
Use this project to get up and running quickly with:

- Basic ruby `sinatra` directory layout
- Rack configuration file and puma web server
- Jar compliation with `warbler`
- Twitter bootstrap 3 styling
- Simple view layout with `erb` templates

#### Setup:

##### Grab the sources

	$ git clone ...... your-app-name

##### Modify rvm/rbenv configuration

1. Edit `.ruby-version` file with either straight ruby version or leave as jruby version if stand alone JAR compilation is required.
2. Edit `.ruby-gemset` with your-app-name for an isolated gemset.
3. Optionally, edit the ruby version and engine type in the top line of the `Gemfile` 

##### Install dependancies

	$ cd your-app-name
	$ gem install bundler
	$ bundle

#### Development:

##### Start web server

	rake run # (OS X only)
	rackup (All platforms)

#### Deployment (for running under the JVM):

##### Build the jar

	$ rake build

##### Copy files

Copy the `your-app-name.jar` and `config.ru` files to a directory of their own

##### Start up

	$ cd /path/you/created 
	$ java -jar your-app-name.jar

#### Resources:

##### Warbler & Jar compilation 

http://blog.evanweaver.com/2013/08/07/standalone-sinatra-jar-with-jruby/

##### Modular sinatra structure

http://stackoverflow.com/questions/5015471/using-sinatra-for-larger-projects-via-multiple-files

