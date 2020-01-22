class Application 
  
  @@items = [Item.new("Oranges", 4.50)]
  
  def call(env)
    resp = Rack::Response.new 
    req = Rack::Request.new 
    
    if req.path.match(/)
    
    
  end 
  
end 