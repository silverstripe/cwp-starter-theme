import $ from 'jquery';

export default function () {
  const Dropdown = $('nav .dropdown');

  /**
   * Trigger a menu item to be "opened" or expanded
   */
  const openMenu = function ($elem) {
    $elem.addClass('open');
    $elem
      .find('.navbar-touch-caret')
      .attr('aria-expanded', true);

    $elem
      .find('.dropdown-menu')
      .attr('aria-hidden', false);
  };

  /**
   * Close dropdown, by default Bootstrap leaves it open. Also hide any child
   * menus with aria-hidden.
   */
  const closeMenu = function () {
    // Close dropdown, by default Bootstrap leaves it open
    Dropdown
      .removeClass('open')
      .find('.navbar-touch-caret')
      .attr('aria-expanded', false);

    Dropdown
      .find('.dropdown-menu')
      .attr('aria-hidden', true);
  };

  /**
   * If screen width is Desktop return true
   * 752px according to Bootstrap @media queries
   *
   * @returns {Boolean}
   */
  const isDesktop = function () {
    return $(document).width() > 752 || false;
  };

  Dropdown
    .mouseleave(() => {
      if (isDesktop()) {
        closeMenu();
      }
    })
    .mouseover(function () {
      if (isDesktop()) {
        openMenu($(this));
      }
    })
    .focusin(function () {
      let $url = null;
      let $key = null;
      let $dropdownToggle = null;

      $(this).keydown((event) => {
        $key = event.keyCode;

        switch ($key) {
          case 13:
            // [Enter] key
            $dropdownToggle = $(this).find('.navbar-touch-caret');
            if ($dropdownToggle.is(':focus')) {
              $url = $dropdownToggle.attr('href');
              if ($url !== undefined) {
                window.location = $url;
              }
              closeMenu();
            }
            $(this).unbind('keydown');
            break;
          case 32:
          case 40:
            // Space bar
            // arrow Keydown
            openMenu($(this));
            $(this).unbind('keydown');
            break;
          case 27:
            // ESC
            closeMenu();
            break;
          default:
            $(this).unbind('keydown');
            break;
        }
      });
    })
    .click(function () {
      const $url = $(this).find('a').attr('href');
      if ($url !== undefined) {
        window.location = $url;
      }
      closeMenu();
    });

  $('nav .nav-item').focusin(function () {
    let $key = null;
    const $next = $(this).next().find('a');
    const $prev = $(this).prev().find('a');

    // Navigate with [<][>] arrow keyboard keys
    $(this).keydown((event) => {
      $key = event.keyCode;

      switch ($key) {
        case 39:
          // forward [>]
          if ($next.length) {
            $next.focus();
            closeMenu();
            $(this).unbind('keydown');
          }
          break;
        case 37:
          // backward [<]
          if ($prev.length) {
            $prev.focus();
            closeMenu();
            $(this).unbind('keydown');
          }
          break;
        default:
          $(this).unbind('keydown');
          break;
      }
    });
  });

  $('.main-nav .navbar-nav .dropdown').on('click', '.navbar-touch-caret', function (event) {
    event.stopPropagation();
    event.preventDefault();

    const $parent = $(this).parent('.dropdown');

    if ($parent.hasClass('open')) {
      closeMenu();
    } else {
      openMenu($parent);
    }
  });
}
