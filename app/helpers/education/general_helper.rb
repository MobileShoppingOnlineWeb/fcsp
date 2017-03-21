module Education::GeneralHelper
  def load_image object
    image = object.images
    if image.any?
      image_tag(image.first.url, class: "img wth-100")
    else
      image_tag(ImageUploader.new.default_url, class: "img wth-100")
    end
  end

  def current_path? path
    "current" if current_page? path
  end

  def default_current_path
    "current" unless params[:technique_name] || params[:term]
  end
end