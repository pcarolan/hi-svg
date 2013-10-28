![nogaku_2](https://f.cloud.github.com/assets/900966/1415024/aeeabf4e-3ed0-11e3-890b-4349a8d5373f.png)

Nogaku is a human interface library for Ruby and Rails.

## Roadmap

```
[:started] circles 
[:started] ellipses 
[:started] rectangles 
[:not_started] lines 
[:not_started] polylines 
[:not_started] polygons 
[:not_started] operations 
[:not_started] animation 
[:not_started] modules 
```

## How to

Draw a circle:

```
Circle.new(args)

    @args = {:id => args[:id] || "circle-id",
             :r => args[:r] || 5, # The radius of the circle.
             :cx => args[:cx] || 10, # The x-axis coordinate of the center of the circle.
             :cy => args[:cy] || 10, # The y-axis coordinate of the center of the circle.
             :fill => args[:fill] || "none",
             :stroke => args[:stroke] || "black",
             :stroke_width => args[:stroke_width] || 1,
             :stroke_dasharray => args[:stroke_dasharray] || nil}
```
Draw a rectangle or square
```
Rect.new(args)

    @args = {:id => args[:id] || "rect-id",
             :r => args[:r] || 5,
             :x => args[:x] || 10, # The x-axis coordinate of the side of the rectangle which has the smaller x-axis coordinate value.
             :y => args[:y] || 10, # The y-axis coordinate of the side of the rectangle which has the smaller y-axis coordinate.
             :width => args[:width] || 10, # can't be negative
             :height => args[:height] || 10, # can't be negative
             :rx => args[:rx] || 0, # can't be negative
             :ry => args[:ry] || 0, # can't be negative  
             :fill => args[:fill] || "none",
             :stroke => args[:stroke] || "black",
             :stroke_width => args[:stroke_width] || 1}

```
Draw an ellipse
```
Ellipse.new(args)

    @args = {:id => args[:id] || "ellipse-id",
         :cx => args[:cx] || 30, # The x-axis coordinate of the center of the ellipse.
         :cy => args[:cy] || 20, # The y-axis coordinate of the center of the ellipse.
         :rx => args[:rx] || 20, # The x-axis radius of the ellipse.
         :ry => args[:ry] || 10, # The y-axis radius of the ellipse.
         :fill => args[:fill] || "none",
         :stroke => args[:stroke] || "black",
         :stroke_width => args[:stroke_width] || 1,
         :stroke_dasharray => args[:stroke_dasharray] || nil}
```



## License

This project uses the MIT-LICENSE.

## Polemic

Once in a while developers must reach a point when disruption happens within the framework and not because of it. 

This Library's goal is to extend ruby into an SVG powered web interface.

:Pat
