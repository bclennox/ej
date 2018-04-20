$ ->
  $(document).on 'keyup', '#search', (e) ->
    re = new RegExp($(this).val(), 'i')

    $('.demands li, .items li').hide()
    $('.description').filter(-> $(this).text().match(re)?).closest('li').show()
