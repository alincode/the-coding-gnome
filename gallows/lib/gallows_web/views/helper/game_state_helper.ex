defmodule GallowsWeb.Views.Helper.GameStateHelper do

  # https://hexdocs.pm/phoenix_html/Phoenix.HTML.html
  import Phoenix.HTML, only: [ raw: 1 ]

  @responses %{
    :won => { :info, "You Won!" },
    :lost => { :danger, "You Lost!" },
    :good_guess => { :info, "Good guess!" },
    :bad_guess => { :warning, "Bad guess!" },
    :already_used => { :warning, "You already guessed that" },
  }

  def game_state(state) do
    @responses[state]
    |> alert()
  end

  defp alert({class, message}) do
    """
    <div class="alert alert-#{class}">
      #{message}
    </div>
    """
    |> raw()
  end

  defp alert(nil), do: ""

end
