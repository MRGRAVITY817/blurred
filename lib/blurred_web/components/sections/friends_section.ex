defmodule BlurredWeb.Sections.FriendsSection do
  import BlurredWeb.TextInput
  import BlurredWeb.Separator
  alias BlurredWeb.Buttons
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
        <Buttons.friends_section_button icon="hero-user-solid" title="Friends" selected={true} />
        <Buttons.friends_section_button icon="hero-fire-solid" title="Nitro" />
        <Buttons.friends_section_button icon="hero-envelope-solid" title="Message Requests" />
        <Buttons.friends_section_button icon="hero-shopping-cart-solid" title="Shop" />
      </div>
      <!-- Friends list -->
      <div class="px-2 mt-4 w-full flex flex-col gap-1">
        <div class="flex flex-row items-center justify-between pl-1 pr-2">
          <h2 class="text-slate-500 font-medium text-xs">DIRECT MESSAGES</h2>
          <h2 class="text-slate-500 font-semibold text-sm">+</h2>
        </div>
        <Buttons.user_button
          user={
            %{username: "mrgravity817", image: "https://avatars.githubusercontent.com/u/41038636?v=4"}
          }
          status={:online}
        />
        <Buttons.user_button user={
          %{username: "mrgravity817", image: "https://avatars.githubusercontent.com/u/41038636?v=4"}
        } />
        <Buttons.user_button user={
          %{username: "mrgravity817", image: "https://avatars.githubusercontent.com/u/41038636?v=4"}
        } />
        <Buttons.user_button user={
          %{username: "mrgravity817", image: "https://avatars.githubusercontent.com/u/41038636?v=4"}
        } />
      </div>
    </div>
    """
  end
end
