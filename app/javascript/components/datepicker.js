import flatpickr from 'flatpickr';
import 'flatpickr/dist/flatpickr.css';


const initDatepicker = function () {
  const dateInput = document.getElementById('flatpikr');
  const bookingDateInput = document.getElementById('booking_date');

  if (dateInput) {
    flatpickr('#flatpikr', {})
  }

  if (bookingDateInput) {
    flatpickr(bookingDateInput, {
      minDate: 'today',
      dateFormat: 'd-m-Y',
     });
  }
};

export { initDatepicker };
