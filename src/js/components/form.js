import $ from 'jquery';

export default function () {
  $('input.number').on('keyup', function () {
    const value = $(this).val();
    $(this).val(value.replace(/[a-zA-Z]/g, ''));
  });
}
