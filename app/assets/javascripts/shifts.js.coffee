jQuery ->
  $('select.shift-range').change ->
    $(this).closest('form').submit()
