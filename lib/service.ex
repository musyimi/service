defmodule Service do

  use Application
  alias Service.ServiceSupervisor

  def start(_type, _args)do
    children = [
      ServiceSupervisor
    ]

    opts = [strategy: :one_for_one, name: Service.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
