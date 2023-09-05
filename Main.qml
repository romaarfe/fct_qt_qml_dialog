import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Material

ApplicationWindow {
    visible: true
    width: 400
    height: 400
    title: "The Walking Dead"
    font.bold: true

    function generateRandomNumber(min, max) {
       return Math.floor(Math.random() * (max - min + 1)) + min;
    }

    StackView {
        id: stackView
        anchors.fill: parent

        initialItem: mainPage

        Component {
            id: mainPage

            Rectangle {
                color: Material.color(Material.Red)
                width: 400
                height: 400

                Column {
                    anchors.centerIn: parent
                    spacing: 20

                    Text {
                        text: "Random Character Creation"
                        font.bold: true
                        font.pointSize: 16
                        anchors.horizontalCenter: parent.horizontalCenter
                    }

                    Button {
                        text: "The Criminal"
                        width: 200
                        height: 50
                        Material.elevation: 50
                        anchors.horizontalCenter: parent.horizontalCenter
                        onClicked: {
                            stackView.push(theCriminal)
                        }
                    }

                    Button {
                        text: "The Nobody"
                        width: 200
                        height: 50
                        Material.elevation: 50
                        anchors.horizontalCenter: parent.horizontalCenter
                        onClicked: {
                            stackView.push(theNobody)
                        }
                    }

                    Button {
                        text: "The Scientist"
                        width: 200
                        height: 50
                        Material.elevation: 50
                        anchors.horizontalCenter: parent.horizontalCenter
                        onClicked: {
                            stackView.push(theScientist)
                        }
                    }

                    Button {
                        text: "The Soldier"
                        width: 200
                        height: 50
                        Material.elevation: 50
                        anchors.horizontalCenter: parent.horizontalCenter
                        onClicked: {
                            stackView.push(theSoldier)
                        }
                    }
                }
            }
        }

        Component {
            id: theCriminal

            Rectangle {
                color: Material.color(Material.Red)
                width: 400
                height: 400

                Column {
                    anchors.centerIn: parent
                    spacing: 20

                    Label {
                        width: 100
                        height: 50
                        text: "Key Attribute: Strength"
                        font.bold: true
                        font.pointSize: 16
                    }

                    Label {
                        width: 100
                        height: 50
                        text: "Key Skill: Close Combat"
                        font.bold: true
                        font.pointSize: 16
                    }

                    Label {
                        property string criminalTalentName: ""

                        id: labelCriminal
                        width: 100
                        height: 50
                        text: "Talent: " + labelCriminal.criminalTalentName
                        font.bold: true
                        font.pointSize: 16
                    }

                    Button {
                        property int criminalTalentNumber: generateRandomNumber(1, 3);

                        text: "Random Talent"
                        onClicked: {
                            switch (criminalTalentNumber) {
                                case 1:
                                    labelCriminal.criminalTalentName = "Threatening Posture"
                                    break;

                                case 2:
                                    labelCriminal.criminalTalentName = "Fixer"
                                    break;

                                case 3:
                                    labelCriminal.criminalTalentName = "Fights Dirty"
                                    break;
                            }
                        }
                    }




//                    Row {
//                        anchors.horizontalCenter: parent.horizontalCenter
//                        spacing: 10

//                        Button {
//                            text: "Salvar"
//                            onClicked: {
//                                // Lógica para salvar as configurações de rede aqui
//                                // Você pode acessar os valores dos textboxes usando textfield1.text, textfield2.text, etc.
//                            }
//                        }

//                        Button {
//                            text: "Cancelar"
//                            onClicked: {
//                                stackView.pop()
//                            }
//                        }
//                    }
                }
            }
        }

        Component {
            id: wirelessPage

            Rectangle {
                color: Material.color(Material.Red)
                width: 400
                height: 400

                Column {
                    anchors.centerIn: parent
                    spacing: 20

                    Text {
                        text: "Wireless"
                        font.bold: true
                        font.pointSize: 16
                        anchors.horizontalCenter: parent.horizontalCenter
                    }

                    Row {
                        spacing: 20
                        Label {
                            text: "WiFi SSID"
                            width: 120
                            height: 50
                        }
                        TextField {
                            placeholderText: "WiFi SSID"
                            width: 200
                            height: 40
                        }
                    }

                    Row {
                        spacing: 20
                        Label {
                            text: "Segurança"
                            width: 120
                            height: 50
                        }
                        TextField {
                            placeholderText: "Segurança"
                            width: 200
                            height: 40
                        }
                    }

                    Row {
                        spacing: 20
                        Label {
                            text: "Chave WPA"
                            width: 120
                            height: 50
                        }
                        TextField {
                            placeholderText: "Chave WPA"
                            width: 200
                            height: 40
                        }
                    }
                    Row {
                        spacing: 20
                        Label {
                            text: "Endereço IP"
                            width: 120
                            height: 50
                        }
                        TextField {
                            placeholderText: "Endereço IP"
                            width: 200
                            height: 40
                        }
                    }

                    Row {
                        anchors.horizontalCenter: parent.horizontalCenter
                        spacing: 10

                        Button {
                            text: "Salvar"
                            onClicked: {
                                // Lógica para salvar as configurações de rede aqui
                                // Você pode acessar os valores dos textboxes usando textfield1.text, textfield2.text, etc.
                            }
                        }

                        Button {
                            text: "Cancelar"
                            onClicked: {
                                stackView.pop()
                            }
                        }
                    }
                }
            }
        }
    }
}





