import $ from "jquery";
import "select2";

const initSelect2 = () => {

if ($('.dog').length > 0) {
  $('.dog').select2({
    placeholder: "search for a dog breed"
    
  });
};

if ($('.cat').length > 0) {
  $('.cat').select2({
    placeholder: "search for a cat breed"

  });
}; }

export { initSelect2 };
