echo "file drivers/cxl/* +p" > /sys/kernel/debug/dynamic_debug/control
dmesg -C
way=1
if [ "$1" == "2" ]; then
echo /home/fan/code/ndctl/build/cxl/cxl create-region -m -d decoder0.0 -w 2 -s 512M mem0 $2
/home/fan/code/ndctl/build/cxl/cxl create-region -m -d decoder0.0 -w 2 -s 512M mem0 $2 --debug
else
echo /home/fan/code/ndctl/build/cxl/cxl create-region -m -d decoder0.0 -w 1 mem0 -s 512M
/home/fan/code/ndctl/build/cxl/cxl create-region -m -d decoder0.0 -w 1 mem0 -s 256M --debug
fi
