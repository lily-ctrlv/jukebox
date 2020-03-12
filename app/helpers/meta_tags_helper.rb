module MetaTagsHelper
  def meta_title
    content_for?(:meta_title) ? content_for(:meta_title) : DEFAULT_META["JukeBox - Control Your Clubbing Beats"]
  end

  def meta_description
    content_for?(:meta_description) ? content_for(:meta_description) : DEFAULT_META["Jukebox is a mobile application which enables clubbers to control the night's playlist."]
  end

  def meta_image
    meta_image = (content_for?(:meta_image) ? content_for(:meta_image) : DEFAULT_META["jukebox-icon.png"])
    # little twist to make it work equally with an asset or a url
      # meta_image.starts_with?("http") ? meta_image : image_url(meta_image)
  end
end
