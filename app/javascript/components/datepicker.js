import flatpickr from 'flatpickr';
import 'flatpickr/dist/flatpickr.css';


const initDatepicker = function () {
  const dateInput = document.getElementById('flatpikr');

  if (dateInput) {
    flatpickr('#flatpikr', {
    minTime: "09:00",
    enableTime: true,
    minDate: "today"
    })
  }
};

export { initDatepicker };
