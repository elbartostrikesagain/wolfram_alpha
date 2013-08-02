module WolframAlpha

  class Pod
    attr_accessor :title, :text
    
    def initialize(pod_doc)
      @title = pod_doc.css("h2").text.strip
      @text = extract_text(pod_doc.css("img"))
    end

    protected

    def extract_text(imgs)
      #can use alt or title it looks like
      imgs.map{|img| img["title"].strip}.join("\n\n")
    end

  end

end