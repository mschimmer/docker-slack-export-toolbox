# docker-slack-export-toolbox
helpful toolbox for exporting slack content (searchable log of all conversation and knowledge)

# Usage

## Run in container
```bash
# Generate a `slack_export.zip` file for use with slack-export-viewer
python slack_export.py --token xoxs-123... --zip slack_export
```

```bash
python slack_history.py --token='123token'
```

## Full example

This example uses the automatically build image from Dockerhub (https://hub.docker.com/r/mschimmer/docker-slack-export-toolbox)

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

## Works with offical slack export
* How to export your Slack's entire archive as HTML message logs (https://levels.io/slack-export-to-html/)
  * levelsio/slack2html (https://gist.github.com/levelsio/122907e95956602e5c09)
  
## Makes a slack export
* zach-snell/slack-export (https://github.com/zach-snell/slack-export)
* Slack Export Viewer (https://github.com/hfaran/slack-export-viewer)
