[
  import_deps: [:surface, :ecto, :phoenix, :ecto_sql],
  plugins: [Phoenix.LiveView.HTMLFormatter, Surface.Formatter.Plugin],
  inputs: ["mix.exs", "config/*.exs", "rel_config/*.exs"],
  subdirectories: ["apps/*"],
]
