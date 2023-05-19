defmodule Service.Delivery do
  alias __MODULE__

  defstruct(
    customer_name: nil,
    customer_contact: nil,
    address: nil,
    diagnostics: []
  )

  def new(customer_name, customer_contact, address) do
    %Delivery{
      customer_name: customer_name,
      customer_contact: customer_contact,
      address: address
    }
  end

  def add_diagnostic(delivery, diagnostic) do
    diagnostics = [diagnostic | delivery.diagnostics]
    Map.put(delivery, :diagnostics,  diagnostics)
  end
end
