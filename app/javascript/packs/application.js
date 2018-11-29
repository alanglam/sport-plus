import "bootstrap";
import "../components/datepicker"
import { initDatepicker } from '../components/datepicker';

initDatepicker();
import { FlashDisappears } from '../components/flash_disappears';

if(document.getElementById("flash-alert")){
  FlashDisappears();
}
