# SfaceDemo Umbrella Mix Compile Issue

## default not as umbrella works as expected

Clone + compile the repo - not as an umbrella it works as expected:

```sh
git clone git@github.com:harmon25/sface_demo.git
cd sface_demo/
mix deps.get
mix compile

# listing this directory we have the co-located hooks
ls assets/js/_hooks

```

The `assets/js/_hooks` directory is created and hooks copied over.

## As Umbrella

Checkout branch where app is now nested in an umbrella, cleanup + compile.
This is what mis-behaves and I believe is an elixir/mix bug.

```sh

git checkout as_umbrella
# remove previously generated assets
rm -rf assets/
mix clean
mix compile

ls apps/sface_demo/assets/js/
#  No _hooks are generated
```

When the surface compile task runs - it appears the args to the [`run/1`](https://github.com/surface-ui/surface/blob/main/lib/mix/tasks/compile/surface.ex#L164-L182) function here are being overridden somehow...

A plain mix compile sees the following args:

```elixir
["--from-mix-deps-compile", "--no-warnings-as-errors", "--no-code-path-pruning"]
```

Which is weird, as no arguments were passed to `mix compile`

Since `"--from-mix-deps-compile"` is present, the surface task just no-ops.

## As Umbrella On Earlier Elixir

Checkout branch where app is now nested in an umbrella, but on elixir 1.18.x + otp27

```sh
git checkout umbrellla_older_elixir
rm -rf _build/
mix deps.clean --all
mix compile

ls apps/sface_demo/assets/js/_hooks
# it works!
```
