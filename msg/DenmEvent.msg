# One received DENM (ETSI EN 302 637-3).
# Unavailable floating point values are NaN.

uint8 CAUSE_DANGEROUS_SITUATION = 99
uint8 SUB_CAUSE_EMERGENCY_ELECTRONIC_BRAKE = 1

std_msgs/Header header                 # stamp: reception time
uint32 station_id
int64 sequence_number
int32 cause_code
int32 sub_cause_code
bool is_eebl

float64 latitude                       # [deg]
float64 longitude                      # [deg]
int64 detection_time                   # [ms] since 2004-01-01T00:00:00Z
int64 reference_time                   # [ms] since 2004-01-01T00:00:00Z
uint8 station_type
int32 validity_duration                # [s]
float64 event_speed                    # [m/s]
float64 event_heading                  # from north, clockwise [deg]
int8 information_quality               # 0-7, -1 if no situation container
