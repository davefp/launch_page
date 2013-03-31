#Launch Page

![](example.png)

##Description

Launch Page is a single page site that can be used to gather email addresses from interested parties before your product launches.

##Requirements

* [MailChimp](http://mailchimp.com) Account (free/paid)

##Technology used

* Sinatra
* Foundation Framework
* AddThis Sharing
* MailChimp

##Setup

Clone this repo

`git clone git@github.com:davefp/launch_page.git`

Rename `config/config.yml.example` to `config/config.yml`

Add your MailChimp [API key](http://kb.mailchimp.com/article/where-can-i-find-my-api-key) and [list ID](http://kb.mailchimp.com/article/how-can-i-find-my-list-id) to `config/config.yml`

Install dependancies

`bundle install`

Compile assets

`compass compile`

Start the server

`bundle exec rackup`

Your landing page is now available at [http://localhost:9292](http://localhost:9292). Done!

##Customization

To change the page background, replace `public/images/background.jpg` with the image you want.

Similarly, replace `public/images/logo.png` with your logo.

Other configuration values can be found in `config.yml`.

Of course, further customization can be achieved by editing the templates directly.

##Contributing

Contributions are welcome! Here's how:

1. Clone this repo
2. Create a branch for your feature/bug/whatever
3. Hack a thing
4. Submit a pull request
5. Respond to comments

##Attribution

Default background image "[Tilt Shift Balloon fake miniature (Shawnee, PA)](http://www.flickr.com/photos/27447826@N06/2558540327/in/photostream/)" © 2003 Nick Rossino, used under a Attribution-NonCommercial-ShareAlike 2.0 license: http://creativecommons.org/licenses/by-nc-sa/2.0/

