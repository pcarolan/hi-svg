module Hi

  include Math

    def self.area(r)
      PI * r ** 2
    end

    def self.circle(args)
      r = args[:r]
      w = args[:w]
      cx = args[:cx]
      cy = args[:cy]
      fill = args[:fill]
      stroke = args[:stroke]

      "<circle cx=\"#{cx}\" cy=\"#{cy}\" r=\"#{r}\" fill=\"#{fill}\" stroke=\"#{stroke}\" stroke-width=\"#{w}\" />".html_safe
    end
end
