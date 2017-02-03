import $ from 'jquery';

export default function () {
  const Dropdown = $('nav .dropdown');

  function toggleMenu(elem) {
    const $this = elem;

    $this.toggleClass('open');
    $this.find('.dropdown-toggle').attr('aria-expanded', (i, val) => val !== 'true');
  }

  function openMenu(elem) {
    const $this = elem;

    $this.addClass('open');
    $this.find('.dropdown-toggle').attr('aria-expanded', true);
  }

  function closeMenu() {
        // Close dropdown, by default Bootstrap leaves it open
    Dropdown.removeClass('open')
            .find('.dropdown-toggle').attr('aria-expanded', false);
  }

  Dropdown
        .hover(function () {
          toggleMenu($(this));
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
                $dropdownToggle = $this.find('a.dropdown-toggle');
                if ($dropdownToggle.is(':focus')) {
                  $url = $dropdownToggle.attr('href');
                  window.location = $url;
                  closeMenu($this);
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
              default:
                $this.unbind('keydown');
                break;
            }
          });
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

  $('.dropdown-touch__item').on('click', function (event) {
    event.preventDefault();
    event.stopPropagation();

    const $this = $(this);
    const $dropdown = $this.closest('.dropdown');
    const $dropdownToggle = $dropdown.find('.dropdown-toggle');

    $dropdown.toggleClass('open');
    $dropdownToggle.attr('aria-expanded', (i, val) => val !== 'true');
  });
}
