defmodule Service.ServiceSupervisor do
  use DynamicSupervisor
  alias Service.ServiceServer

  def start_link(args) do
    DynamicSupervisor.start_link(__MODULE__, args, name: __MODULE__)
  end

  def start_service(service_id) do
    spec = {ServiceServer, service_id}
    DynamicSupervisor.start_child(__MODULE__, spec)
  end

  def init(_arg), do: DynamicSupervisor.init(strategy: :one_for_one)


end
