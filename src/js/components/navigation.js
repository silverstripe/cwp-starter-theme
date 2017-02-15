import $ from 'jquery';

export default function () {
  const Dropdown = $('nav .dropdown');

  const openMenu = function (elem) {
    const $this = elem;

    $this.addClass('open');
    $this.find('.navbar__touch-caret').attr('aria-expanded', true);
  };

  const closeMenu = function () {
    // Close dropdown, by default Bootstrap leaves it open
    Dropdown.removeClass('open')
            .find('.navbar__touch-caret').attr('aria-expanded', false);
  };

  const isDesktop = function () {
    /**
     * If screen width is Desktop return true
     * 752px according to Bootstrap @media queries
     */
    const width = $(document).width();
    return width > 752 || false;
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
    const $this = $(this);
    let $url = null;
    let $key = null;
    let $dropdownToggle = null;

    $this.keydown((event) => {
      $key = event.keyCode;

      switch ($key) {
        case 13:
          // [Enter] key
          $dropdownToggle = $this.find('.navbar__touch-caret');
          if ($dropdownToggle.is(':focus')) {
            $url = $dropdownToggle.attr('href');
            if ($url !== undefined) {
              window.location = $url;
            }
            closeMenu();
          }
          $this.unbind('keydown');
          break;
        case 32:
        case 40:
          // Space bar
          // arrow Keydown
          openMenu($this);
          $this.unbind('keydown');
          break;
        case 27:
          // ESC
          closeMenu();
          break;
        default:
          $this.unbind('keydown');
          break;
      }
    });
  })
  .click(function () {
    const $this = $(this);
    const $url = $this.find('a').attr('href');
    if ($url !== undefined) {
      window.location = $url;
    }
    closeMenu();
  });

  $('nav .nav__item').focusin(function () {
    let $key = null;
    const $this = $(this);
    const $next = $this.next().find('a');
    const $prev = $this.prev().find('a');

    // Navigate with [<][>] arrow keyboard keys
    $this.keydown((event) => {
      $key = event.keyCode;

      switch ($key) {
        case 39:
          // forward [>]
          if ($next.length) {
            $next.focus();
            closeMenu();
            $this.unbind('keydown');
          }
          break;
        case 37:
          // backward [<]
          if ($prev.length) {
            $prev.focus();
            closeMenu();
            $this.unbind('keydown');
          }
          break;
        default:
          $this.unbind('keydown');
          break;
      }
    });
  });

  $('.main-nav .navbar-nav .dropdown').on('click', '.navbar__touch-caret',function (event) {
    console.log("clicked");

    event.stopPropagation();
    event.preventDefault();

    const $this = $(this);
    const $parent = $this.parent('.dropdown');

    if ($parent.hasClass('open')) {
      closeMenu();
      console.log("close");
    } else {
      openMenu($parent);
      console.log("open");
    }

  });
}
