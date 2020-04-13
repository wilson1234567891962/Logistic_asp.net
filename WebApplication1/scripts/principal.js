function applyStyle(item, itemOne, itemTwo, itemThree) {

    var element = document.getElementById(item);
    element.classList.add("active");
    resetStyles(itemOne, itemTwo, itemThree)
}

function hideOrShowContainer(item, itemOne, itemTwo, itemThree) {

    var container = document.getElementById(item);
    container.classList.remove("hide");
    container.classList.add("show");
    hideItem(itemOne, itemTwo, itemThree)
}

function hideItem(itemOne, itemTwo, itemThree) {
    var one = document.getElementById(itemOne);
    var two = document.getElementById(itemTwo);
    var three = document.getElementById(itemThree);
    one.classList.remove("show");
    two.classList.remove("show");
    three.classList.remove("show");
    one.classList.add("hide");
    two.classList.add("hide");
    three.classList.add("hide");
}

function resetStyles(itemOne, itemTwo, itemThree) {
    var one = document.getElementById(itemOne);
    var two = document.getElementById(itemTwo);
    var three = document.getElementById(itemThree);
    one.classList.remove("active");
    two.classList.remove("active");
    three.classList.remove("active");
}

function showPopUp() {
    var modal = document.getElementById('myModal');
    modal.style.display = "block";
}

function hidePopUP() {
    var modal = document.getElementById('myModal');
    modal.style.display = "none";
}

function disabledOption(itemOne, itemTwo) {
    var one = document.getElementById(itemOne);
    var two = document.getElementById(itemTwo);
    one.classList.remove("show");
    two.classList.remove("show");
    one.classList.add("hide");
    two.classList.add("hide");
}

function enabledItem(itemOne) {
    var one = document.getElementById(itemOne);
    one.classList.remove("hide");
    one.classList.add("show");
}

function hideRegister() {
    var name = document.getElementById('NAME_CLIENT');
    var surname = document.getElementById('SURNAME_CLIENT');
    var age = document.getElementById('AGE_CLIENT');
    var occupation = document.getElementById('OCCUPATION_CLIENT');
    name.classList.remove("show");
    name.classList.add("hide");
    surname.classList.remove("show");
    surname.classList.add("hide");
    age.classList.remove("show");
    age.classList.add("hide");
    occupation.classList.remove("show");
    occupation.classList.add("hide");
}

function hideIdRegister() {
    var id = document.getElementById('ID_CLIENT');
    id.classList.remove("show");
    id.classList.add("hide");
}

function resetPopUpStates() {
    var id = document.getElementById('ID_CLIENT');
    var name = document.getElementById('NAME_CLIENT');
    var surname = document.getElementById('SURNAME_CLIENT');
    var age = document.getElementById('AGE_CLIENT');
    var occupation = document.getElementById('OCCUPATION_CLIENT');
    id.classList.remove("hide");
    id.classList.add("show");
    name.classList.remove("hide");
    name.classList.add("show");
    surname.classList.remove("hide");
    surname.classList.add("show");
    age.classList.remove("hide");
    age.classList.add("show");
    occupation.classList.remove("hide");
    occupation.classList.add("show");
}

function resetFields() {
    var id = document.getElementById('ID_EMPLOYMENT');
    var name = document.getElementById('NAME_EMPLOYMENT');
    var surname = document.getElementById('SURNAME_EMPLOYMENT');
    var age = document.getElementById('AGE_EMPLOYMENT');
    var occupation = document.getElementById('OCCUPATION_EMPLOYMENT');
    id.value = "";
    name.value = "";
    surname.value = "";
    age.value = "";
    occupation.value = "";
}