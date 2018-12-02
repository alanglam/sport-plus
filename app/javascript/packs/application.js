import "bootstrap";
import "../components/datepicker"
import { initDatepicker } from '../components/datepicker';
import { FlashDisappears } from '../components/flash_disappears';
import { initSportimages, initGenderimages, initPlayimages } from '../components/select_image';



initDatepicker();

if(document.getElementById("flash-alert")){
  FlashDisappears();
}
initSportimages();
initGenderimages();
initPlayimages();
