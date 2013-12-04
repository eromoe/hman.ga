module More

    def has_more(input)
        if input.include? "<!--more-->"
            true
        else
            false
        end
    end

    def more(input, type)
        if has_more(input)
            if type == "excerpt"
                input.split("<!--more-->").first
            elsif type == "remaining"
                input.split("<!--more-->").last
            else
                input
            end
        else
            input
        end
    end
end

Liquid::Template.register_filter(More)