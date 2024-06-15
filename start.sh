if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Hydra-sjz/VCPlayerX.git /VCPlayerX
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /VCPlayerX
fi
cd /VCPlayerX
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 maine.py
