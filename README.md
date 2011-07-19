# GNU Make and M4 Website Bakery

One of the first hacks that I was really proud of was this website-baking system I built back around '99 with some venerable old Unix tools, GNU Make and GNU m4.

### Site Baking

"Website baking" is the pattern of building from templates a mostly- or completely-static website that requires no special sofware to serve. Baking a website provides huge advantages when it can be employed:

	- they have fewer vectors for break-ins, 
	- they easily scale to handle massive amounts of traffic, and 
	- they may be hosted on commodity hardware or the cheapest of webhosting services.

Of course, with no processing ocurring on the server end, it's not possible to host user-interactive features like comments sections, authentication, or e-commerce systems. These days however, many people use third-party tools like disqus to implement these features anyway.

In short, if you're not using any of the dynamic features of your web hosting service, you might as well make the whole site static.

### GNU Make and m4

That is of course only an argument for building static websites. Doing it in this _particular_ way may be questionable.

Though m4 may be venerable, it brings along a notoriously cumbersome syntax for defining and calling macros, escaping, and other things. The sendmail's configuration file system was built upon m4 and is legendary for being obtuse. Employing m4 may be an exercise for a masochist.

# Installation

I'll be littering the source code with descriptive comments. For now explore the source to get an idea of how a system like this can be used. Also, I'll use github's web hosting feature to serve up the files this generates for an easily accesible demo (TBD).

To try this yourself, clone this repo and run 'make'.

# TODO

My scripts have seen a lot of bit-rot over several years of archival and disuse; until this note disappears don't be surprised if several things simply don't work.

(TODO: work in progress...)
