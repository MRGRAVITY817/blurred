defmodule BlurredWeb.Buttons do
  use Phoenix.Component
  import BlurredWeb.CoreComponents

  attr :icon, :string, required: true
  attr :title, :string, required: true
  attr :selected, :boolean, default: false

  def friends_section_button(assigns) do
    button_style =
      "rounded-md pl-2 py-2 w-full flex flex-row items-center justify-start gap-2 " <>
        if assigns.selected do
          "bg-slate-200 text-black"
        else
          "bg-transparent hover:bg-slate-200 transition-all text-slate-500 hover:text-black"
        end

    assigns = assign(assigns, :button_style, button_style)

    ~H"""
    <button class={@button_style}>
      <.icon name={@icon} class="h-5 w-5" />
      <span class="font-medium text-sm">
        <%= @title %>
      </span>
    </button>
    """
  end
end
