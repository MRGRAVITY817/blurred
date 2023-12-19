defmodule BlurredWeb.Sections.ServersSection do
  use Phoenix.Component
  import BlurredWeb.Avatars
  import BlurredWeb.Separator

  def servers_section(assigns) do
    ~H"""
    <div class="w-20 bg-slate-200 h-full flex flex-col items-center justify-start 
              pt-4 gap-2">
      <.server_avatar />

      <div class="px-4 w-full h-1">
        <.separator />
      </div>

      <.server_avatar />
    </div>
    """
  end
end
