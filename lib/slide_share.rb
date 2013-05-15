require 'digest/sha1'
require "httparty"

class SlideShare
  include HTTParty
  @@API_KEY = nil
  @@SECRET = nil
  
  def self.API_KEY=(value)
    @@API_KEY = value
  end
  
  def self.SECRET=(value)
    @@SECRET = value
  end
  
  def self.get_slideshows_by_user(username)
    params = create_parameters
    params[:username_for] = username
    get("https://www.slideshare.net/api/2/get_slideshows_by_user", :query => params)
  end
  
  private
    def self.create_parameters
      params = {}
      params[:api_key] = @@API_KEY
      
      timestamp = Time.now.to_i
      ss_hash = Digest::SHA1.hexdigest(@@SECRET + timestamp.to_s)
      
      params[:ts] = timestamp
      params[:hash] = ss_hash
      params[:format] = "json"
      return params
    end
  
end
