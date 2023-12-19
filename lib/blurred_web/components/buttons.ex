defmodule BlurredWeb.Buttons do
  alias BlurredWeb.Indicators
  use Phoenix.Component
  import BlurredWeb.CoreComponents

  @doc """
  Friends section button
  """
  attr :icon, :string, required: true
  attr :title, :string, required: true
  attr :selected, :boolean, default: false

  def friends_section_button(assigns) do
    button_style =
      "rounded-md pl-2 py-2 w-full flex flex-row items-center justify-start gap-4 " <>
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

  @doc """
  User button.
  Shows username and status.
  """
  attr :user, :map, required: true
  attr :selected, :boolean, default: false
  attr :status, :atom, default: :offline

  def user_button(assigns) do
    button_style =
      "rounded-md pl-1 py-1 w-full flex flex-row items-center justify-start gap-2 " <>
        if assigns.selected do
          "bg-slate-200 text-black"
        else
          "bg-transparent hover:bg-slate-200 transition-all text-slate-500 hover:text-black"
        end

    assigns =
      assigns
      |> assign(:button_style, button_style)
      |> assign(:status, assigns.status)

    ~H"""
    <button class={@button_style}>
      <div class="relative">
        <img src={@user.image} alt={@user.username} class="w-8 h-8 rounded-full" />
        <div class="absolute bottom-0 right-0">
          <Indicators.status_indicator status={@status} />
        </div>
      </div>
      <span class="font-medium text-sm">
        <%= @user.username %>
      </span>
    </button>
    """
  end
end
