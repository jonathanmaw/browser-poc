import QtQuick 2.0
import QtQuick.Controls 1.0

Item {
    id: root
    anchors.fill: parent

    GroupBox {
        id: groupcontrolbuttons
        title: "back()/forward()/reload()/stop()    "
        width: 4 * 130 + 3 * 20 + 3 * 10
        anchors.top: parent.top
        anchors.topMargin: 15
        anchors.left: parent.left
        anchors.leftMargin: 30

        Button {
            id: buttonback
            width: 130
            height: 40
            text: "Back"
            anchors.left: parent.left
            anchors.leftMargin: 10
            onClicked: browserinterface.goBack()
        }
        Button {
            id: buttonforward
            width: 130
            height: buttonback.height
            anchors.top: buttonback.top
            anchors.left: buttonback.right
            anchors.leftMargin: 20
            text: "Forward"
            onClicked: browserinterface.goForward()
        }
        Button {
            id: buttonreload
            width: 130
            height: buttonback.height
            anchors.top: buttonback.top
            anchors.left: buttonforward.right
            anchors.leftMargin: 20
            text: "Reload"
            onClicked: browserinterface.reload()
        }
        Button {
            id: buttonstop
            width: 130
            height: buttonback.height
            anchors.top: buttonback.top
            anchors.left: buttonreload.right
            anchors.leftMargin: 20
            text: "Stop"
            onClicked: browserinterface.stop()
        }
    }

    GroupBox {
        id: groupload
        title: "load(const QString &a_Url)"
        width: 400 + 130 + 20 + 30
        anchors.top: groupcontrolbuttons.bottom
        anchors.topMargin: 10
        anchors.left: groupcontrolbuttons.left

        TextField {
            id: inputfieldurl
            width: 400
            height: 40
            anchors.left: parent.left
            anchors.leftMargin: 10
            font.pixelSize: 16
            text: "http://"
        }
        Text {
            text: "url"
            anchors.top: inputfieldurl.bottom
            anchors.left: inputfieldurl.left
        }
        Button {
            width: 130
            height: inputfieldurl.height
            anchors.top: inputfieldurl.top
            anchors.left: inputfieldurl.right
            anchors.leftMargin: 20
            text: "Load Url"
            onClicked: browserinterface.loadurl(inputfieldurl.text)
        }
    }

    GroupBox {
        id: groupgeturl
        x: 30
        y: 198
        width: 400 + 130 + 20 + 30
        anchors.leftMargin: 0
        anchors.top: groupload.bottom
        anchors.topMargin: 10
        title: "getUrl()"
        Text {
            id: inputfieldgeturl
            width: 400
            height: 40
            text: ""
            font.pixelSize: 16
            anchors.leftMargin: 10
            anchors.left: parent.left
        }

        Button {
            width: 130
            height: inputfieldgeturl.height
            text: "Retrieve Url"
            anchors.leftMargin: 20
            anchors.top: inputfieldgeturl.top
            anchors.left: inputfieldgeturl.right
            onClicked: {
                inputfieldgeturl.text = browserinterface.getUrl()
            }
        }
        anchors.left: groupcontrolbuttons.left
    }

    GroupBox {
        id: groupgettitle
        x: 30
        y: 290
        width: 400 + 130 + 20 + 30
        anchors.leftMargin: 0
        anchors.top: groupgeturl.bottom
        anchors.topMargin: 10
        title: "getTitle()"
        Text {
            id: inputfieldgettitle
            width: 400
            height: 40
            text: ""
            font.pixelSize: 16
            anchors.leftMargin: 10
            anchors.left: parent.left
            enabled: false
        }

        Button {
            width: 130
            height: inputfieldgettitle.height
            text: "Retrieve title"
            anchors.leftMargin: 20
            anchors.top: inputfieldgettitle.top
            anchors.left: inputfieldgettitle.right
            onClicked: {
                inputfieldgettitle.text = browserinterface.getTitle()
            }
        }
        anchors.left: groupcontrolbuttons.left
    }
    GroupBox {
        id: groupcontrolbuttons2
        x: 30
        y: 392
        title: "getVisible()/getGeometry()/getContentSize()/getBrowserActionsState()    "
        width: 4 * 130 + 3 * 20 + 30
        anchors.leftMargin: 0
        anchors.top: groupgettitle.bottom
        anchors.topMargin: 10
        anchors.left: groupload.left

        Button {
            id: buttongetvisible
            width: 130
            height: 40
            anchors.left: parent.left
            anchors.leftMargin: 10
            text: "Get Visible"
            onClicked: browserinterface.getVisible()
        }

        Button {
            id: buttongetgeometry
            width: 130
            height: buttongetvisible.height
            anchors.top: buttongetvisible.top
            anchors.left: buttongetvisible.right
            anchors.leftMargin: 20
            text: "Get Geometry"
            onClicked: browserinterface.getGeometry()
        }

        Button {
            id: buttongetcontentsize
            width: 130
            height: buttongetvisible.height
            anchors.top: buttongetgeometry.top
            anchors.left: buttongetgeometry.right
            anchors.leftMargin: 20
            text: "Get ContentSize"
            onClicked: browserinterface.getContentSize()
        }

        Button {
            width: 130
            height: buttongetvisible.height
            anchors.top: buttongetgeometry.top
            anchors.left: buttongetcontentsize.right
            anchors.leftMargin: 20
            text: "Get Browser ActionState"
            onClicked: browserinterface.getBrowserActionState()
        }
    }


    GroupBox {
        id: groupsetgeometry
        title: "setGeometry(conn::brw::Rect & a_sRect)"
        width: 4 * 50 + 130 + 4 * 20 + 30
        anchors.top: groupcontrolbuttons2.bottom
        anchors.topMargin: 10
        anchors.left: groupcontrolbuttons2.left

        TextField {
            id: inputfieldx
            width: 50
            height: 40
            anchors.left: parent.left
            anchors.leftMargin: 10
            font.pixelSize: 16
            maximumLength: 3
            inputMask: "999"
            text: "0"
        }
        Text {
            text: "x"
            anchors.top: inputfieldx.bottom
            anchors.left: inputfieldx.left
        }
        TextField {
            id: inputfieldy
            width: 50
            height: inputfieldx.height
            anchors.top: inputfieldx.top
            anchors.left: inputfieldx.right
            anchors.leftMargin: 20
            font.pixelSize: 16
            maximumLength: 3
            inputMask: "999"
            text: "0"
        }
        Text {
            text: "y"
            anchors.top: inputfieldy.bottom
            anchors.left: inputfieldy.left
        }
        TextField {
            id: inputfieldwidth
            width: 50
            height: inputfieldx.height
            anchors.top: inputfieldx.top
            anchors.left: inputfieldy.right
            anchors.leftMargin: 20
            font.pixelSize: 16
            maximumLength: 4
            inputMask: "9999"
            text: "1024"
        }
        Text {
            text: "width"
            anchors.top: inputfieldwidth.bottom
            anchors.left: inputfieldwidth.left
        }
        TextField {
            id: inputfieldheight
            width: 50
            height: inputfieldx.height
            anchors.top: inputfieldx.top
            anchors.left: inputfieldwidth.right
            anchors.leftMargin: 20
            font.pixelSize: 16
            inputMask: "999"
            text: "688"
        }
        Text {
            text: "height"
            anchors.top: inputfieldheight.bottom
            anchors.left: inputfieldheight.left
        }
        Button {
            width: 130
            height: inputfieldx.height
            anchors.top: inputfieldx.top
            anchors.left: inputfieldheight.right
            anchors.leftMargin: 20
            text: "Set Geometry"
            onClicked: browserinterface.setGeometry(inputfieldx.text, inputfieldy.text, inputfieldwidth.text, inputfieldheight.text)
        }
    }

    GroupBox {
        id: groupsetvisible
        title: "setVisible(bool a_bVisible)"
        width: 70 + 130 + 20 + 30
        anchors.top: groupcontrolbuttons2.bottom
        anchors.topMargin: 10
        anchors.left: groupsetgeometry.right
        anchors.leftMargin: 10

        ComboBox {
            id: combo
            width: 70
            height: 40
            model: [ "True", "False" ]
            anchors.left: parent.left
            anchors.leftMargin: 10
        }
        Text {
            id: placeholder
            text: ""
            anchors.top: combo.bottom
            anchors.left: combo.left
        }
        Button {
            width: 130
            height: combo.height
            anchors.top: combo.top
            anchors.left: combo.right
            anchors.leftMargin: 20
            text: "Set Visible"
            onClicked: {
                if(combo.currentText == "True")
                    browserinterface.setVisible(true)
                else
                    browserinterface.setVisible(false)
            }
        }
    }

    GroupBox {
        id: groupscroll
        title: "scroll(a_eScrollDirection, a_eScrollType);"
        anchors.top: groupsetgeometry.bottom
        anchors.topMargin: 10
        anchors.left: groupsetgeometry.left

        Image {
            id: buttonleft
            anchors.top: buttonup.bottom
            source: "../../images/draw-triangle1.png"
            MouseArea {
                anchors.fill: parent
                onClicked: browserinterface.goLeft(scrolltype.currentIndex)
            }
        }
        Image {
            id: buttonright
            anchors.left: buttonup.right
            anchors.top: buttonleft.top
            source: "../../images/draw-triangle2.png"
            MouseArea {
                anchors.fill: parent
                onClicked: browserinterface.goRight(scrolltype.currentIndex)
            }
        }
        Image {
            id: buttonup
            anchors.top: parent.top
            anchors.left: buttonleft.right
            source: "../../images/draw-triangle3.png"
            MouseArea {
                anchors.fill: parent
                onClicked: browserinterface.goUp(scrolltype.currentIndex)
            }
        }
        Image {
            id: buttondown
            anchors.left: buttonleft.right
            anchors.top: buttonleft.bottom
            source: "../../images/draw-triangle4.png"
            MouseArea {
                anchors.fill: parent
                onClicked: browserinterface.goDown(scrolltype.currentIndex)
            }
        }
        ComboBox {
            id: scrolltype
            width: 120
            height: 40
            model: [ "ST_SYMBOL", "ST_PAGE", "ST_LINK" ]
            anchors.left: buttonright.right
            anchors.leftMargin: 20
            anchors.verticalCenter: parent.verticalCenter
        }
        Text {
            text: "scroll type"
            anchors.top: scrolltype.bottom
            anchors.left: scrolltype.left
        }

        Button {
            id: buttonSelect
            text: "Click"
            anchors.top: buttonup.bottom
            anchors.topMargin: 0
            anchors.bottom: buttondown.top
            anchors.bottomMargin: 0
            anchors.right: buttonright.left
            anchors.rightMargin: 0
            anchors.left: buttonleft.right
            anchors.leftMargin: 0
            onClicked: browserinterface.select();
        }
    }

    GroupBox {
        id: groupzoom
        y: 6
        anchors.left: groupscroll.right
        anchors.leftMargin: 10
        Button {
            id: buttonZoomPlus
            onClicked: {
                browserinterface.setZoomFactor(
                            browserinterface.getZoomFactor() + 0.1)
            }
            text: "+"
        }

        Button {
        id: buttonZoomMinus
        anchors.leftMargin: 10
        anchors.left: buttonZoomPlus.right
        anchors.top: buttonZoomPlus.top
        text: "-"
        onClicked: {
            browserinterface.setZoomFactor(
                        browserinterface.getZoomFactor() - 0.1)
        }
    }

        Text {
            text: "scroll type"
            anchors.leftMargin: 0
            anchors.topMargin: 0
            anchors.left: parent.left
            anchors.top: buttonZoomPlus.bottom
        }
        anchors.topMargin: 10
        anchors.top: groupsetgeometry.bottom
        title: "set/getZoomFactor(double)"
    }

    GroupBox {
        id: grouppageicon
        x: 536
        y: 543
        width: 164
        height: 150
        anchors.left: groupsetgeometry.right
        anchors.leftMargin: 66
        anchors.top: groupsetvisible.bottom
        anchors.topMargin: 10

        Image {
            id: pageiconimage
            anchors.left: parent.left
            anchors.leftMargin: 5
            anchors.right: parent.right
            anchors.rightMargin: 5
            anchors.top: parent.top
            anchors.topMargin: -1
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 32
        }

        Button {
            id: pageiconbutton
            text: "Fetch image"
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.top: pageiconimage.bottom
            anchors.topMargin: 10
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
        onClicked: {
        pageiconimage.source = browserinterface.getPageIcon("/tmp/");
}
        }
    }
}


