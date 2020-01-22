class Application 
  
  @@items = [Item.new("Oranges", 4.50)]
  
  def call(env)
    resp = Rack::Response.new 
    req = Rack::Request.new 
    
    if req.path.match(/items/)
      item_requested = req.params["item"]
      
      if @@items.include?(item_requested)
        @@items.map do |item_requested|
          resp.write item_requested.price
        end 
      else 
        resp.write "Item not found"
        resp.status = 400
      end 
    else 
      resp.write "Path not found"
      resp.status = 404
    end 
    resp.finish
  end 
  
end 