import 'flatpickr/dist/flatpickr.css';
import flatpickr from 'flatpickr';

const initDatepicker = function () {
  const dateInput = document.getElementById('event_date');
  const bookingDateInput = document.getElementById('booking_date');

  if (dateInput) {
    flatpickr(dateInput, {
      minDate: 'today',
         enableTime: true,
      dateFormat: 'd-m-Y H:i',
    });
  }

  if (bookingDateInput) {
    flatpickr(bookingDateInput, {
      minDate: 'today',
      dateFormat: 'd-m-Y',
     });
  }
};

export { initDatepicker };
