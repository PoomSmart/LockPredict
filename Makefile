GO_EASY_ON_ME = 1
TARGET = iphone:latest:7.0
ARCHS = armv7 armv7s arm64

include theos/makefiles/common.mk

TWEAK_NAME = LockPredict
LockPredict_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk
