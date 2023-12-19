defmodule BlurredWeb.Sections.FriendsSection do
  import BlurredWeb.TextInput
  import BlurredWeb.Separator
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

      <div class="px-2 flex flex-col gap-2 w-full">
        <BlurredWeb.Buttons.friends_section_button icon="hero-user-solid" title="Friends" />
        <BlurredWeb.Buttons.friends_section_button icon="hero-fire-solid" title="Nitro" />
        <BlurredWeb.Buttons.friends_section_button
          icon="hero-envelope-solid"
          title="Message Requests"
        />
        <BlurredWeb.Buttons.friends_section_button icon="hero-shopping-cart-solid" title="Shop" />
      </div>
    </div>
    """
  end
end
