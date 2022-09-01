#!/usr/bin/env bash
set -e

additional_packages_env_setup="/ws/additional_packages_ws/devel/setup.bash"
echo "sourcing   $additional_packages_env_setup"
source "$additional_packages_env_setup"
sauvc_env_setup="/sauvc/devel/setup.bash"
echo "sourcing   $sauvc_env_setup"
source "$sauvc_env_setup"

echo "ROS_ROOT   $ROS_ROOT"
echo "ROS_DISTRO $ROS_DISTRO"

roslaunch sauvc_startup sauvc_master.launch qr_launch:=true

