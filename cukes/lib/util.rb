module Util
    include PageObject

    def highlight(element, color)
      if !element.nil? && element.attribute('__selenideHighlighting').nil?
          (0..4).each { |i| transform(element, color, i) }
          4.downto(0) { |i| transform(element, color, i) }
      end
    end

    def transform(element, color, i)
      execute_script("arguments[0].setAttribute('__selenideHighlighting', 'done');
      arguments[0].setAttribute(arguments[1], arguments[2])", element, "style",
      "border: #{i} px solid #{color}; border-style: dotted; transform: scale(1, 1.#{i});")
    end
end
