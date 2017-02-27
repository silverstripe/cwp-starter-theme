import $ from 'jquery';

export default function () {
  $('input.number').on('keyup', function () {
    const value = $(this).val();
    $(this).val(value.replace(/[a-zA-Z]/g, ''));
  });

  /**
   * Apply a Bootstrap 3 form structure context to the jQuery validator plugin in userforms
   */
  const userform = $('.userform');
  if (userform.length > 0 && typeof userform.validate === 'function') {
    const validatorSettings = userform.validate().settings;

    validatorSettings.highlight = function (element) {
      $(element).closest('.form-group').addClass('has-error');
    };

    validatorSettings.unhighlight = function (element) {
      $(element).closest('.form-group').removeClass('has-error');
    };

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
}
