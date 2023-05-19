defmodule Service.Diagnostic do
  alias __MODULE__

  defstruct(
    problem: nil,
    solution: nil,
    charge: nil
  )

  def new(problem, solution, charge) do
    %Diagnostic{
      problem: problem,
      solution: solution,
      charge: charge
    }
  end
end
