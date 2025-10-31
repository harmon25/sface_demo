defmodule SfaceDemoWeb.Demo do
  use SfaceDemoWeb, :surface_live_view

  alias SfaceDemoWeb.Components.Card

  def render(assigns) do
    ~F"""
    <div class="flex justify-center mt-12">
      <Card id="card-id" max_width="lg" rounded>
        <:header>
          Surface UI
        </:header>

        Start building rich interactive user-interfaces, writing minimal custom Javascript.
        Built on top of Phoenix LiveView, <strong>Surface</strong> leverages the amazing
        <strong>Phoenix Framework</strong> to provide a fast and productive solution to
        build modern web applications.

        <:footer>
          <span class="tag">#surface</span>
          <span class="tag">#phoenix</span>
          <span class="tag">#tailwindcss</span>
        </:footer>
      </Card>
    </div>
    """
  end
end
