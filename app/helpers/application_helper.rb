module ApplicationHelper
  def title
    if content_for?(:title)
      content_for :title
    else
      t("#{ controller_path.tr('/', '.') }.title", default: :site_name)
    end
  end

end