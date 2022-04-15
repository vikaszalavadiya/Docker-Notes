echo ""
echo "-------- Start Docker Installation ----------"
echo ""
sudo apt-get update -y
sleep 1
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

echo ""
echo "-------- Step 1 - Done ----------"
echo ""

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

echo ""
echo "-------- Step 2 - Done ----------"
echo ""

sudo apt-get update -y
sleep 2
sudo apt-get install docker-ce docker-ce-cli containerd.io -y

echo ""
echo "-------- Docker Installation - Done ----------"
echo ""