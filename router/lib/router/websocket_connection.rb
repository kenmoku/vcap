module WebsocketConnection
  def initialize client, header, droplet
    @client, @header, @droplet = client, header, droplet
  end

  def connection_completed
    send_data(@header)
  end

  def receive_data(data)
    @client.send_data(data)
  end

  def terminate
  end
end
