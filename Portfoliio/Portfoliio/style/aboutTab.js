
var tablinks = document.getElementsByClassName("tab");
var tabcontents = document.getElementsByClassName("tab-contents");
function opentab(tabname) {
    for (tablink of tablinks) {
        tablink.classList.remove("active-link");
    }
    for (tabcontent of tabcontents) {
        tabcontent.classList.remove("active-tab");
    }
    event.currentTarget.classList.add("active-link");
    document.getElementById(tabname).classList.add("active-tab");
}

// side navigation bar
var sidenav1 = document.querySelector('.navbar ul');
function closebar() {
    sidenav1.style.display = "none";
    console.log("HOLA");
}
function openbar() {
    sidenav1.style.display = "flex";
    console.log("Vola");
}
