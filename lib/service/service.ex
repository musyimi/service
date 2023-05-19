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
end
