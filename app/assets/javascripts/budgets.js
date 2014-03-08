$(document).ready(function () {

  // var test = "hey";
 // debugger;
  $('input[data-role=money]').autoNumeric('init', {aSign: '$', lZero: 'deny'});

  // If the page has the edit-budget form, then once the form is loaded, update
  // Unallocated Funds.
  if ($("form.edit_budget").length != 0) {
    $("form.edit_budget").load(updateUnallocatedFunds());
    $("[id$=_amount_cents]").on('change', updateUnallocatedFunds);
    $("#budget_income_cents").on('change', updateUnallocatedFunds);
  }

  function updateUnallocatedFunds() {
    var income_string = $('#budget_income_cents').val();
    var income = parseFloat(income_string.replace('$', '').replace(',', ''));
    var income_cents = parseInt(income * 100);

    var sum_of_spending_cents = 0

    $('[id$=_amount_cents]').each(function() {
      var category_spending = parseFloat($(this).val().replace('$', '').replace(',', ''));
      var category_spending_cents = parseInt(category_spending * 100);
      sum_of_spending_cents += category_spending_cents;
    });
    var unallocated_cents = income_cents - sum_of_spending_cents;
    var unallocated_dollars_and_cents = unallocated_cents / 100;
    $('#unallocatedFunds').val('$'+unallocated_dollars_and_cents);
  };

  // On Enter: 1) don't submit form, 2) update unallocated, 3) lose focus.
  $('form.edit_budget').keypress(function(event)
  {
      if (event.keyCode == 13)
      {
          event.preventDefault();
          $(event.target).blur();
          updateUnallocatedFunds();
      }
  });
});