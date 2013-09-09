## Hi

Hi! is a human interface library for Ruby and Rails.

other cool names: Nogaku [no (drama) + gaku music]

## Resources

SVG Primer:
  http://www.w3.org/TR/SVG11/

Free SVG Primer:
  http://www.w3.org/Graphics/SVG/IG/resources/svgprimer.html

SVG Examples of Use:
  http://srufaculty.sru.edu/david.dailey/svg/

## License

This project uses the MIT-LICENSE.

## things that occurred to me 

My goal in writing this library is to enable an integrated approachable WEBUI with Ruby and Rails. Not necessarily tightly coupled to Rails, but by way of the niceties of Rails it is convenient to friend it with it without going so far as marriage. I'll try to accomodate and try not to alientate any other framework built on Ruby as well, but since I am most familiar with Rails, the sample app is built using it.

As for my choice of Ruby. Someone once said that Ruby is so comfortable that you can often infer your next move without knowing it. I agree. Since I began programming in my early 30s as an old geezer, I find Ruby to be stable powerful and mature enough for what I'm trying to do here. I've tested Hi on up to 10,000 SVG objects rendering in under a second and my goal will be to keep that as a benchmark. As for Javascripters, I applaud your abilities at cognative gymnastics and you might find D3 to be your huckleberry.

Both SVG and CSS have built-in animations. Javascript has become a "go to" in the programming world for animations and snappy interfaces, but I wonder if it's necessary to require designers to suffer through learning this language. If there's something worth doing I can't do with CSS or SVG animations, I'll look at it then.

The stack that I'm proposing here is Ruby, HTML5, and CSS. You could argue that SVG is itself a DSL and not part of the HTML5 standard or that SCSS is different than, but as per my current understanding, I wouldn't.

As for browser support, if you are using a browser or phone or tablet that doesn't support native SVG, such as IE < 9, you probably aren't allowed to have a rich browsing experience anyway. If you are desperate for native SVG support in your environent, you might try the want ads.

Polemic

From time to time, developers must reach an equilibrium in which disruption happens within the framework and not because of it. I am not anti-disruption, merely anti-headache. SVG has been partying since 1999, Ruby since 1995, Rails since 2005, and CSS since 1996. These are mature technologies which have very few use cases they can't/haven't licked. Web programming in my opinion should not require the developer to know more than the following to build rich webapps apps.

  Ruby
  HTML5
  CSS

:Pat



