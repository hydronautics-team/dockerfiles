#!/usr/bin/env bash
set -e

sauvc_env_setup="/ws/additional_packages_ws/devel/setup.bash"
echo "sourcing   $sauvc_env_setup"
source "$sauvc_env_setup"

echo "ROS_ROOT   $ROS_ROOT"
echo "ROS_DISTRO $ROS_DISTRO"

exec "$@"

