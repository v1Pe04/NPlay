/*
NibbaPlay by Bitchboy IT
+-----------------------------------------------------+
|   _   _ _ _     _           _____  _                |
|  | \ | (_) |   | |         |  __ \| |               |
|  |  \| |_| |__ | |__   __ _| |__) | | __ _ _   _    |
|  | . ` | | '_ \| '_ \ / _` |  ___/| |/ _` | | | |   |
|  | |\  | | |_) | |_) | (_| | |    | | (_| | |_| |   |
|  |_| \_|_|_.__/|_.__/ \__,_|_|    |_|\__,_|\__, |   |
|                                             __/ |   |
|                                            |___/    |
+-------------===[ File Specifications ]===-----------+
|                                                     |
| Build Number:           1.0.0                       |
| Build on Website        1.0.0                       |
| File Name:              userPanel.js                |
| Created By:             NuutXD                      |
| Last Edited By:         NuutXD                      |
| Languages:                                          |
|  - JavaScript                                       |
|                                                     |
+-----------------------------------------------------+
*/

function userPanel() {
    var id = document.getElementById("userPanel")
    if (id.style.display === "block" ) {
        id.style.display = "none";
    } else {
        id.style.display = "block";
        id.style.animation = "userPanel 300ms ease";
    }
}