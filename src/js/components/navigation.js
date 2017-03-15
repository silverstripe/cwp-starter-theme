/* eslint-disable */
import $ from 'jquery';
/* eslint-enable */

export default function () {
  const Dropdown = $('nav .dropdown');

  /**
   * Trigger a menu item to be "opened" or expanded
   */
  const openMenu = function ($elem) {
    closeMenu();

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

  /**
   * Handle the "hover" events to open and close the dropdown menus, and some keyboard
   * behaviours, such as "Esc" to close the menu, and spacebar and down key to open it.
   *
   * These keypress handlers differ from the others lower down in that these apply only
   * to navigation elements that have a dropdown menu associated.
   */
  Dropdown
    .hover(
      function () {
        openMenu($(this));
      },
      function () {
        closeMenu();
      }
    )
    .keydown(function (event) {
      switch (event.keyCode) {
        case 13:
          // Enter key
          closeMenu();
          break;
        case 32:
        case 40:
          // Space bar and "down" key
          // Stop the default behaviour (e.g. scrolling down)
          event.preventDefault();
          openMenu($(this));
          return;
          break;
        case 27:
          // ESC
          closeMenu();
          break;
        default:
          return;
          break;
      }
    });

  /**
   * Handler for key press events on navigation items - this allows the left and right
   * arrow keys to navigate through the lists.
   *
   * These handlers are for all navigation items, not just those with a dropdown associated.
   * NOTE: Be careful if adding new handlers here - be aware that they the previous handler
   * may also be fired, creating race conditions.
   */
  $('nav .nav-item').keydown(function (event) {
    const $next = $(this).next().find('a');
    const $prev = $(this).prev().find('a');
    switch (event.keyCode) {
      case 39:
        // forward [>]
        if ($next.length) {
          $next.focus();
          closeMenu();
          return;
        }
        break;
      case 37:
        // backward [<]
        if ($prev.length) {
          $prev.focus();
          closeMenu();
          return;
        }
        break;
      default:
        return;
        break;
    }
  });

  /**
   * Handler for opening and closing the dropdown menus when you click on the caret toggle
   */
  $('.main-nav .navbar-nav').on('click', '.navbar-touch-caret', function (event) {
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
