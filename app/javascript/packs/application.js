import "bootstrap";
import "../components/datepicker"
import { initDatepicker } from '../components/datepicker';
import { FlashDisappears } from '../components/flash_disappears';
import { initSportimages, initGenderimages, initPlayimages } from '../components/select_image';
import { checkButton } from '../components/check_button';


initDatepicker();

if(document.getElementById('alert')){
  FlashDisappears();
}
initSportimages();
initGenderimages();
initPlayimages();
if(document.getElementById("toggle")){
 checkButton();
}
