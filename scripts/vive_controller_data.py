#!/usr/bin/env python

import csv
import os
import rospy
import roslib
import tf.transformations
from geometry_msgs.msg import Twist, TwistStamped
from std_msgs.msg import String


# Create Controller CSV Files in vive_py data folder
filepath1 = os.path.join('/home/baxter2/ros_ws/src/vive_py/data', 'controller1_data.csv')
if not os.path.exists('/home/baxter2/ros_ws/src/vive_py/data'):
    os.makedirs('/home/baxter2/ros_ws/src/vive_py/data')
f = open(filepath1, "a")

filepath2 = os.path.join('/home/baxter2/ros_ws/src/vive_py/data', 'controller2_data.csv')
if not os.path.exists('/home/baxter2/ros_ws/src/vive_py/data'):
    os.makedirs('/home/baxter2/ros_ws/src/vive_py/data')
f2 = open(filepath2, "a")

# Create HMD CSV file in vive_py data folder
filepath3 = os.path.join('/home/baxter2/ros_ws/src/vive_py/data', 'hmd_data.csv')
if not os.path.exists('/home/baxter2/ros_ws/src/vive_py/data'):
    os.makedirs('/home/baxter2/ros_ws/src/vive_py/data')
f = open(filepath3, "a")

# Read both controller CSV files

# Create Headers for CSV files
with open('/home/baxter2/ros_ws/src/vive_py/data/controller1_data.csv', 'wb') as outcsv:
    writer = csv.writer(outcsv)
    writer.writerow(["Linear X", "Linear Y", "Linear Z", "Angular X", "Angular Y", "Angular Z"])
    outcsv.close()

with open('/home/baxter2/ros_ws/src/vive_py/data/controller2_data.csv', 'wb') as outcsv2:
    writer = csv.writer(outcsv2)
    writer.writerow(["Linear X", "Linear Y", "Linear Z", "Angular X", "Angular Y", "Angular Z"])
    outcsv2.close()

with open('/home/baxter2/ros_ws/src/vive_py/data/hmd_data.csv', 'wb') as outcsv3:
    writer = csv.writer(outcsv3)
    writer.writerow(["Linear X", "Linear Y", "Linear Z", "Angular X", "Angular Y", "Angular Z"])
    outcsv3.close()


# Read data from controller with twist1 broadcast and write them to a csv file 
def twist1(data):
    rospy.loginfo("Receiving Data from twist1 broadcast")
    rospy.loginfo(data)
    # Open controller1 csv file and begin writing the published linear and angular coordinate positions to file
    with open('/home/baxter2/ros_ws/src/vive_py/data/controller1_data.csv', 'a') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow([data.twist.linear.x, data.twist.linear.y, data.twist.linear.z,
                           data.twist.angular.x, data.twist.angular.y, data.twist.angular.z])
	csvfile.close()


def twist2(data):
    rospy.loginfo("Receiving Data from twist2 broadcast!")
    rospy.loginfo(data)
    # Open controller 2 csv file and begin writing the published linear and angular coordinate positions to file
    with open('/home/baxter2/ros_ws/src/vive_py/data/controller2_data.csv', 'a') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow([data.twist.linear.x, data.twist.linear.y, data.twist.linear.z,
                           data.twist.angular.x, data.twist.angular.y, data.twist.angular.z])
	csvfile.close()

# Read data from HMD headset broadcast and write coordinates to csv file
def hmd(data):
    rospy.loginfo("Receiving Data from hmd broadcast")
    rospy.loginfo(data)
    # Open controller1 csv file and begin writing the published linear and angular coordinate positions to file
    with open('/home/baxter2/ros_ws/src/vive_py/data/hmd_data.csv', 'a') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow([data.twist.linear.x, data.twist.linear.y, data.twist.linear.z,
                           data.twist.angular.x, data.twist.angular.y, data.twist.angular.z])
	csvfile.close()

def twist_listener():
    rospy.init_node('vive_listener', anonymous=True)

    rospy.Subscriber('/vive/twist1', TwistStamped, twist1)
    rospy.Subscriber('/vive/twist2', TwistStamped, twist2)
    rospy.Subscriber('/vive/twist0', TwistStamped, hmd)
    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()
    


if __name__ == '__main__':
    twist_listener()
    # Close CSV files
    outcsv.close()
    outcsv2.close()



