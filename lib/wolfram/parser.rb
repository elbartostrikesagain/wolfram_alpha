module WolframAlpha
  class Parser
    attr_accessor :pods
    
    def initialize(query)
      url_params = URI.encode_www_form([["i", query], ["equal", "Submit"]])
      url = 'http://m.wolframalpha.com/input/?' + url_params
      doc = Nokogiri::HTML(open(url))
      @pods = doc.css('div.pod').map{|p| Pod.new(p)}
    end
  end
end