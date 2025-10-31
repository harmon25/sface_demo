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

Checkout branch where app is now nested in an umbrella, cleanup + compile

```sh

git checkout as_umbrella
# remove previously generated assets
rm -rf assets/
mix clean 
mix compile 

ls apps/sface_demo/assets/js/
#  No _hooks are generated 
```


## As Umbrella On Earlier Elixir

Checkout branch where app is now nested in an umbrella, cleanup + compile

```sh
git checkout umbrellla_older_elixir
rm -rf _build/
mix deps.clean --all
mix compile 

ls apps/sface_demo/assets/js/_hooks
# it works!
```