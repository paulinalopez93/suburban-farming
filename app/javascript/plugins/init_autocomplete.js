import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('search_query');
  const secondInput = document.getElementById('shipping_query');
  if (addressInput) {
    places({ container: addressInput });
  }
  if (secondInput) {
    places({ container: secondInput });
  }
};

export { initAutocomplete };
