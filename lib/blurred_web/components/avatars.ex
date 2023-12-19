defmodule BlurredWeb.Avatars do
  use Phoenix.Component

  def server_avatar(assigns) do
    ~H"""
    <div class="h-10 w-10 rounded-full hover:rounded-xl 
            transition-transform bg-indigo-500 cursor-pointer">
    </div>
    """
  end
end
