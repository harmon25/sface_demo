defmodule SfaceDemoWeb.Components.CardTest do
  use SfaceDemoWeb.ConnCase, async: true
  use Surface.LiveViewTest

  catalogue_test SfaceDemoWeb.Components.Card
end
