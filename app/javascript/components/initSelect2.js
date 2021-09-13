import $ from "jquery";
import "select2";

const initSelect2 = () => {

if ($('.dog').length > 0) {
    console.log("dog");
  $('.dog').select2();
};

if ($('.cat').length > 0) {
    console.log("cat");
  $('.cat').select2();
}; }

export { initSelect2 };
