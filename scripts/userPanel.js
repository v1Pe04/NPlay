function userPanel() {
    var id = document.getElementById("userPanel")
    if (id.style.display === "block" ) {
        id.style.display = "none";
    } else {
        id.style.display = "block"
        id.style.animation = "userPanel 300ms ease";
    }
}