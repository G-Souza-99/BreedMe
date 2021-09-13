import $ from "jquery";
import "select2";

//    console.log("dog");
//   $(".dog").select2({
//     placeholder: "Search for breeds",
//     minimumResultsForSearch: 1,
//   });
// };
// const initSelect3 = () => {
//   console.log("cat");
//   $(".cat").select2({
//     placeholder: "Search for breeds",
//     minimumResultsForSearch: 1,
//   });
// };


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
