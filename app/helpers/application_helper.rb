module ApplicationHelper
  def back(path=nil)
    if path.nil?
      path = purchases_path
    end
    link_to "Back", path, :"data-icon" => "back", :class => "ui-btn-left"
  end
end
