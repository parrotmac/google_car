#include packages/services/Car/car_product/occupant_awareness/OccupantAwareness.mk

SELINUX_IGNORE_NEVERALLOWS := true

BOARD_PLAT_PUBLIC_SEPOLICY_DIR += device/google_car/crosshatch_car/sepolicy/generic/public
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += device/google_car/crosshatch_car/sepolicy/generic/private
BOARD_SEPOLICY_DIRS += device/google_car/crosshatch_car/sepolicy/generic
