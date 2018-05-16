var xhttp = createXmlHttpRequestObject();
function createXmlHttpRequestObject() {
    var xhttp;
    if (window.XMLHttpRequest) {
        xhttp = new XMLHttpRequest();
    } else {
        xhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    return xhttp;
}

function RegisterUser() {
    var name, contact, em, un, pw;
    xhttp.onreadystatechange = RegUser;
    if (xhttp.readyState === 0 || xhttp.readyState === 4) {
        name = document.getElementById('name').value;
        contact = document.getElementById('contact').value;
        em = document.getElementById('em').value;
        un = document.getElementById('un').value;
        pw = document.getElementById('pw').value;
        xhttp.open("POST", "Register?name=" + name + "&contact=" + contact + "&em=" + em + "&un=" + un + "&pw=" + pw, true);
        xhttp.send(null);
    } else {
        alert("No Data");
    }
}

function RegUser() {
    if (xhttp.readyState === 4 && xhttp.status === 200) {
        var xx = xhttp.responseText;
        alert(xx);
    }
}

function myFunction(timer) {
    setTimeout(function () {
        window.location.reload();
    }, timer);
}

function SignInUser() {
    var username, password,logbtn;
    xhttp.onreadystatechange = LogUser;
    if (xhttp.readyState === 0 || xhttp.readyState === 4) {
        username = document.getElementById('username').value;
        password = document.getElementById('password').value;
        logbtn= document.getElementById('logbtn').checked;
        xhttp.open("POST", "Signin?username=" + username + "&password=" + password+"&logbtn="+logbtn, true);
        xhttp.send(null);
    } else {
        alert("No Data");
    }
}

function LogUser() {
    if (xhttp.readyState === 4 && xhttp.status === 200) {
        var xx = xhttp.responseText;
        if (xx==="ok"){
            alert("successfully logged...");
            myFunction(3000);
            window.location="index.jsp";
        }else if (!xx==="ok"){
            alert(xx);
        }
    }
}

function PromptLogOut(){
    var txt;
    if (confirm("Are you sure to Sign Out?")) {
        Logout();
    } else {
        txt = "You pressed Cancel!";
        alert(txt);
    }
}

function Logout() {
    xhttp.onreadystatechange = Lgout;
    if (xhttp.readyState === 0 || xhttp.readyState === 4) {
        xhttp.open("POST", "Logout", true);
        xhttp.send(null);
    } else {
        alert("No Data");
    }
}

function Lgout() {
    if (xhttp.readyState === 4 && xhttp.status === 200) {
        var xx = xhttp.responseText;
        if (xx==="ok"){
            alert("successfully logged out...");
            myFunction(3000);
        }else if (!xx==="ok"){
            alert(xx);
        }
    }
}

function ShowReg(){
    window.location="Register.jsp";
}

function ShowLog(){
    window.location="Login.jsp";
}