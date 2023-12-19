defmodule BlurredWeb.Indicators do
  use Phoenix.Component

  attr :status, :atom, default: :offline

  def status_indicator(assigns) do
    status_style =
      "w-2 h-2 rounded-full " <>
        case assigns.status do
          :online -> "bg-green-500"
          :offline -> "bg-slate-300"
        end

    assigns =
      assigns
      |> assign(:status_style, status_style)

    ~H"""
    <div class="w-3 h-3 bg-white rounded-full flex justify-center items-center">
      <div class={@status_style} />
    </div>
    """
  end
end
