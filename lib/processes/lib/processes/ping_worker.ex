defmodule Processes.PingWorker do
  use GenServer

  def start_link(name \\ nil) do
    GenServer.start_link(__MODULE__, :ok, [name: name])
  end

  def handle_cast({:pong, msg},_state) do
    IO.puts msg
    Process.sleep(300)
    GenServer.cast :pong, {:ping, "Hello from ping!"}
    {:noreply, nil}
  end

  def start_a_fight do
    GenServer.cast :pong, {:ping, "I'm starting something..."}
  end
end
