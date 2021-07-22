defmodule HelloSocketWeb.WildcardChannel do

  def join(_topic, _payload, socket) do
    # IO.puts(a)
    {:ok, socket}
  end

  def handle_in(x, _payload, socket) do
    {:reply, {:ok, %{ping: "no " <> x}}, socket}
  end

end
