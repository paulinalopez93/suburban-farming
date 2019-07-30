const stripeFunction = () => {
  let testElement = document.querySelector(".payment-card");
  if (testElement) {
    var stripe = Stripe('pk_test_JXtDUbkLdGhkhPEba1WpAP1G00w9JNw998');
    var elements = stripe.elements();

    var style = {
      base: {
    // Add your base input styles here. For example:
    fontSize: '16px',
    color: "#32325d",
    width: "300px"
  }
};

// Create an instance of the card Element.
var card = elements.create('card', {style: style});

// Add an instance of the card Element into the `card-element` <div>.
card.mount('#card-element');


card.addEventListener('change', function(event) {
  var displayError = document.getElementById('card-errors');
  if (event.error) {
    displayError.textContent = event.error.message;
  } else {
    displayError.textContent = '';
  }
});


var form = document.getElementById('payment-form');
form.dataset.remote = true;
document.querySelector(".btn-pay").dataset.remote = true;
form.addEventListener('submit', function(event) {
  event.preventDefault();

  stripe.createToken(card).then(function(result) {
    if (result.error) {
      // Inform the customer that there was an error.
      var errorElement = document.getElementById('card-errors');
      errorElement.textContent = result.error.message;
    } else {
      // Send the token to your server.
      stripeTokenHandler(result.token);
    }
  });
});

const clickButton = () => {
  const button = document.querySelector("#payment-modal-button");
  button.click();
}

const csrfToken = document.querySelector('meta[name="csrf-token"]').attributes.content.value;

function postFetch(url, body, callback) {
 // The same as getFetch for POST requests
 return fetch(url, {
   method: 'POST',
   headers: {
     'Accept': 'application/json',
     'Content-Type': 'application/json',
     'X-CSRF-Token': csrfToken
   },
   credentials: 'same-origin',
   body: JSON.stringify(body)
 }).then(r => r.json())
   .then(r => callback(r));
}

function stripeTokenHandler(token) {
  // Insert the token ID into the form so it gets submitted to the server
  var form = document.getElementById('payment-form');
  var hiddenInput = document.createElement('input');
  hiddenInput.setAttribute('type', 'hidden');
  hiddenInput.setAttribute('name', 'stripeToken');
  hiddenInput.setAttribute('value', token.id);
  form.appendChild(hiddenInput);

  // Submit the form
  const data = new FormData(form);
  const submissionURL = form.action;
  const response = postFetch(submissionURL, data, (r) => {
    clickButton();
    return r;
  });
  console.log(response);
}
}
}

export { stripeFunction }
