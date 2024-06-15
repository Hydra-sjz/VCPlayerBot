echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/Hydra-sjz/VCPlayerX /VCPlayerX
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/Hydra-sjz/VCPlayerX -b $BRANCH /VCPlayerX
fi
cd /VCPlayerX
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 maine.py
