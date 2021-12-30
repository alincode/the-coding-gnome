defmodule TextClient.Summary do
  
  def display(game = %{ tally: tally }) do
    IO.puts [
      "\n",
      "Word so far: #{Enum.join(tally.letters, " ")} \n",
      "Guesses left: #{tally.turns_left} \n"
    ]
    game
  end

  # def display(game) do
  #   game
  # end

  def prompt(game) do
    game
  end

  def make_move(game) do
    game
  end
end