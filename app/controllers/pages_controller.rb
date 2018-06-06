class PagesController < ApplicationController
  def home
  end

  def navbar
    html = render_to_string template: 'pages/_navbar', layout: false
    render json: {
      html: html
    }
  end
end
