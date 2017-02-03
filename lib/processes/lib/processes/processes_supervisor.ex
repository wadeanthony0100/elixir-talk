defmodule Processes.Supervisor do
  @moduledoc """
  Starts up two processes, ping and pong, and
  an infinite loop conversation between the two
  of them.
  """
  use Supervisor

  def start_link do
    Supervisor.start_link(__MODULE__, :ok, name: :processes_supervisor)
  end

  def init(:ok) do
    children = [
      worker(Processes.PingWorker, [:ping]),
      worker(Processes.PongWorker, [:pong]),
    ]
    supervise(children, strategy: :one_for_one)
  end
end
