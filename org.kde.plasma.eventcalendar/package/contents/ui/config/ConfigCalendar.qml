import QtQuick 2.0
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.0
import org.kde.plasma.core 2.0 as PlasmaCore
import org.kde.plasma.calendar 2.0 as PlasmaCalendar
import org.kde.plasma.components 2.0 as PlasmaComponents
import org.kde.plasma.extras 2.0 as PlasmaExtras

ColumnLayout {
    id: page
    property bool showDebug: false

    property alias cfg_month_show_border: month_show_border.checked
    property alias cfg_month_show_weeknumbers: month_show_weeknumbers.checked

    SystemPalette {
        id: palette
    }

    ColumnLayout {
        Layout.alignment: Qt.AlignTop | Qt.AlignLeft


        GroupBox {
            Layout.fillWidth: true

            RowLayout {
                Label {
                    text: "Click Date:"
                    Layout.alignment: Qt.AlignTop | Qt.AlignLeft
                }
                ColumnLayout {
                    ExclusiveGroup { id: month_date_clickGroup }
                    RadioButton {
                        text: "Scroll to event in Agenda"
                        checked: true
                        exclusiveGroup: month_date_clickGroup
                    }
                }
            }
        }

        GroupBox {
            Layout.fillWidth: true

            RowLayout {
                Label {
                    text: "DoubleClick Date:"
                    Layout.alignment: Qt.AlignTop | Qt.AlignLeft
                }
                ColumnLayout {
                    ExclusiveGroup { id: month_date_doubleclickGroup }
                    RadioButton {
                        text: "Open New Event In Browser"
                        checked: true
                        exclusiveGroup: month_date_doubleclickGroup
                    }
                }
            }
        }
        
        Item {
            width: height
            height: units.gridUnit / 2
        }
        PlasmaExtras.Heading {
            level: 2
            text: i18n("Style")
            color: palette.text
        }
        GroupBox {
            Layout.fillWidth: true
            
            ColumnLayout {
                CheckBox {
                    id: month_show_border
                    text: i18n("Show Borders")
                }
                CheckBox {
                    id: month_show_weeknumbers
                    text: i18n("Show Week Numbers")
                }
                RowLayout {
                    Label {
                        text: i18n("Event Badge:")
                        Layout.alignment: Qt.AlignTop | Qt.AlignLeft
                    }
                    ColumnLayout {
                        ExclusiveGroup { id: month_eventbadge_styleGroup }
                        RadioButton {
                            enabled: false
                            text: i18n("Theme")
                            exclusiveGroup: month_eventbadge_styleGroup
                        }
                        RadioButton {
                            enabled: false
                            text: i18n("Dots")
                            exclusiveGroup: month_eventbadge_styleGroup
                        }
                        RadioButton {
                            text: i18n("Bottom Bar")
                            checked: true
                            exclusiveGroup: month_eventbadge_styleGroup
                        }
                    }
                }
                RowLayout {
                    Label {
                        text: i18n("Selected:")
                        Layout.alignment: Qt.AlignTop | Qt.AlignLeft
                    }
                    ColumnLayout {
                        ExclusiveGroup { id: month_selected_styleGroup }
                        RadioButton {
                            enabled: false
                            text: i18n("Theme")
                            exclusiveGroup: month_selected_styleGroup
                        }
                        RadioButton {
                            text: i18n("Solid Color")
                            checked: true
                            exclusiveGroup: month_selected_styleGroup
                        }
                    }
                }
            }
        }

        
    }
}