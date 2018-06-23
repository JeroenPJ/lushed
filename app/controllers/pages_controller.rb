class PagesController < ApplicationController
  def home
  end

  def navbar
    html = render_to_string template: 'pages/_navbar', layout: false
    render json: {
      html: html
    }
  end

  def words
    @body_classes = ["black", "full-height"]
    @words = ['flower', 'tree', 'lush', 'nature', 'outside']
    # @words = "http://api.wordnik.com:80/v4/words.json/randomWords?hasDictionaryDef=true&minCorpusCount=0&minLength=5&maxLength=15&limit=5&api_key=#{ENV['WORDNIK_API_KEY']"
  end

  def quotes
    @body_classes = ["black", "full-height"]
  end

  def fade
    byebug
    @body_classes = ["black", "full-height"]

    @text = [
      [:away, 'https://www.'],
      [:stay, 'lushed.co', root_path],
      [:away, '/fade']
    ]
  end
end
