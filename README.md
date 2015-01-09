Word Frequency Counter
======================

Counts the number of times a given word is in an entered text string.
The search for the word within the text string is done in a case-insensitive
manner. Finally, words in text placed at the end of a sentence (i.e. ending
with a standard Unicode punctuation character) will also be matched to a
given search word.

Installation
------------

To run the primary application, either run the included Gemfile or manually
install the following gems:

```ruby
sinatra
sinatra-contrib
```

If you want to run the included Gemfile, enter the following statement into
the command line:
```ruby
gem install bundler
bundle
```

At the time of initial creation of this application, Ruby version 2.1.5
was used.

Usage
-----

Upon completion of the above steps in the Installation section, open
up your preferred web browser and enter the following address:

```url
localhost:4567/form
```

Enter in a desired piece of text to search upon and a distinct search
word. Next, click on the Search button for the results.

Known Bugs
----------

None as of 2014-01-09.

Author
------

Andy Uppendahl

License
-------

MIT license.
