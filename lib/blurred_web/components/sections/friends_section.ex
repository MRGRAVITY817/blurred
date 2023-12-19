defmodule BlurredWeb.Sections.FriendsSection do
  import BlurredWeb.TextInput
  import BlurredWeb.Separator
  import BlurredWeb.Buttons
  use Phoenix.Component

  def friends_section(assigns) do
    ~H"""
    <div class="w-72 bg-slate-100 h-full flex flex-col items-center justify-start pt-2">
      <div class="px-2 w-full">
        <.text_input />
      </div>

      <div class="py-2 h-1 w-full">
        <.separator />
      </div>
      <!-- Main button groups -->
      <div class="px-2 flex flex-col gap-2 w-full">
        <.friends_section_button icon="hero-user-solid" title="Friends" selected={true} />
        <.friends_section_button icon="hero-fire-solid" title="Nitro" />
        <.friends_section_button icon="hero-envelope-solid" title="Message Requests" />
        <.friends_section_button icon="hero-shopping-cart-solid" title="Shop" />
      </div>
      <!-- Friends list -->
      <div class="px-2 mt-4 w-full">
        <div class="flex flex-row items-center justify-between pl-1 pr-2">
          <h2 class="text-slate-500 font-medium text-xs">DIRECT MESSAGES</h2>
          <h2 class="text-slate-500 font-semibold text-sm">+</h2>
        </div>
      </div>
    </div>
    """
  end
end
