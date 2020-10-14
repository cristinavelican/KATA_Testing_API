require 'net/http'
module Helpers
  BASE_URL = "http://localhost:9966/petclinic/"

  def call_get path
    uri = URI.parse(BASE_URL+path)
    begin
      http = Net::HTTP.new(uri.host,uri.port)
      response = http.request(Net::HTTP::Get.new(uri))
    rescue => exception
      raise exception
    end
    response
  end

  

end