function check_input() {
    var username = document.getElementById("username");
    var pass = document.getElementById("password");
    if (username.value == "ryan" && pass.value === "ryan") {
        window.location.href = "index.html";
    } else if (username.value == "vicky" && pass.value === "vicky") {
        window.location.href = "index.html";
    } else {
        alert("使用者名稱或者密碼錯誤");
    }
};
function disable(ctrl) {
    ctrl.disable = true;
};
