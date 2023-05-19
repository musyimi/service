defmodule Service.ServiceServer do
  use GenServer
  alias Service.Service

  def start_link(service_id) do
    name = service_name(service_id)
    GenServer.start_link(__MODULE__, service_id, name: name)
  end

  def service_name(service_id), do: :"service:#{service_id}"

  def add_diagnostic(service_id, diagnostic) do
    name = service_name(service_id)
    GenServer.call(name, {:add_diagnostic, diagnostic})
  end

  def add_delivery(service_id, delivery) do
    name = service_name(service_id)
    GenServer.call(name, {:add_delivery, delivery})
  end

  def add_gadget(service_id, gadget) do
    name = service_name(service_id)
    GenServer.call(name, {:add_gadget, gadget})
  end


  def init(service_id) do
    service = Service.new(service_id)
    {:ok, service}
  end

  def handle_call({:add_diagnostic, diagnostic}, _from, service) do
    service = Service.add_diagnostic(service, diagnostic)
    {:reply, service, service}
  end

  def handle_call({:add_delivery, delivery}, _from, service) do
    service = Service.add_delivery(service, delivery)
    {:reply, service, service}
  end

  def handle_call({:add_gadget, gadget}, _from, service) do
    service = Service.add_gadget(service, gadget)
    {:reply, service, service}
  end


end
