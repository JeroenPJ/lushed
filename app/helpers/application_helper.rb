module ApplicationHelper
  def render_body_classes
    unless @body_classes.nil?
      return @body_classes.is_a?(String) ? @body_classes : @body_classes.join(" ")
    end
  end

  def google_search(terms)
    terms = terms.join("+") if terms.is_a?(Array)
    "https://www.google.com/search?q=#{terms}"
  end

  def link_to_if(*args,&block)
    args.insert 1, capture(&block) if block_given?

    super *args
  end
end
