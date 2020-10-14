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

  def call_post path, body
    uri = URI.parse(BASE_URL+path)
    begin
      http = Net::HTTP.new(uri.host,uri.port)
      req = Net::HTTP::Post.new(uri)
      req["Content-Type"] = "application/json"
      req.body = body.to_json
    rescue => exception
      raise exception
    end
    http.request(req)
  end

  

end