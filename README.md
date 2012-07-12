# GNU Make and M4 Website Bakery

One of the first hacks that I was really proud of was this website-baking system I built in late 1999 with some venerable old Unix tools, [GNU Make](http://www.gnu.org/software/make/) and [GNU m4](http://www.gnu.org/software/m4/). The article [Using M4 to write HTML](http://web.archive.org/web/19980529230944/http://www.linuxgazette.com/issue22/using_m4.html) by Bob Hepple was my original inspiration, but I think I was able to surpass the utility of the examples given therein.

**You're currently viewing the 'savo' branch of this repository.** This branch contains some customizations for the specific needs of a friend. For a general purpose look at this concept, be sure to take a look at the 'master' or 'simple' branches of the repository: http://github.com/datagrok/m4-bakery/tree/master

**Dependencies:** sudo apt-get install libjs-twitter-bootstrap pandoc make

## Site Baking

"Website baking" is the pattern of building from templates a mostly- or completely-static website that requires no special software to serve. Baking a website provides huge advantages when it can be employed, because they:

- have fewer vectors for break-ins, 
- easily scale to handle massive amounts of traffic, and 
- may be hosted on commodity hardware or the cheapest of web hosting services.

Of course, with no processing occurring on the server end, it's not possible to host user-interactive features like comments sections, authentication, or e-commerce systems. These days however, many people use third-party tools like [Disqus](http://disqus.com) to implement these features anyway.

In short, if you're not using any of the dynamic features of your web hosting service, you might as well make the whole site static.

## GNU Make and GNU M4

That is of course only an argument for building static websites. Doing it in this _particular_ way may be... ill-advised.

Though m4 may be venerable and may come pre-installed on several modern Unix platforms, it brings along a notoriously cumbersome syntax for defining and calling macros, escaping, quoting, and other things. Sendmail's configuration system serves as a cautionary tale, as it was built upon m4 and is legendary for being obtuse. Employing m4 may be an exercise in masochism.

The difficulty in employing m4 may contribute to my pride in having built a useful tool with it a whole decade+ ago. I hope that this repository will yet serve as an instructive example of how to 'bake' a website using ubiquitous Unix tools, even if every single user ends up swapping out m4 for modern template software, e.g. [Jinja](http://jinja.pocoo.org/).

## Features

- The HTML template is wrapped around .html.m4 files automatically; no boilerplate is necessary in the source file.
- The HTML template is a single file, not a separate header and footer.
- Files named .m4 don't get the template, but still get interpreted by m4.
- Any files not named '.m4' don't get interpreted by m4; they are copied verbatim.
- Macros defined in source .html.m4 files will be expanded in the template. This lets you put complex logic in the template and trigger it from the source file. For example, you could set the page title, toggle a template style, define sidebars, etc.
- Macros defined in the macros file will be expanded in the source files and the template. You can define macros here that you want to be available everywhere.

## Execution

Beginning with source files like this:

	src/
	|-- index.html.m4
	`-- style.css

Along with the Makefile, macros file, and HTML template, running 'make' will
output:

	install -m 644 -D src/style.css dst/style.css
	m4 -P macros.m4 src/index.html.m4 template.html.m4 > src/index.html
	install -m 644 -D src/index.html dst/index.html
	rm src/index.html

And produce the following structure:

	dst/
	|-- index.html
	`-- style.css
