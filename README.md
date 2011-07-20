# GNU Make and M4 Website Bakery

One of the first hacks that I was really proud of was this website-baking system I built in late 1999 with some venerable old Unix tools, [GNU Make](http://www.gnu.org/software/make/) and [GNU m4](http://www.gnu.org/software/m4/). The article [Using M4 to write HTML](http://web.archive.org/web/19980529230944/http://www.linuxgazette.com/issue22/using_m4.html) by Bob Hepple was my original inspiration, but I think I was able to surpass the utility of the examples given therein.

### Site Baking

"Website baking" is the pattern of building from templates a mostly- or completely-static website that requires no special software to serve. Baking a website provides huge advantages when it can be employed, because they:

- have fewer vectors for break-ins, 
- easily scale to handle massive amounts of traffic, and 
- may be hosted on commodity hardware or the cheapest of web hosting services.

Of course, with no processing occurring on the server end, it's not possible to host user-interactive features like comments sections, authentication, or e-commerce systems. These days however, many people use third-party tools like [Disqus](http://disqus.com) to implement these features anyway.

In short, if you're not using any of the dynamic features of your web hosting service, you might as well make the whole site static.

### GNU Make and GNU M4

That is of course only an argument for building static websites. Doing it in this _particular_ way may be... ill-advised.

Though m4 may be venerable and may come pre-installed on several modern Unix platforms, it brings along a notoriously cumbersome syntax for defining and calling macros, escaping, quoting, and other things. Sendmail's configuration system serves as a cautionary tale, as it was built upon m4 and is legendary for being obtuse. Employing m4 may be an exercise in masochism.

The difficulty in employing m4 may contribute to my pride in having built a useful tool with it a whole decade+ ago. I hope that this repository will yet serve as an instructive example of how to 'bake' a website using ubiquitous Unix tools, even if every single user ends up swapping out m4 for modern template software, e.g. [Jinja](http://jinja.pocoo.org/).

# Installation

I'll be littering the source code with descriptive comments. For now, explore the source to get an idea of how a system like this can be used. Also, I'll use GitHub's web hosting feature to serve up the files this generates for an easily accessible demo (TBD).

To try this yourself, clone this repo and run 'make'.

# TODO

My scripts have seen a lot of bit-rot over several years of archival and disuse; until this note disappears don't be surprised if several things simply don't work.

(TODO: work in progress...)
