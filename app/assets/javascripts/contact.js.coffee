validate_required = (field) ->



$(document).ready ->
  $("#contact-form form").submit (e) ->
    form = this
    e.preventDefault()

    # clear the state
    $(".control-group.error .help-inline").remove()
    $(".control-group").removeClass "error"

    for input in $("input.required,select.required,textarea.required")
      if $(input).val() is ""
        $(input).parent().parent().addClass "error"
        $(input).parent().prepend "<span class=\"help-inline\">Required</span>"

      #validate the email using html5 does not work on certain browsers, this will fallback to serverside/ajax
      if input.validity.valid == false
        $(input).parent().parent().addClass "error"
        $(input).parent().prepend "<span class=\"help-inline\">#{input.validationMessage}</span>"

    if $(".control-group.error").length == 0
      $.post "contact.json", $(form).serialize(), (data) ->
        if data.status is 200
          $(".p-content").html("<div id='contact-form-thanks'><h2>Thanks for sending a message</h2><p>I will get back to you as soon as possible.</p></div>")
        else if data['status'] is 442
          $.each data.errors, (k, v) ->
            input = $("#work_#{k}")
            $(input).parent().parent().addClass "error"
            $(input).parent().prepend "<span class=\"help-inline\">#{v}</span>"
