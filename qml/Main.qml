import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Window
import QtQuick.Controls.Material

import io.qt.textproperties 1.0

ApplicationWindow {
    id: page
    width: 320
    height: 512
    visible: true
    Material.theme: Material.Dark
    Material.accent: Material.Teal
    title: "Calculator"
    //Material.background: "#1c1c5b"

    Bridge {
        id: bridge
    }
    Text {
        id: numstr
        text: ""
        font.pointSize: 42
        font.family: "Menlo"
        color: "#C3C3C3"
        anchors.topMargin: 40
        anchors.fill: parent
        anchors.margins: 20

        horizontalAlignment: Qt.AlignRight

        focus:true
        
        
        Keys.onPressed: (event)=> {
            
            
            if (event.key == Qt.Key_0) 
                numstr.text = bridge.append(numstr.text, zero.text)

            if (event.key == Qt.Key_1) 
                numstr.text = bridge.append(numstr.text, one.text)

            if (event.key == Qt.Key_2) 
                numstr.text = bridge.append(numstr.text, two.text)

            if (event.key == Qt.Key_3) 
                numstr.text = bridge.append(numstr.text, three.text)

            if (event.key == Qt.Key_4) 
                numstr.text = bridge.append(numstr.text, four.text)

            if (event.key == Qt.Key_5) 
                numstr.text = bridge.append(numstr.text, five.text)

            if (event.key == Qt.Key_6) 
                numstr.text = bridge.append(numstr.text, six.text)

            if (event.key == Qt.Key_7) 
                numstr.text = bridge.append(numstr.text, seven.text)

            if (event.key == Qt.Key_8) 
                numstr.text = bridge.append(numstr.text, eight.text)

            if (event.key == Qt.Key_9) 
                numstr.text = bridge.append(numstr.text, nine.text)

            if (event.key == Qt.Key_Backspace) 
                numstr.text = bridge.pop(numstr.text)

            if (event.key == Qt.Key_Plus)
                numstr.text = bridge.append(numstr.text, add.text)

            if (event.key == Qt.Key_Minus)
                numstr.text = bridge.append(numstr.text, sub.text)

            if (event.key == Qt.Key_Asterisk)
                numstr.text = bridge.append(numstr.text, mul.text)

            if (event.key == Qt.Key_Slash)
                numstr.text = bridge.append(numstr.text, div.text)
            
            if (event.key == Qt.Key_ParenLeft)
                numstr.text = bridge.append(numstr.text, left_par.text)
                
            if (event.key == Qt.Key_ParenRight)
                numstr.text = bridge.append(numstr.text, right_par.text)

            if (event.key == Qt.Key_Equal || event.key == 16777220/*this is enter key. i dont know why enter key is not working */) 
                numstr.text = bridge.eval(numstr.text)
            
            if (event.key == Qt.Key_C)
                numstr.text = ""
            
            if (event.key == Qt.Key_Period)
                numstr.text = bridge.append(numstr.text, dot.text)
            
            
            

            //event.accepted = true
            
        }
        
        
        
    }

    GridLayout {
        id: grid
        anchors.fill: parent

        anchors.margins: 20
        Layout.alignment: Qt.AlignHCenter
        anchors.bottomMargin: 20
        rows: 5
        columns: 4
        columnSpacing: 5
        rowSpacing: 5
        ColumnLayout {
            id: left0
            Button {
                id: left_par
                text: "("
                onClicked: {
                    numstr.text = bridge.append(numstr.text, left_par.text);
                }
            }

            Button {
                id: seven
                text: "7"
                onClicked: {
                    numstr.text = bridge.append(numstr.text, seven.text);
                }
            }
            Button {
                id: four
                text: "4"
                
                onClicked: {
                    
                    numstr.text = bridge.append(numstr.text, four.text);
                }
            }
            Button {
                id: one
                text: "1"
                onClicked: {
                    numstr.text = bridge.append(numstr.text, one.text);
                }
            }
            Button {
                id: dot
                text: "."
                onClicked: {
                    numstr.text = bridge.append(numstr.text, dot.text);
                }
            }
            Layout.alignment: Qt.AlignBottom
        }
        ColumnLayout {
            id: left1
            Button {
                id: right_par
                text: ")"
                onClicked: {
                    numstr.text = bridge.append(numstr.text, right_par.text);
                }
            }
            Button {
                id: eight
                text: "8"
                onClicked: {
                    numstr.text = bridge.append(numstr.text, eight.text);
                }
            }
            Button {
                id: five
                text: "5"
                onClicked: {
                    numstr.text = bridge.append(numstr.text, five.text);
                }
            }
            Button {
                id: two
                text: "2"
                onClicked: {
                    numstr.text = bridge.append(numstr.text, two.text);
                }
            }
            Button {
                id: zero
                text: "0"
                onClicked: {
                    numstr.text = bridge.append(numstr.text, zero.text);
                }
            }
            Layout.alignment: Qt.AlignBottom
        }
        ColumnLayout {
            id: left2
            Button {
                id: ac
                text: "AC"
                highlighted: true
                onClicked: {
                    numstr.text = "";
                }
            }
            Button {
                id: nine
                text: "9"
                onClicked: {
                    numstr.text = bridge.append(numstr.text, nine.text);
                }
            }
            Button {
                id: six
                text: "6"
                onClicked: {
                    numstr.text = bridge.append(numstr.text, six.text);
                }
            }
            Button {
                id: three
                text: "3"
                onClicked: {
                    numstr.text = bridge.append(numstr.text, three.text);
                }
            }
            Button {
                id: eq
                text: "="
                highlighted: true
                onClicked: {
                    numstr.text = bridge.eval(numstr.text);
                }
            }
            

            Layout.alignment: Qt.AlignBottom
        }
        ColumnLayout {
            id: column3
            Button {
                id: rm
                icon.source: "../assets/arrow_back_24dp_E3E3E3_FILL0_wght400_GRAD0_opsz24.svg"
                highlighted: true
                onClicked: {
                    numstr.text = bridge.pop(numstr.text);
                }
            }
            Button {
                id: div
                text: "/"
                onClicked: {
                    numstr.text = bridge.append(numstr.text, div.text);
                }
            }
            Button {
                id: mul
                text: "*"
                onClicked: {
                    numstr.text = bridge.append(numstr.text, mul.text);
                }
            }
            Button {
                id: sub
                text: "-"
                onClicked: {
                    numstr.text = bridge.append(numstr.text, sub.text);
                }
            }
            Button {
                id: add
                text: "+"
                onClicked: {
                    numstr.text = bridge.append(numstr.text, add.text);
                }
            }
            Layout.alignment: Qt.AlignBottom
        }
    }
}
