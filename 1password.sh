CONTAINER=$(ls ~/Library/Group\ Containers | grep com.1password)

echo "Host *\n\tIdentityAgent \"~/Library/Group Containers/$CONTAINER/t/agent.sock\"\n" > ~/.ssh/config
