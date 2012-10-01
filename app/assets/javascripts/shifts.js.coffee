jQuery ->
  $('.shift_range').change ->
    $(this).closest('form').submit()