cmake_minimum_required(VERSION 3.14)
project(fraternity_v2x_msgs)

find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(builtin_interfaces REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(std_msgs REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/CamVehicle.msg"
  "msg/DenmEvent.msg"
  "msg/ClassifiedVehicle.msg"
  "msg/ClassifiedVehicles.msg"
  DEPENDENCIES builtin_interfaces geometry_msgs std_msgs
)

ament_export_dependencies(rosidl_default_runtime)
ament_package()
