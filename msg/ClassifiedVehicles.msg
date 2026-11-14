# CAM vehicles around the ego, grouped by lane and position.
# Each list is sorted by distance from the ego, closest first.

std_msgs/Header header
geometry_msgs/Pose ego_pose            # ego vehicle center, map frame
int64[] ego_lanelet_ids

ClassifiedVehicle[] same_lane_ahead
ClassifiedVehicle[] same_lane_behind
ClassifiedVehicle[] other_lane_ahead
ClassifiedVehicle[] other_lane_beside
ClassifiedVehicle[] other_lane_behind
