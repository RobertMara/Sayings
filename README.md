Other pages:  [Design](DESIGN.md) | [Versions](VERSIONS.md) | [To-do list][TODO.md]

# Sayings

"Sayings" is a simple monolithic Ruby on Rails app where you can record sayings: Bible verses, inspirational quotes, 
something your friend said that you found funny, etc. 



## Documentation

A minimal bit of documentation will be done here and in a couple other markdown pages
referenced at the top of this file.  

If I find the need to do more substantial documentation, it will be added
to the Sayings GitHub wiki page.

BTW, in the real world, I would record customer-given requirements in Microsoft Excel,
capture the architecture and design decisions in Microsoft Word and PowerPoint (to answer the "why?" questions), 
and use an issue tracker to capture and track implementation. I would use a
wiki linked to the source code control software (e.g., git) to capture documentation 
pertaining to operations and maintenance (O&M),
like how to deploy the software, troubleshooting steps, steps to fix system problems, etc.

## Technology
* Ruby 2.5.5
* Ruby on Rails 5.2.3
* SQLite 3.x  
* MiniTest

I do not plan to deploy this to a server. Therefore:
* I am using SQLite for simplicity. 
* There is no authentication or authorization, no roles or permissions.  If you can run it, you rule your own little kingdom.

Later on, I may decide to make a different version using Rails API and Vue.js, just for fun
and as a comparison.  Or maybe use GraphQL. 


## Developer Setup

This assumes you have installed the software in the Technology section, above.

Then install application using the standard commands:

#TODO: FIX and FINISH
```
Sayings> bundle install --path=./.bundle
Sayings> bundle exec rake db:create
Sayings> bundle exec rake db:migrate
Sayings> bundle exec rake db:seed
Sayings> TODO: whatever command runs minitest tests

```


## Why does this project exist?
I am creating this to catch up in the Ruby on Rails world, primarily.  I have been stuck in old Ruby and Rails
versions too long.  I am creating this for several purposes:
* Learn Ruby 2.5.x
* Learn Ruby on Rails 5
* Learn Section 508 accessibility, especially keyboard-only navigation and application use by blind or
 visually impaired users that use screen readers like 
 [JAWS (Job Access with Speech)](https://www.freedomscientific.com/products/software/jaws/)
 and [NVDA (NonVisual Desktop Access)](https://www.nvaccess.org/).  NVDA is free, so I am going to focus on that, 
 at least for now.
* Test using the default Rails MiniTest.  I have only used RSpec at work, and while I think I finally have the hang
 of basic testing in RSpec, the learning curve is huge. I want to see what MiniTest can do. I won't have any mocking
 or stubbing to do, because there are no external systems to connect to.  That will be a big factor that I am ignoring
 in this comparison.  MiniTest does have a [mocking capability](https://github.com/seattlerb/minitest/blob/master/lib/minitest/mock.rb)
 and there is the [mocha gem](https://rubygems.org/gems/mocha).  I am sure there are others.  But mocking and stubbing
 will likely be ignored for this project.
* Similarly, I want to compare the use of Fixtures to FactoryBot factories.  I have wasted a lot of time trying
 to create complex associations using FactoryBot, which others have also reported.  I want to see if fixtures are
 any harder to maintain.  Here are a couple blog posts to consider (admittedly old).
  * Aaron Patterson's 2015 blog post ["My experience with Minitest and RSpec"](https://tenderlovemaking.com/2015/01/23/my-experience-with-minitest-and-rspec.html)
  * Brandon Hilkert's 2014 blog post ["7 Reasons I'm Sticking With Minitest and Fixtures in Rails"](https://brandonhilkert.com/blog/7-reasons-why-im-sticking-with-minitest-and-fixtures-in-rails/)
* What is Capybara? Heard of it, never used it.
* Pry?  Never used it.  


