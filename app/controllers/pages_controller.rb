require 'open-uri'

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

    # included_pos = "noun,adjective,verb,adverb,interjection,preposition,idiom,imperative,noun-plural,verb-intransitive,verb-transitive"
    included_pos = "noun"
    # all possible POS: abbreviation, adjective, adverb, affix, article, auxiliary-verb, conjunction, combining-form, definite-article, family-name, given-name, idiom, imperative, indefinite-article, interjection, noun-plural, noun, noun-singular, participle, past-participle, prefix, phrasal-verb, preposition, pronoun, proper-noun-plural, proper-noun, suffix, verb-intransitive, verb-transitive, verb
    url = "http://api.wordnik.com:80/v4/words.json/randomWords?hasDictionaryDef=true&minCorpusCount=0&minLength=5&maxLength=15&limit=5&includePartOfSpeech=#{included_pos}&api_key=#{ENV['WORDNIK_API_KEY']}"
    @words = JSON.load(open(url)).map { |wd| wd["word"] }
  end

  def quotes
    @body_classes = ["black", "full-height"]
  end

  def fade
    @body_classes = ["black", "full-height"]

    @text = [
      [:away, 'https://www.'],
      [:stay, 'lushed.co', root_path],
      [:away, '/fade']
    ]
  end

  def fax
    @body_classes = ["black", "full-height"]
  end

  def lotus
    @body_classes = ["black", "full-height"]
  end
end
