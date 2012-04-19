
post '/open' do
  door = Door.new @@conf['phidgets-servo-server']
  door.open
end
