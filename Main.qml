import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Material

ApplicationWindow {
    visible: true
    width: 400
    height: 400
    title: "Menu Principal"
    font.bold: true

    StackView {
        id: stackView
        anchors.fill: parent

        initialItem: mainPage // Página inicial

        Component {
            id: mainPage

            Rectangle {
                color: Material.color(Material.Amber)
                width: 400
                height: 400

                Column {
                    anchors.centerIn: parent
                    spacing: 20

                    Text {
                        text: "Configuração de Rede"
                        font.bold: true
                        font.pointSize: 16
                        anchors.horizontalCenter: parent.horizontalCenter
                    }

                    Button {
                        text: "Endereço IP"
                        width: 200
                        height: 50
                        Material.elevation: 50
                        onClicked: {
                            stackView.push(ipPage)
                        }
                    }

                    Button {
                        text: "Wireless"
                        width: 200
                        height: 50
                        Material.elevation: 50
                        onClicked: {
                            stackView.push(wirelessPage)
                        }
                    }

                    Button {
                        text: "Posto"
                        width: 200
                        height: 50
                        Material.elevation: 50
                        onClicked: {
                            stackView.push(postoPage)
                        }
                    }

                    Button {
                        text: "Opções"
                        width: 200
                        height: 50
                        Material.elevation: 50
                        onClicked: {
                            stackView.push(opcoesPage)
                        }
                    }
                }
            }
        }

        Component {
            id: ipPage

            Rectangle {
                color: Material.color(Material.Amber)
                width: 400
                height: 400

                Column {
                    anchors.centerIn: parent
                    spacing: 20

                    Text {
                        text: "Endereço IP"
                        font.bold: true
                        font.pointSize: 16
                        anchors.horizontalCenter: parent.horizontalCenter
                    }

                    Row {
                        spacing: 20
                        Label {
                            text: "Conexão"
                            width: 120
                            height: 50
                        }
                        TextField {
                            placeholderText: "Conexão"
                            width: 200
                            height: 40
                        }
                    }

                    Row {
                        spacing: 20
                        Label {
                            text: "Máscara de Rede"
                            width: 120
                            height: 50
                        }
                        TextField {
                            placeholderText: "Máscara de Rede"
                            width: 200
                            height: 40
                        }
                    }

                    Row {
                        spacing: 20
                        Label {
                            text: "Router"
                            width: 120
                            height: 50
                        }
                        TextField {
                            placeholderText: "Router"
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

        Component {
            id: wirelessPage

            Rectangle {
                color: Material.color(Material.Amber)
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





