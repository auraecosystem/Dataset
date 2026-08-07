$ ssh git@git.qubu.ai
git clone git@git.qubu.ai:<auraecosystem>/<dataset>.git
cd dataset
codex --model gpt-5.5 \
  -c model_provider=exe-lmlm \
  -c 'model_providers.exe-lmlm.name="exe-lmlm"' \
  -c 'model_providers.exe-lmlm.base_url="https://lmlm.int.exe.xyz/v1"'

curl -u "$SAUCE_USERNAME:$SAUCE_ACCESS_KEY" --location \
--request POST 'https://api.us-west-1.saucelabs.com/v1/storage/upload' \
--form 'payload=@"<path to the iOS file>/iOS-Real-Device-MyRNDemoApp.ipa"' \
--form 'name="iOS-Real-Device-MyRNDemoApp.ipa"'
