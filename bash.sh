ssh git@git.qubu.ai
git clone git@git.qubu.ai:<auraecosystem>/<dataset>.git
cd dataset
codex --model gpt-5.5 \
  -c model_provider=exe-lmlm \
  -c 'model_providers.exe-lmlm.name="exe-lmlm"' \
  -c 'model_providers.exe-lmlm.base_url="https://lmlm.int.exe.xyz/v1"'
