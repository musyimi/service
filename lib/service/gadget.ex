defstruct Service.Gadget do
  alias __MODULE__

  defstruct(
    id: nil,
    gadget_name: nil,
    model_number: nil,
    deliveries: []
  )

  def new(id, gadget_name, model_number) do
    %Gadget{
      id: id,
      gadget_name: gadget_name,
      model_number: model_number
    }
  end
end