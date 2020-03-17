NAME := tc825x

$(NAME)_TYPE := kernel
$(NAME)_MBINS_TYPE   := kernel
SUPPORT_MBINS 	     := no
MODULE               := tc8258
HOST_ARCH            := tc32
HOST_MCU_FAMILY      := tc32_825x
SUPPORT_BINS         := no
CHIP_TYPE            :=CHIP_TYPE_8258
RAM_RET_TYPE         :=MCU_STARTUP_8258_RET_16K

GLOBAL_INCLUDES += .

bt_controller := 1

GLOBAL_DEFINES += STDIO_UART=0 CONFIG_NO_TCPIP BOARD_TC825X CONFIG_GPIO_AS_PINRESET FLOAT_ABI_HARD NRF52832_XXAA CONFIG_SOC_SERIES_NRF52X CONFIG_CLOCK_CONTROL_NRF5_K32SRC_250PPM=y CONFIG_BOARD_NRF52832_PCA10040=1

CONFIG_SYSINFO_PRODUCT_MODEL := ALI_AOS_TC8258
CONFIG_SYSINFO_DEVICE_NAME   := BOARD@8258

$(NAME)_SOURCES := board.c

GLOBAL_CFLAGS += -DSYSINFO_OS_VERSION=\"$(CONFIG_SYSINFO_OS_VERSION)\"
GLOBAL_CFLAGS += -DSYSINFO_PRODUCT_MODEL=\"$(CONFIG_SYSINFO_PRODUCT_MODEL)\"
GLOBAL_CFLAGS += -DSYSINFO_DEVICE_NAME=\"$(CONFIG_SYSINFO_DEVICE_NAME)\"
GLOBAL_CFLAGS += -ffunction-sections -fdata-sections

# Define default component testcase set
ifeq (, $(findstring yts, $(BUILD_STRING)))
GLOBAL_DEFINES += RHINO_CONFIG_WORKQUEUE=1
TEST_COMPONENTS += basic api wifi_hal rhino kv yloop alicrypto cjson hashtable
else
GLOBAL_DEFINES += RHINO_CONFIG_WORKQUEUE=0
endif