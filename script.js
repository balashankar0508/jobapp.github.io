const form = document.querySelector('#form');
const id = document.querySelector('#id');
const fn = document.querySelector('#fname');
const ln = document.querySelector('#lname');
const email = document.querySelector('#email');
const contact = document.querySelector('#contact');
const yop = document.querySelector('#yop');
const cloc = document.querySelector('#cloc');


form.addEventListener('submit', (e) => {
    if(!validateInputs()) {
        e.preventDefault();
    }
});

function validateInputs() {
	const idval = id.value;
    const fname = fn.value.trim();
    const lname = ln.value.trim();
    const eval = email.value.trim();
    const cont = contact.value.trim();
    const yp = yop.value;
    const loc = cloc.value.trim();
    

    let success = true;

	
	if(idval === ''){
		success = false;
		setError(id, 'ID is Required');
	} else{
		setSuccess(id)
	}

    if(fname === ''){
        success = false;
        setError(fn, 'First Name is required');
    } else{
        setSuccess(fn);
    }


    if(lname === ''){
        success = false;
        setError(ln, 'Last Name is required');
    } else{
        setSuccess(ln);
    }
    if(eval === ''){
        success = false;
        setError(email, 'Email is required');
    } else if(!validateEmail(eval)){
        success = false;
        setError(email, 'Invalid Email');
    }
    
    if(cont === ''){
		success = false;
		setError(contact, 'Contact is Required');
	} else if(!validateContact(cont)){
		success = false;
		setError(contact, ' Enter a Valid Moile Number');
	} else{
		setSuccess(contact);
	}
    
    if(yp === ''){
		success=false;
		setError(yop, 'Enter Year Of Passing');
	} else if(yp < 2010 || yp > 2024 ){
		success = false;
		setError(yop, 'Enter a Valid Year');
	} else {
		setSuccess(yop);
	}

    if(loc === ''){
        success = false;
        setError(cloc, 'Location is required');
    }

    else{
        setSuccess(cloc);
    }
    
    

    return success;
}


function setError(element, message){
    const ig = element.parentElement;
    const errorElement = ig.querySelector('.error');
    
    errorElement.innerText = message;
    ig.classList.add('error');
    ig.classList.remove('success');
}

function setSuccess(element){
    const ig = element.parentElement;
    const errorElement = ig.querySelector('.error');

    errorElement.innerText = '';
    ig.classList.add('success');
    ig.classList.remove('error');
}


const validateEmail = (email)=>{
    return String(email).toLowerCase().match(/^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/);
};


const validateContact = (contact)=>{
	return String(contact).match(/^[+]{1}(?:[0-9\-\\(\\)\\/.]\s?){6,15}[0-9]{1}$/);
}

