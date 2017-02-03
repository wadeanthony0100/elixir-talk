defmodule ElixirTalk.Processes.PingPong do

  @doc """
  Starts up two processes, ping and pong, and
  an infinite loop conversation between the two
  of them.
  """
  def start do
    ping = spawn(&ElixirTalk.Processes.PingPong.Ping.loop/0)
    pong = spawn(&ElixirTalk.Processes.PingPong.Pong.loop/0)
    send ping, {:pong, {"Let's get started!", pong}}
  end

  defmodule Ping do
    def loop do
      receive do
        {:pong, {msg, sender}} ->
          IO.puts msg
          Process.sleep 300
          send sender, {:ping, {"Hello from Ping!", self()}}
          loop()
      end
    end
  end

  defmodule Pong do
    def loop do
      receive do
        {:ping, {msg, sender}} ->
          IO.puts msg
          Process.sleep 300
          send sender, {:pong, {"Hello from Pong!", self()}}
          loop()
      end
    end
  end

  end
