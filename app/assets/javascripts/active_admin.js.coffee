#= require active_admin/base
#= require active_admin/select2
#= require jquery.multiple.select

ready = ->
  $('#product_interest_ids').multipleSelect();

$(document).ready(ready);
$(document).on('page:load', ready);