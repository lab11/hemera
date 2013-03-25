COMPONENT=HemeraSamplerC

#CFLAGS += -DCC2420_NO_ADDRESS_RECOGNITION

CFLAGS += -DCC2420_DEF_CHANNEL=19

# RPL
PFLAGS += -DRPL_ROUTING -DRPL_STORING_MODE
#PFLAGS += -DRPL_OF_MRHOF

# Include other stuff...
# PFLAGS += -I../../tos/chips/bh17
#PFLAGS += -I../../tos/platforms/hemera/chips/bh17
# tell the 6lowpan layer to not generate hc-compressed headers
# PFLAGS += -DLIB6LOWPAN_HC_VERSION=-1

# if you're using DHCP, set this to try and derive a 16-bit address
# from the IA received from the server.  This will work if the server
# gives out addresses from a /112 prefix.  If this is not set, blip
# will only use EUI64-based link addresses.
#PFLAGS += -DBLIP_DERIVE_SHORTADDRS

# this disables dhcp and statically chooses a prefix.  the motes form
# their ipv6 address by combining this with TOS_NODE_ID
#PFLAGS += -DIN6_PREFIX=\"2607:f018:8000:bbba::\"

# the sleep interval needs to be set the same for all participating devices
#CFLAGS += -DLOW_POWER_LISTENING -DLPL_SLEEP_INTERVAL=512 -DLPL_DEF_LOCAL_WAKEUP=512 -DLPL_DEF_REMOTE_WAKEUP=512
# also modifiy blip's L2 parameters to reduce media overload
#CFLAGS += -DBLIP_L2_RETRIES=5 -DBLIP_L2_DELAY=128

# Set the address and port to send the packets to
CFLAGS += -DRECEIVER_ADDR=\"2001:470:1f10:131c::2\"
CFLAGS += -DRECEIVER_PORT=2001

#CFLAGS += -DENABLE_LEAF_NODES
#PFLAGS += -DUSE_TESTIO

# Temperature, humidity, and light sample period
#CFLAGS += -DTHL_SAMPLE_PERIOD=60000
CFLAGS += -DTHL_SAMPLE_PERIOD=1000

# Whether or not to use the LEDs
CFLAGS += -DUSE_LEDS

# Uncomment this to disable the motion sensor interrupt while sampling the other
# sensors.
CFLAGS += -DPAUSE_MOTION

#PFLAGS += -DBINARY_SHELL
#PFLAGS += -DBLIP_REMOVE_PING
#PFLAGS += -DBLIP_MINI_SHELL

# Enable the watchdog timer and use a timer to pet it every second
#PFLAGS += -DUSE_WATCHDOG

#PFLAGS += -DPRINTFUART_ENABLED

#PFLAGS += -DUSE_LOGGING

include $(MAKERULES)
