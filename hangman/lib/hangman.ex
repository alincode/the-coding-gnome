defmodule Hangman do

  def new_game() do
    { :ok, pid } =Supervisor.start_child(Hangman.Supervisor, [])
    pid
  end

  def tally(game_pid) do
    GenServer.call(game_pid, { :tally })
  end

  # https://hexdocs.pm/elixir/GenServer.html
  def make_move(game_pid, guess) do
    GenServer.call(game_pid, { :make_move, guess})
  end

end

# pid = Hangman.new_game
# Hangman.make_move(pid, "a")
# Hangman.make_move(pid, "b")
