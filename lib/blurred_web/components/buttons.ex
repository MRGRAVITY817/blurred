defmodule BlurredWeb.Buttons do
  use Phoenix.Component
  import BlurredWeb.CoreComponents

  attr :icon, :string, required: true
  attr :title, :string, required: true

  def friends_section_button(assigns) do
    ~H"""
    <button class="bg-transparent hover:bg-slate-200 transition-all 
                   rounded-md pl-2 py-2 w-full 
                   flex flex-row items-center justify-start gap-2">
      <.icon name={@icon} class="h-5 w-5" />
      <span class="font-medium text-sm">
        <%= @title %>
      </span>
    </button>
    """
  end
end