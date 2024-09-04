# docker_gazebo_jazzy

# launch docker :
./launch.sh

# inside : 
terminator

# divide terminal
# terminal 1
ros2 launch rover_gz_bringup world_gz.launch.py

# terminal 2
ros2 launch rover_gz_bringup spawn_wheel4Diff.launch.py 
or
ros2 launch rover_gz_bringup spawn_LeoRoverERC.launch.py 
or
ros2 launch rover_gz_bringup spawn_ScoutAGX.launch.py

# For each the robot is spawning BUT : the sensors are not working / the teleop is working only for LeoRover 
