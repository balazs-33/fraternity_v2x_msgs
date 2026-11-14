# One vehicle known from CAM, placed relative to the ego.

uint32 station_id
uint8 label                            # autoware_perception_msgs/ObjectClassification
builtin_interfaces/Time stamp          # CAM generation time

geometry_msgs/Pose pose                # vehicle center, map frame
bool heading_valid
float64 length                         # [m]
float64 width                          # [m]
float64 velocity                       # [m/s], negative when reversing
float64 acceleration                   # [m/s^2], negative when braking
bool emergency_brake
bool emergency_vehicle

int64[] lanelet_ids                    # two entries when straddling a lane boundary
int8 lane_offset                       # 0 ego lane, +1 left, -1 right
float64 distance                       # along the lane, center to center, ahead positive [m]
float64 gap                            # bumper to bumper, negative when overlapping [m]
