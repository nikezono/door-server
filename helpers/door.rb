require 'uri'
require 'net/http'

class Door

  def initialize(api_url)
    api_url = URI.parse api_url unless api_url.kind_of? URI
    api_url.path = '/' if api_url.path.size < 1
    @url = api_url
  end
  
  def open
    begin
      if Net::HTTP.start(@url.host, @url.port).post('/', '0').kind_of? Net::HTTPOK
        sleep 2
        return Net::HTTP.start(@url.host, @url.port).post('/', '180').kind_of? Net::HTTPOK
      end
    rescue => e
      STDERR.puts e
    end
    return false
  end
end


if $0 == __FILE__
  d = Door.new('http://localhost:8090')
  puts d.open
end
