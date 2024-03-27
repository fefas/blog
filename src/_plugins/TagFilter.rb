module Jekyll
  module TagFilter
    def tag_to_string(tags)
      tags.join(' ')
    end
  end
end

Liquid::Template.register_filter(Jekyll::TagFilter)
