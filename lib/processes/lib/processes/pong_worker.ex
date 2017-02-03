defmodule Processes.PongWorker do
  use GenServer

  def start_link(name \\ nil) do
    GenServer.start_link(__MODULE__, :ok, [name: name])
  end

  def handle_cast({:ping, msg}, _state)  do
    IO.puts msg
    Process.sleep(300)
    GenServer.cast :ping, {:pong, "Hello from pong!"}
    {:noreply, nil}
  end
end
