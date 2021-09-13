import $ from "jquery";
import "select2";

const initSelect2 = () => {
  $(".select2").select2({
    placeholder: "Search for breeds",
    minimumResultsForSearch: 1,
    dropdownStyle: "none",
  });
};

export { initSelect2 };
