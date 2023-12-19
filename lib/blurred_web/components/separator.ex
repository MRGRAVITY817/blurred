defmodule BlurredWeb.Separator do
  use Phoenix.Component

  def separator(assigns) do
    ~H"""
    <div class="border-t border-slate-300 w-full h-20"></div>
    """
  end
end
