module Hi

  project_root = File.dirname(File.absolute_path(__FILE__))
  Dir.glob(project_root + '/hi/*', &method(:require))

  # Primitives
  # Done: 'circle', 'rect', 'ellipse','line'
  # TODO: 'text', 'image','path', 'use'
  # Maybe: 'polyline', 'polygon' (just use path?)

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
