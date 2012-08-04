[Info on my blog](http://www.gavinpayne.me/)


So my last <a title="Meteor for newbies – Part 1" href="http://www.gavinpayne.me/meteor-for-newbies-part-1/">Meteor for Newbies</a> post we looked at the Leaderboard example. And fleshed it out with some Coffee-script goodness. I also attempted to make sense of the suggested tasks. While overall I was pretty pleased with the way it all came together... it did look a bit crap. So with limited CSS knowledge I decided to go for <a href="http://twitter.github.com/bootstrap/" target="_blank">Twitter Bootstrap</a> to give my killer app the GUI it truly deserved.  Lets have a look at the finished masterpiece.

&nbsp;

<a href="http://www.gavinpayne.me/wp-content/uploads/2012/08/masterpiece.jpg"><img class="alignnone size-full wp-image-169" title="masterpiece" src="http://www.gavinpayne.me/wp-content/uploads/2012/08/masterpiece.jpg" alt="" width="1011" height="474" /></a>

&nbsp;

So Bootstrap is pretty awesome and comes with some decent features out of the box. It's a front-end toolkit for faster, more beautiful web development. Bootstrap provides simple and flexible HTML, CSS, and Javascript for popular user interface components and interactions including typography, forms, buttons, tables, grids, and navigation.

Bootstrap works with LESS.. LESS extends CSS with dynamic behavior such as variables, mixins, operations and functions. It allows for more compact stylesheets and helps reduce code duplication in CSS files. With the <code>less</code> package installed, <code>.less</code> files in your application are automatically compiled to CSS and the results are included in the client CSS bundle. See <a href="http://lesscss.org/">http://lesscss.org/</a> for documentation of the LESS language.

To get Bootstrap &amp; LESS working your Meteor project will need to include two smart packages.

$ meteor add bootstrap
$ meteor add less

I pushed the source to my new git repository.  Catch it here

<a href="https://github.com/payner35/meteor-newbies-1" target="_new">https://github.com/payner35/meteor-newbies-1</a>

&nbsp;

&nbsp;