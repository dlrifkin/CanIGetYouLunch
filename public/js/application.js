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

  $user_bar.on('click', '#available-pickups', function(event)  {
    event.preventDefault();
    var $target = $(event.target);

    $.ajax({
      url: $target.attr('href'),
      type: 'GET'
    }).done(function(response) {
      $target.closest('.user-row').append('<td>' + response + '</td>')
    })
  })

  $user_bar.on('click', '#my-active-orders', function(event)  {
    event.preventDefault();
    var $target = $(event.target);

    $.ajax({
      url: $target.attr('href'),
      type: 'GET'
    }).done(function(response) {
      $target.closest('.user-row').append('<td>' + response + '</td>')
    })
  })

  $user_bar.on('click', '#my-active-pickups', function(event)  {
    event.preventDefault();
    var $target = $(event.target);
    $target.toggle()

    $.ajax({
      url: $target.attr('href'),
      type: 'GET'
    }).done(function(response) {
      $target.closest('.user-row').append('<td>' + response + '</td>')
    })
  })

// Computer and shotgun crashed... unsure if this submits

  $user_bar.on('click', '#new-order-form', function(event)  {
    event.preventDefault();
    var $target = $(event.target);
    $target.toggle()

    $.ajax({
      url: $target.attr('action'),
      type: 'POST'
      data: $target.serialize()
    })
  })

// Need to dry up and add toggleget requests later
// ['#request-pickup','available-pickups','my-active-orders','my-active-pickups'].forEach(function() order_calls(row_id)



});
