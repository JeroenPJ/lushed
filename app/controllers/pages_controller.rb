class PagesController < ApplicationController
  def home
  end

  def navbar
    html = render_to_string template: 'pages/_navbar', layout: false
    render json: {
      html: html
    }
  end

  def fade
    @text = [
      [:away, 'https://www.'],
      [:stay, 'lushed.co'],
      [:away, '/fade']
    ]
  end
end
