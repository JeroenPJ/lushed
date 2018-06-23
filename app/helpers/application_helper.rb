module ApplicationHelper
  def render_body_classes
    unless @body_classes.nil?
      return @body_classes.is_a?(String) ? @body_classes : @body_classes.join(" ")
    end
  end
end
