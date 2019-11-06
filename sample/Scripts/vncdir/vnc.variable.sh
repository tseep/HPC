# create an ssh tunnel via flux-xfer to the machine with your VNC Display.
# this example works for Mac, Linux, and Cygwin

# find your vnchost and display number
# If you have no VNC sessions running, you can make this easier by
# cleaning your .vnc folder first with
echo ""
echo "This script cleans your .vnc folder if you have no VNC sessions running"

echo "rm $HOME/.vnc/*.log"
rm $HOME/.vnc/*.log
echo "rm $HOME/.vnc/*.pid"
rm $HOME/.vnc/*.pid

# prior to submitting the job with your VNC session
echo ""
echo "ls -rt $HOME/.vnc/"
echo ""
ls -rt $HOME/.vnc/
echo ""

#  eg: nyx5330.arc-ts.umich.edu:1.log
#  eg: nyx5330.arc-ts.umich.edu   <== host running vnc
#  eg: 1   <== display number

# the port number is 5900+display number, which starts at 1 and increments
# if there are already VNC sessions running, which would make this
# template accurate.
# ssh -L 5901:<host running vnc>:5901  flux-xfer.arc-ts.umich.edu

#ssh -L 5901:nyx5330.arc-ts.umich.edu:5901  flux-xfer.arc-ts.umich.edu

