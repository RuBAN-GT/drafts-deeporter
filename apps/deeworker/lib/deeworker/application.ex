defmodule Deeworker.Application do
  @moduledoc false

  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = []

    opts = [strategy: :one_for_one, name: Deeworker.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
