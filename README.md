# SfaceDemo Umbrella Mix Compile Issue

Clone + compile the repo - not as an umbrella it works as expected: 

```sh
git clone git@github.com:harmon25/sface_demo.git
cd sface_demo/
mix deps.get

mix compile

ls assets/js/_hooks

```

The `assets/js/_hooks` directory is created and hooks copied over.


## As Umbrella

Checkout branch where app is now nested in an umbrella, cleanup + compile

```sh
rm -rf assets/

git checkout as_umbrella
mix clean 
mix compile 

ls apps/sface_demo/assets/js/
# nothing is here :(
```


## As Umbrella On Earlier Elixir

Checkout branch where app is now nested in an umbrella, cleanup + compile

```sh
git checkout as_umbrella_older_elixir
mix clean 
mix compile 

ls apps/sface_demo/assets/js/

```