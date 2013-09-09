module Hi

  project_root = File.dirname(File.absolute_path(__FILE__))
  Dir.glob(project_root + '/hi/*', &method(:require))

  # Primitives
  # Done: 'circle', 'rect', 'ellipse','line'
  # TODO: 'text', 'image','path', 'use'
  # Maybe: 'polyline', 'polygon' (just use path?)

  include Math

    def self.circle(args={})

      # set variables and defaults
      id = args[:id] || 1
      r = args[:r] || 5
      stroke_width = args[:stroke_width] || 1
      cx = args[:cx] || 10 # The x-axis coordinate of the center of the circle.
      cy = args[:cy] || 10 # The y-axis coordinate of the center of the circle.ß
      fill = args[:fill] || "white"
      stroke = args[:stroke] || "black"

      # TODO: stroke-dasharray

      # required parameters
      opening_tag = "<circle "
      id = "id=\"#{id}\" "
      cx = "cx=\"#{cx}\" "
      cy = "cy=\"#{cy}\" "
      r  = "r=\"#{r}\" "
      closing_tag = "/>"

      # optional parameters
      fill = "fill=\"#{fill}\" "
      stroke = "stroke=\"#{stroke}\" "
      stroke_width = "stroke-width=\"#{stroke_width}\" "

      circle = opening_tag + id + cx + cy + r + fill + stroke + stroke_width + closing_tag

      # output
      circle.html_safe

    end

    def self.rect(args={})

      # set variables and defaults
      id = args[:id] || "r1"
      x = args[:x] || 10 # The x-axis coordinate of the side of the rectangle which has the smaller x-axis coordinate value
      y = args[:y] || 10 # The y-axis coordinate of the side of the rectangle which has the smaller y-axis coordinate
      width = args[:width] || 10 # can't be negative
      height = args[:height] || 10 # can't be negative
      rx = args[:rx] || 0 # can't be negative
      ry = args[:ry] || 0 # can't be negative    

      stroke_width = args[:stroke_width] || 1
      fill = args[:fill] || "white"
      stroke = args[:stroke] || "black"

      # required parameters
      opening_tag = "<rect "
      id = "id=\"#{id}\" "
      x = "x=\"#{x}\" "
      y = "y=\"#{y}\" "
      width  = "width=\"#{width}\" "
      height  = "height=\"#{height}\" "
      closing_tag = "/>"

      # optional parameters
      rx = "rx=\"#{rx}\" " # corner radius for smooth edges
      ry = "ry=\"#{ry}\" " # corner radius for smooth edges
      fill = "fill=\"#{fill}\" "
      stroke = "stroke=\"#{stroke}\" "
      stroke_width = "stroke-width=\"#{stroke_width}\" "

      circle = opening_tag + id + x + y + width +  height + rx + ry + fill + stroke + stroke_width + closing_tag

      # output
      circle.html_safe

    end

    def self.ellipse(args={})

      # set variables and defaults
      id = args[:id] || "ed1"
      cx = args[:cx] || 30 # The x-axis coordinate of the center of the ellipse.
      cy = args[:cy] || 20 # The y-axis coordinate of the center of the ellipse.
      rx = args[:rx] || 20 # The x-axis radius of the ellipse.
      ry = args[:ry] || 10 # The y-axis radius of the ellipse.
      fill = args[:fill] || "white"
      stroke = args[:stroke] || "black"
      stroke_width = args[:stroke_width] || 1

      # TODO: stroke-dasharray

      # required parameters
      opening_tag = "<ellipse "
      id = "id=\"#{id}\" "
      cx = "cx=\"#{cx}\" "
      cy = "cy=\"#{cy}\" "
      rx = "rx=\"#{rx}\" "
      ry = "ry=\"#{ry}\" "
      closing_tag = "/>"

      # optional parameters
      fill = "fill=\"#{fill}\" "
      stroke = "stroke=\"#{stroke}\" "
      stroke_width = "stroke-width=\"#{stroke_width}\" "

      elipse = opening_tag + id + cx + cy + rx + ry + fill + stroke + stroke_width + closing_tag

      # output
      elipse.html_safe

    end

    def self.line(args={})

      id = args[:id] || "l1"
      x1 = args[:x1] || 0 # The x-axis coordinate of the start of the line. 
      y1 = args[:y1] || 0 #The y-axis coordinate of the start of the line. 
      x2 = args[:x2] || 100 # The x-axis coordinate of the end of the line.
      y2 = args[:y2] || 100 # The y-axis coordinate of the end of the line.
      stroke = args[:stroke] || "black"
      stroke_width = args[:stroke_width] || 1

      # TODO: stroke_linecap 
      # TODO: stroke_dasharray 
      # TODO: markers

      # required
      opening_tag = "<line "
      id = "id=\"#{id}\" "
      x1 = "x1=\"#{x1}\" "
      y1 = "y1=\"#{y1}\" "
      x2 = "x2=\"#{x2}\" "
      y2 = "y2=\"#{y2}\" "
      closing_tag = "/>"

      # optional
      stroke = "stroke=\"#{stroke}\" "
      stroke_width = "stroke-width=\"#{stroke_width}\" "

      # output
      line = opening_tag + id + x1 + y1 + x2 + y2 + stroke + stroke_width + closing_tag

      line.html_safe

    end

end
