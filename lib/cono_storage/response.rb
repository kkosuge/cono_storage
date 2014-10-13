module ConoStorage
  class Response
    attr_accessor :faraday_response

    def initialize(faraday_response)
      @body    = faraday_response.body
      @headers = faraday_response.headers
      @status  = faraday_response.status
      @url     = faraday_response.env.url.to_s
      @faraday_response = faraday_response
    end

    # Conostorage::Response#status
    #
    # @return [Fixnum]
    #
    def status
      @status
    end

    # Conostorage::Response#body
    #
    # @return [Hash]
    # @return [Array]
    # @return [String] JSON以外で返ってきた場合はそのまま出力
    #
    def body
      if @body and @body.size > 0
        JSON.parse(@body)
      else
        @body
      end
    rescue JSON::ParserError
      @body
    end

    # Conostorage::Response#headers
    #
    # @return [Hash]
    #
    def headers
      @headers
    end

    # Conostorage::Response#url
    #
    # @return [String] Web ModeにするとアクセスできるオブジェクトのURL
    #
    def url
      @url
    end
  end
end
