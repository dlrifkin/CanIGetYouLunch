$(document).ready(function() {
  var $user_bar = $('#user-bar');

  $user_bar.on('click', '#request-pickup', function(event)  {
    event.preventDefault();
    var $target = $(event.target);

    $.ajax({
      url: $target.attr('href'),
      type: 'GET'
    }).done(function(response) {
      $target.closest('.user-row').append('<td>' + response + '</td>')
    })
  })

  // $user_bar.on

  // $user_bar.on

  // $user_bar.on

});
