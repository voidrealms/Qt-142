import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Controls 1.3

Window {
    visible: true
    width: 500
    height: 500
    color: white

    Slider {
        id: slide
        width: parent.width
        minimumValue: 0
        maximumValue: 360
        value: 0
        enabled: true
        onValueChanged: {
            recCenter.rotation = slide.value
        }
    }

    /*
    MouseArea {
        anchors.fill: parent
        onClicked: {
            recCenter.width = parent.width / 4
            recCenter.height = parent.height / 4
        }
    }

    */

    Rectangle {
        id: recCenter
        width: parent.width / 2
        height: parent.height / 2
        color: "green"
        anchors.centerIn: parent

        Greenbox {
            id: recTopLeft
            anchors.right:  recCenter.left
            anchors.bottom:  recCenter.top
        }

        Greenbox {
            id: recLeft
            anchors.right:  recCenter.left
            anchors.verticalCenter: recCenter.verticalCenter
        }







  Greenbox {
      id: recLeftBottom
      anchors.right:  recCenter.left
      anchors.top: recCenter.bottom
  }

  Greenbox {
      id: recTopCenter
      anchors.horizontalCenter: recCenter.horizontalCenter
      anchors.bottom: recCenter.top
  }

  Greenbox {
      id: recTopRight
      anchors.left: recCenter.right
      anchors.bottom: recCenter.top
  }

  Greenbox {
      id: recRight
      anchors.left: recCenter.right
      anchors.verticalCenter: recCenter.verticalCenter
  }

  Greenbox {
      id: recBottom
      anchors.horizontalCenter: recCenter.horizontalCenter
      anchors.top: recCenter.bottom
  }

  Greenbox {
      id: recBottomRight
      anchors.left: recCenter.right
      anchors.top: recCenter.bottom
  }

  Greenbox {
      id: recMiddle
      anchors.centerIn: recCenter
  }

  }
}
