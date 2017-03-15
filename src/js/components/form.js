/* eslint-disable */
import $ from 'jquery';
/* eslint-enable */

export default function () {
  $('input.number').on('keyup', function () {
    const value = $(this).val();
    $(this).val(value.replace(/[a-zA-Z]/g, ''));
  });

  /**
   * Apply a Bootstrap 3 form structure context to the jQuery validator plugin in userforms
   */
  $('.userform, .comments-holder-container form').each(function () {
    if (typeof $(this).validate === 'function') {
      const validatorSettings = $(this).validate().settings;

      validatorSettings.highlight = function (element) {
        $(element).closest('.form-group').addClass('has-error');
      };

      validatorSettings.unhighlight = function (element) {
        $(element).closest('.form-group').removeClass('has-error');
      };

      validatorSettings.errorElement = 'span';
      validatorSettings.errorClass = 'help-block';

      validatorSettings.errorPlacement = function (error, element) {
        if (element.parent('.input-group').length
          || element.prop('type') === 'checkbox'
          || element.prop('type') === 'radio'
        ) {
          error.insertAfter(element.parent());
        } else {
          error.insertAfter(element);
        }
      };
    }
  });

  // Comments Module - Accesibility for Replies
  const $commentReplyLink = $('.comment-reply-link');

  $commentReplyLink.click(function () {
    $(this).attr('aria-expanded', (i, val) => val !== 'true');
  });
}
