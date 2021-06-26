function validate1(){
    var fullname = document.bst_form.fullname.value;
    var email = document.bst_form.email.value;
    if(fullname == "" || email == ""){
        document.getElementById("bst-check-form_null").innerText = "khong de trong";
        return false;
    }
}

function ValidateEmail(mail) {
 if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(bst_form.email.value)){
    return (true)
  }
    document.getElementById("bst-check-form_email").innerText = "Email not valid";
    return (false)
}


function phoneNumber(number){
    var match = /^\d{10}$/;
    if(number.value.match(match)){
        document.getElementById("bst-check-phone").innerText = "";
        return true;
    }else{
        document.getElementById("bst-check-phone").innerText = "số điện thoại phải từ 0-9 và có 10 số";
        return false;
    }
}
