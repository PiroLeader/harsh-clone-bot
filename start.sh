if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/PiroLeader/harsh-clone-bot /harsh-clone-bot 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /harsh-clone-bot
fi
cd /harsh-clone-bot 
pip3 install -U -r requirements.txt
echo "Starting TheMovieProviderBot...."
python3 bot.py
