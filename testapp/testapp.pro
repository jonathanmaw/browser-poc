#-------------------------------------------------
#
# Project created by QtCreator 2013-06-26T15:54:07
#
#-------------------------------------------------

QT       += dbus qml quick

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += debug qt

TARGET = testapp
TEMPLATE = app

my_dbus_interfaces.files += ../common/IBookmarkManager.xml \
    ../common/IUserInput.xml \
    ../common/IWebPageWindow.xml \
    ../common/IBrowser.xml \
    ../common/INetworkManager.xml
my_dbus_interfaces.header_flags = -i ../common/browserdefs.h

my_dbus_interfaces.files += ../common/ICacheManager.xml
my_dbus_interfaces.header_flags = -i ../common/browserdefs.h

my_dbus_interfaces.files += ../common/IErrorLogger.xml
my_dbus_interfaces.header_flags += -l errorlogger -i ../browser/errorlogger.h -i ../common/browserdefs.h

DBUS_INTERFACES += my_dbus_interfaces

include(../common/common.pri)

SOURCES +=  main.cpp \
            ../common/cachemanagerdbus.cpp \
            ../common/errorloggerdbus.cpp

HEADERS += ../common/cachemanagerdbus.h \
           ../common/browserdefs.h \
           ../common/errorloggerdbus.h

OTHER_FILES += \
    qml/testapp/main.qml \
    qml/testapp/UserInput.qml \
    qml/testapp/Browser.qml \
    qml/testapp/BookmarkManager.qml \
    qml/testapp/WebPageWindow.qml \
    qml/testapp/CacheManager.qml \
    qml/testapp/ErrorLogger.qml

_T = $$(TARGET_ROOT)
!isEmpty(_T) {
    target_root = $$(TARGET_ROOT)
} else {
    target_root = /usr/lib/browser-poc
}

testapp.files = testapp \
                qml \
                images
testapp.path = $$target_root/testapp
INSTALLS += testapp
