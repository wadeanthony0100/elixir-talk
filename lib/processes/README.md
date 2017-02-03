# Processes

A Ping Pong demonstration of elixir OTP

## Start the IEx session:
'''bash
  $ iex -S mix
'''

## Run the ping pong processes:
'''elixir
  iex(1)> Processes.PingWorker.start_a_fight
'''

## Optional, look at the live view of the Sup. Tree:
'''elixir
  iex(2)> :observer.start
'''
