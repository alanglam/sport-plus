import "bootstrap";
import { initDatepicker } from '../components/datepicker';

initDatepicker();
initPeriodButtons();


import { FlashDisappears } from '../components/flash_disappears';

if(document.getElementById("flash-alert")){
  FlashDisappears();
}
