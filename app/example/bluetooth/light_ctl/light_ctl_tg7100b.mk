
ble = 0
bt_mesh = 0
bt_host_tinycrypt = 0

genie_vendor_timer = 1

GLOBAL_DEFINES += CONFIG_BT_RX_BUF_LEN=143
GLOBAL_DEFINES += CONFIG_BT_L2CAP_TX_MTU=135
GLOBAL_DEFINES += CONFIG_MESH_SEQ_COUNT_INT=30
GLOBAL_DEFINES += CONFIG_AIS_TOTAL_FRAME=6
GLOBAL_DEFINES += CONFIG_BT_RX_BUF_COUNT=4
GLOBAL_DEFINES += GENIE_DEFAULT_DURATION=205
tg7100b_debug_mode = 1

ifeq ($(tg7100b_debug_mode),1)
############### debug ###############
## BLE debug log general control macro (Note: still to be affected by DEBUG)
## Enable below macros if BLE stack debug needed
GLOBAL_DEFINES += CONFIG_GENIE_DEBUG_CMD
GLOBAL_DEFINES += USE_BT_MESH_CUSTOM_ERR_LOG
#GLOBAL_DEFINES += CONFIG_BT_DEBUG_LOG
#GLOBAL_DEFINES += CONFIG_BT_DEBUG

# Mesh debug message enable
#GLOBAL_DEFINES += USE_BT_MESH_CUSTOM_LOG

#GLOBAL_DEFINES += GENIE_DEBUG_COLOR
#GLOBAL_DEFINES += MESH_DEBUG_RX
#GLOBAL_DEFINES += MESH_DEBUG_TX
GLOBAL_DEFINES += MESH_DEBUG_PROV
#GLOBAL_DEFINES += CONFIG_INIT_STACKS
#GLOBAL_DEFINES += CONFIG_PRINTK

## BLE subsystem debug log control macro
## Enable below macros if component-specific debug needed
#GLOBAL_DEFINES += CONFIG_BT_DEBUG_L2CAP
#GLOBAL_DEFINES += CONFIG_BT_DEBUG_CONN
#GLOBAL_DEFINES += CONFIG_BT_DEBUG_ATT
#GLOBAL_DEFINES += CONFIG_BT_DEBUG_GATT
#GLOBAL_DEFINES += CONFIG_BT_DEBUG_HCI_DRIVER
#GLOBAL_DEFINES += CONFIG_BT_DEBUG_HCI_CORE
#GLOBAL_DEFINES += CONFIG_BT_DEBUG_CORE
#GLOBAL_DEFINES += CONFIG_BT_DEBUG_MULTI_ADV

## MESH debug log control macro
#GLOBAL_DEFINES += CONFIG_BT_MESH_DEBUG
#GLOBAL_DEFINES += CONFIG_BT_MESH_DEBUG_ADV
#GLOBAL_DEFINES += CONFIG_BT_MESH_DEBUG_BEACON
#GLOBAL_DEFINES += CONFIG_BT_MESH_DEBUG_PROXY
#GLOBAL_DEFINES += CONFIG_BT_MESH_DEBUG_PROV
#GLOBAL_DEFINES += CONFIG_BT_MESH_DEBUG_NET
#GLOBAL_DEFINES += CONFIG_BT_MESH_DEBUG_CRYPTO
#GLOBAL_DEFINES += CONFIG_BT_MESH_DEBUG_TRANS
#GLOBAL_DEFINES += CONFIG_BT_MESH_DEBUG_FRIEND
#GLOBAL_DEFINES += CONFIG_BT_MESH_DEBUG_LOW_POWER
#GLOBAL_DEFINES += CONFIG_BT_MESH_DEBUG_ACCESS
#GLOBAL_DEFINES += CONFIG_BT_MESH_DEBUG_FLASH
#GLOBAL_DEFINES += CONFIG_BT_MESH_DEBUG_MODEL
#GLOBAL_DEFINES += CONFIG_BT_MESH_DEBUG_VENDOR_MODEL
#GLOBAL_DEFINES += CONFIG_BT_MESH_DEBUG_FACTORY
#GLOBAL_DEFINES += CONFIG_BT_MESH_DEBUG_OTA
else
GLOBAL_DEFINES += CONFIG_INFO_DISABLE
endif
