# vive_py

This repository is to subscribe to vive_ros node and fetch HTC Vive Components published data.

The pre-requisite to this repo is to have vive_ros ().

Run vive_ros repository commands to publish HTC Vive components date

Then on new terminal run command: rosrun vive_py vive_controller_data.py 

This command will subscribe to vive ROS node and save the positional and rotational data of HTC Vive and 2 Controllers in seperate csv files in data folder.

We can use this code store HTC Vive components data for various purpose like teaching Robot in Virtual Reality, correspondence learning etc.
