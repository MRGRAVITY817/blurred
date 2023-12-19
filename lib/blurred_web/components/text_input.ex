defmodule BlurredWeb.TextInput do
  use Phoenix.Component

  def text_input(assigns) do
    ~H"""
    <input
      class="bg-slate-200 w-full pl-2 py-2 text-xs rounded-md"
      placeholder="Find or start a conversation"
    />
    """
  end
end
