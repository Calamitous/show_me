show_me
=======

show_me is a method that inspects and "puts" out a highly visible view of the object that's passed in.

It's intended for use in evaluating data in a log during development.

Usage
-----

Simply call show_me and pass in the object you'd like to inspect:

    show_me "text string!"

This will produce:

    ********************************************************************************
    * 1: SHOW ME *
    ********************************************************************************
    "text string!"
    ********************************************************************************

Since it inspects, you don't have to explicitly cast objects to strings.

    show_me [45, 77]



    ********************************************************************************
    * 2: SHOW ME *
    ********************************************************************************
    [45, 77]
    ********************************************************************************

Even more complex objects can spit out something useful:

    class A
      attr_accessor :data
    end

    a = A.new
    a.data = "YEEEEHAW"

    show_me a

...produces:

    ********************************************************************************
    * 3: SHOW ME *
    ********************************************************************************
    #<A:0x100377980 @data="YEEEEHAW">
    ********************************************************************************

Calling show_me without any parameters will simply display some defaults.

    show_me


    ********************************************************************************
    * 4: SHOW ME *
    ********************************************************************************
    "LOOK AT ME!"
    ********************************************************************************

Note that the counter will continue incrementing every time show_me is called until your server (or IRB session) is restarted.

Installation
------------

The file can simply be "require"d directly into any ruby script or IRB session.

If you are using show_me in a Rails project, you can simply symlink (or copy) show_me.rb into you config/initializers directory.

If you're using  version of Rails prior to 2.2, you can move or load the code in your config/environment.rb file.

Note on Patches/Pull Requests
-----------------------------

* Fork the project.
* Make your feature addition or bug fix.
* Commit, do not mess with rakefile, version, or history.
  (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.

Copyright
---------

Copyright (c) 2010 Eric Budd.


