#= require active_admin/base
#= require active_admin/select2
#= require jquery.multiple.select

ready = ->
  $('#product_target_ids').multipleSelect();
  $('#product_genre_ids').multipleSelect();
  $('#product_occasion_ids').multipleSelect();
  $('#product_relationship_ids').multipleSelect();
  $('#product_interest_ids').multipleSelect();

$(document).ready(ready);
$(document).on('page:load', ready);