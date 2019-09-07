/*function handleSubmit() {
    var guessInput = document.getElementById("guessInput");
    var guess = guessInput.value;
    controller.processGuess(guess);
    guessInput.value = "";
}
function() {
    var message = "***";
    var div = document.getElementById("message");

    var button = document.getElementById("clickme");
    button.onclick = function() {
        count++;
        div.innerHTML = message + count + "times!";
    };
};
*/
/*var autoIncreaseElement = document.getElementById("autoIncrease");
var autoIncrease = autoIncreaseElement.value;
var autoReduceElement = document.getElementById("autoReduce");
var autoReduce = autoReduceElement.value;*/

function disable(ctrl) {
    ctrl.disable = true;
};

function submit() {
    var name = document.querySelector('input[name="name"]:checked').value;
    var dateElement = document.getElementById("date");
    var date = dateElement.value;
    var commentElement = document.getElementById("comment");
    var comment = commentElement.value;
    var costElement = document.getElementById("cost");
    var cost = costElement.value;
    var show = document.getElementById("record");
    show.innerHTML = date + "：" + name + " 買了 " + comment + " 花費 " + cost;
    /*string message = "";
    message += date;
    show.innerHTML = date;*/
};

/*function count() {};*/

function init() {
    submitButton.onclick = submit;
    /*submitButton.addEventListener("click", submit, false);*/
    /*var count = document.getElementById("count");*/
    /*count.addEventListener("click", count, false);*/
};

window.addEventListener("load", init, false);