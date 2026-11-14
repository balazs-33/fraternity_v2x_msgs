# One received CAM (ETSI EN 302 637-2), physical units.
# Unavailable floating point values are NaN.

uint8 DRIVE_FORWARD = 0
uint8 DRIVE_BACKWARD = 1
uint8 DRIVE_UNAVAILABLE = 2

std_msgs/Header header                 # stamp: reception time
uint32 station_id
uint8 station_type                     # 5 passenger car, 6 bus, 15 road side unit, ...
uint16 generation_delta_time           # [ms], modulo 65536

float64 latitude                       # [deg]
float64 longitude                      # [deg]
float64 altitude                       # [m]
float64 position_semi_major            # 95% confidence ellipse [m]
float64 position_semi_minor            # [m]
float64 position_semi_major_orientation  # from north, clockwise [deg]

bool has_vehicle_data                  # false for non-vehicle stations (e.g. RSU)
float64 heading                        # from north, clockwise [deg]
float64 speed                          # [m/s], non-negative
uint8 drive_direction
float64 length                         # [m]
float64 width                          # [m]
float64 longitudinal_acceleration      # [m/s^2]
float64 yaw_rate                       # [deg/s]
int8 lane_position                     # ETSI LanePosition, -2 if not present

bool emergency_brake                   # accelerationControl: emergencyBrakeEngaged
uint8 vehicle_role                     # 0 default, 5 emergency, ...
bool light_bar_siren
