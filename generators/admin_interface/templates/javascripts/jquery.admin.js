jQuery.rowSelect = function(tableSelector) {
  var checkboxes = 'input[type=checkbox]';
  $(checkboxes).css({cursor: 'pointer'})
  $('tr:eq(0) th:eq(0)', tableSelector).toggle(
    function() {
      $(checkboxes, tableSelector).attr('checked', true);
    },
    function() {
      $(checkboxes, tableSelector).attr('checked', false);
    }
  ).css({cursor: 'pointer'});
  $('tr:not(0) td', tableSelector).click(function(e) {
    var checkbox = $(this).siblings('td').eq(0).children(checkboxes);
    if ($(checkbox).attr('checked') == true) {
      $(checkbox).attr('checked', false);
    } else {
      $(checkbox).attr('checked', true);
    };
  });
}

// Make the select all checkbox select all.
$(function() {
  $.rowSelect('table');
});
