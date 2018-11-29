import flatpickr from 'flatpickr';
import 'flatpickr/dist/flatpickr.css';


const initDatepicker = function () {
  const dateInput = document.getElementById('flatpikr');

  if (dateInput) {
    flatpickr('#flatpikr', {
    minDate: "today",
    enableTime: true,
   minTime: "09:00"
    })
  }
};

export { initDatepicker };
