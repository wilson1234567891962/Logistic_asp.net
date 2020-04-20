function applyStyle(item, itemOne, itemTwo) {

    var element = document.getElementById(item);
    element.classList.add("active");
    resetStyles(itemOne, itemTwo)
}

function hideOrShowContainer(item, itemOne, itemTwo) {

    var container = document.getElementById(item);
    container.classList.remove("hide");
    container.classList.add("show");
    hideItem(itemOne, itemTwo)
}

function hideItem(itemOne, itemTwo) {
    var one = document.getElementById(itemOne);
    var two = document.getElementById(itemTwo);
    one.classList.remove("show");
    two.classList.remove("show");
    one.classList.add("hide");
    two.classList.add("hide");
}

function resetStyles(itemOne, itemTwo) {
    var one = document.getElementById(itemOne);
    var two = document.getElementById(itemTwo);
    one.classList.remove("active");
    two.classList.remove("active");
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

function disabledButton(id) {
    document.getElementById(id).disabled = true;
    document.getElementById(id).classList.remove("btn-disabled");
    document.getElementById(id).classList.add("btn-disabled");
}

function enabledButton(id) {
    document.getElementById(id).disabled = false;
    document.getElementById(id).classList.remove("btn-disabled");
}

function checkItem() {
    var id = document.getElementById('ID_EMPLOYMENT');
    var name = document.getElementById('NAME_EMPLOYMENT');
    var surName = document.getElementById('SURNAME_EMPLOYMENT');
    var age = document.getElementById('AGE_EMPLOYMENT');
    var occupation = document.getElementById('OCCUPATION_EMPLOYMENT');

    if (document.getElementById('UPDATE_REGISTER').classList.contains('show')) {
        if (isNotEmpty(id.value, 999999999999) && isNotEmpty(name.value, name.maxLength) && isNotEmpty(surName.value, surName.maxLength)
            && isNotEmpty(age.value, 100) && isNotEmpty(occupation.value, occupation.maxLength)) {
            enabledButton('btnUpdate');
        } else {
            disabledButton('btnUpdate')
        }
        return;
    }

    if (document.getElementById('INSERTE_REGISTER').classList.contains('show')) {
        if (isNotEmpty(name.value, name.maxLength) && isNotEmpty(surName.value, surName.maxLength)
            && isNotEmpty(age.value, 100) && isNotEmpty(occupation.value, occupation.maxLength)) {
            enabledButton('btnInsert');
        } else {
            disabledButton('btnInsert')
        }
        return;
    }

    if (document.getElementById('DELETE_REGISTER').classList.contains('show')) {
        if (isNotEmpty(id.value, 999999999999)) {
            enabledButton('btnDelete');
        } else {
            disabledButton('btnDelete')
        }
        return;
    }
}

function isNotEmpty(id, size) {
    return (id !== '' && id.length <= size);
}