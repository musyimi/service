defmodule Service.Service do
  alias __MODULE__

  defstruct(
    service_id: nil,
    gadgets: []
  )

  def new(service_id) do
    %Service{
      service_id: service_id
    }
  end

  def add_gadget(service, gadget)do
    gadgets = [gadget | service.gadgets]
    Map.put(service, :gadgets, gadgets)
  end

end
