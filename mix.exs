defmodule SfaceDemoUmbrella.MixProject do
  use Mix.Project

  def project do
    [
      version: "3.0.0",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases(),
      elixirc_options: [debug_info: Mix.env() == :dev],
      listeners: [Phoenix.CodeReloader],
      apps_path: "apps",
    ]
  end


  # Dependencies listed here are available only for this
  # project and cannot be accessed from applications inside
  # the apps folder.
  #
  # Run "mix help deps" for examples and options.
  defp deps do
    []
  end

  defp aliases do
    [

    ]
  end
end
