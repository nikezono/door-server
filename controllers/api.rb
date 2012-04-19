
post '/open' do
  door = Door.new @@conf['phidgets-servo-server']
  unless door.open
    status 500
    @mes = 'error'
  else
    status 200
    @mes = 'open'
  end
end
