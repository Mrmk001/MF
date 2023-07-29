if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Mrmk001/MF.git /MF
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /MF
fi
cd /MF
pip3 install -U -r requirements.txt
echo "Starting MF....🔥"
python3 bot.py
