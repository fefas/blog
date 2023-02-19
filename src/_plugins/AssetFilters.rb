module Jekyll
  module AssetFilters
    def asset_url(file)
      "/assets/#{file}?version=#{version}"
    end

    def image_url(imageFile)
      asset_url "images/#{imageFile}"
    end

    def post_image_url(imageName)
      postId = @context.registers[:page].path[7..-4]
      imageFile = postId + '-' + imageName.downcase.gsub(/\s/, '-') + '.jpg'

      image_url imageFile
    end

    def post_image(imageName)
      imageUrl = post_image_url imageName

      "![#{imageName}](#{imageUrl})"
    end

    def version
      ENV["VERSION"]
    end
  end
end

Liquid::Template.register_filter(Jekyll::AssetFilters)
