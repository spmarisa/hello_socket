defmodule HelloSocketWeb.PingChannel do
  use Phoenix.Channel


  def join(_topic, _payload, socket) do
    {:ok, socket}
  end

  def handle_in(x, _payload, socket) do
    {:reply, {:ok, %{ping: "no " <> x}}, socket}
  end

end
