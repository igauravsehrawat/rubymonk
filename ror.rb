class HelloWorldController < ActionController::Base
  def index
    @name = params[:name]
    render :template => "index"
  end
end

my_name = "Gary Prefontaine"
url = "http://localhost:3000/index?name=#{my_name}"

puts HTTP.get(url)
Monk.show_html HTTP.get(url)
