

class GameTemplate

  def window(**window_option)

      @window_width   = (window_option.include? :width) ? window_option[:width] : "150"
      @window_height  = (window_option.include? :height) ? window_option[:height] : "30"
      @window_padding = (window_option.include? :padding) ? window_option[:padding] : "15"

      @main_container = (@window_width.to_i)-(@window_padding.to_i*2)

      puts size_script = "\e[8;#{@window_height};#{@window_width}t" + `clear`

  end

  def header(**values)

      if(values.include? :sym)
        (1..@window_padding.to_i).each do print " " end
        (1..@main_container).each do print "#{values[:color]}#{values[:font]}#{values[:sym]}\033[0m" end
        print "\n"
      end

      if(values.include? :title)
        centered = ((@main_container-values[:title].size)/2)+@window_padding.to_i
        (1..centered).each do print " " end
          puts "#{values[:color]}#{values[:font]}#{values[:title]}\033[0m"
      end

  end

  def content(**values)
    @content_padding = @window_padding.to_i + values[:padding].to_i
    seperated = values[:title].chars.each_slice(@main_container - values[:padding].to_i*2).map(&:join)

    seperated.each do |x|
      (1..@content_padding.to_i).each do print " " end
      puts x.strip
    end
  end

  def menu(**values)
    centered = (@main_container-values[:menu].size)/2+@window_padding.to_i
    (1..centered.to_i).each do print " " end
    print " #{values[:color]}#{values[:menu]}\033[0m \n"
  end

end
