# docker-slack-export-toolbox
helpful toolbox for exporting slack content (searchable log of all conversation and knowledge)

# Usage

## Run in a container
```bash
# Generate a `slack_export.zip` file for use with slack-export-viewer
python slack_export.py --token xoxs-123... --zip slack_export
```

```bash
# This script finds all channels, private channels and direct messages
# that your user participates in, downloads the complete history for
# those converations and writes each conversation out to seperate json files.
python slack_history.py --token='123token' --dryRun
```

## Full examples

These examples uses the automatically build image from Dockerhub (https://hub.docker.com/r/mschimmer/docker-slack-export-toolbox)

### zach-snell/slack-export with slack export viewer

```bash
cd ~
mkdir slack-export

docker run -ti --rm -v ~/slack-export:/mnt/slack-export \
  mschimmer/docker-slack-export-toolbox sh -c \ 
  'cd /mnt/slack-export && python /app/slack_export.py --token <xoxp-...> --zip slack_export'

cd ~/slack-export
slack-export-viewer --port <port> --ip <ip> --no-browser --debug -z slack_export.zip
```

# Ressources

## Works with official slack export
* How to export your Slack's entire archive as HTML message logs (https://levels.io/slack-export-to-html/)
  * levelsio/slack2html (https://gist.github.com/levelsio/122907e95956602e5c09)
* The Wayslack Machine: incrementally archive Slack teams and delete old files, using Slack's "archive" export format (https://github.com/wolever/wayslack)
  
## Makes a slack export
* `zach-snell/slack-export` (https://github.com/zach-snell/slack-export)
* Slack Export Viewer (https://github.com/hfaran/slack-export-viewer)
* `Chandler/slack_history.py` (https://gist.github.com/Chandler/fb7a070f52883849de35) with PR from `minniel/slack_history#2`
