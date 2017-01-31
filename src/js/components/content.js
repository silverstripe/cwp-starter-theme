import $ from 'jquery';

export default function () {
    // Maori language class to add lang type
  $('.maori').attr('lang', 'mi');

  $('.nonvisual-indicator').addClass('sr-only').removeClass('nonvisual-indicator');
}
