sudo stop network-manager
echo "manual" | sudo tee /etc/init/network-manager.override

echo "sudo ifconfig ethX up may be needed"
