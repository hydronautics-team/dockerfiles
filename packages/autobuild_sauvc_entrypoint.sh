#!/usr/bin/env bash
set -e

additional_packages_env_setup="/ws/additional_packages_ws/devel/setup.bash"
echo "sourcing   $additional_packages_env_setup"
source "$additional_packages_env_setup"


echo "ROS_ROOT   $ROS_ROOT"
echo "ROS_DISTRO $ROS_DISTRO"

cd sauvc && catkin_make -DCATKIN_BLACKLIST_PACKAGES="stingray_gazebo_communication"
