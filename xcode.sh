LATEST_XCODE=$(curl "https://xcodereleases.com/data.json" | jq -c "map(select(.version.release.release == true))")

LATEST_XCODE_VERSION=$(echo $LATEST_XCODE | jq -r .[0].version.number)
LATEST_XCODE_NAME="Xcode $LATEST_XCODE_VERSION"

LATEST_XCODE_URL=$(echo $LATEST_XCODE | jq -r .[0].links.download.url)

read -p "Do you want to install $LATEST_XCODE_NAME? <y/n> " prompt
if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "Yes" ]]
then
    LATEST_XCODE_PATH=${LATEST_XCODE_URL/#https:\/\/download.developer.apple.com}
    open https://developer.apple.com/services-account/download?path=$LATEST_XCODE_PATH

    confirm "Download and Install Xcode before continuing"
fi

