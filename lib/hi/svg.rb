module SVG

  def tag(attributes)
    ("<#circle " + attributes.join(" ") + "/>").html_safe
  end

  def attributes(key_val_hash)
    output = []
    key_val_hash.each do |key,val|
      output << key.to_s + "=\"#{val.to_s}\""
    end
    output
  end

end
