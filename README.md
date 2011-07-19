Sinatra-mobile-html5-boilerplate-Compass-Coffeescript is an empty Sinatra app configured to use 
[Mobile Boilerplate][1], [Compass][2] for CSS handling and [Coffeescript][3] for Javascript.

Default templating with Erb, but [haml][9] is also supported by uncommenting couple of lines in 
`sinatra_app.rb`. 

By default it uses ERB for templates. You can change that, however make sure to have the boilerplate in the format you like (someone said HAML?). Here are some links taken from the official Sinatra documentation that will help you out in making all of these changes.

`public` directory is directly from MBP (v1.1 as of writing), with following changes

- `index.html` is removed, instead Sinatra uses template.erb with `<%= yield %>` added for content 

- This is not (yet) designed to co-operate with MBP's build script, so `<script src="js/script.js"></script>` is added.
  `script.js` is generated from `script.coffee` automatically.

- demos, build etc. has been removed

- `config.rb` is Compass config file, which reads custom styles from `views/scss` and generates corresponding 
css files under `public/css`


# GETTING STARTED

In the fresh project directory, run

    $ bundle install
    
Then in one terminal:

    $ cd public
    $ compass watch  #you need to have compass (`gem install compass`)

In another terminal

    $ bundle install
    $ rackup

    
Then visit http://localhost:9292 You can also use [Shotgun][4] to ease development instead of `rackup`.
    
# COFFEESCRIPT SUPPORT

I'd advise you to install Coffee as a NPM module, as it gives you a bit more flexibility. [Here are the instructions to do that][5].

# DEPLOY

As a default, the Gemfile contains a group that you should uncomment if you want to deploy on Heroku. 
Deployment is standard, [here's the guide to do that][8]. You should be able to avoid configuration and just need to push the repo.

Since this is a skeleton project, `Gemfile.lock` is put to `.gitignore`. Remove it from your project's `.gitignore` if using Bundler

# THANKS AND LINKS

This is essentially a hybrid of two similar projects, 
[cloud8421's Sinatra-HTML5-boilerplate-with-ERB--Sass-and-CoffeeScript][6] and 
[jondot's sinatra-html5boilerplate-erb-compass][7]. I don't claim any credit. Just customized those
a bit to my taste.  

[1]: http://html5boilerplate.com/mobile/
[2]: http://http://compass-style.org/
[3]: http://jashkenas.github.com/coffee-script/
[4]: http://rtomayko.github.com/shotgun/
[5]: http://jashkenas.github.com/coffee-script/#installation
[6]: https://github.com/cloud8421/Sinatra-HTML5-boilerplate-with-ERB--Sass-and-CoffeeScript
[7]: https://github.com/jondot/sinatra-html5boilerplate-erb-compass
[8]: http://devcenter.heroku.com/articles/rack#frameworks
[9]: http://haml-lang.com/