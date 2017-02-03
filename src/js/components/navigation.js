import $ from 'jquery';

export default function () {

    const Dropdown = $("nav .dropdown");

    Dropdown
        .hover(function() {
            toggleMenu( $(this) );
        })
        .focusin(function() {
            let $this = $(this),
                $url  = null,
                $key  = null,
                $dropdownToggle = null;

            $this.keydown(function(event) {
                $key = event.keyCode;

                switch ($key) {
                    case 13:
                        // [Enter] key
                        $dropdownToggle = $this.find("a.dropdown-toggle");
                        if( $dropdownToggle.is(":focus") ) {
                            $url = $dropdownToggle.attr('href');
                            window.location = $url;
                            closeMenu($this);
                        }
                        $this.unbind( "keydown" );
                        break;
                    case 32:
                    case 40:
                        // Space bar
                        // arrow Keydown
                        openMenu($this);
                        $this.unbind( "keydown" );
                        break;
                    default:
                        $this.unbind( "keydown" );
                        break;
                }
            });
        });

    $("nav .nav__item").focusin(function() {
        let $key  = null,
            $this = $(this),
            $next = $this.next().find("a"),
            $prev = $this.prev().find("a");

        // Navigate with [<][>] arrow keyboard keys
        $this.keydown(function(event) {
            $key = event.keyCode;

            switch ($key) {
                case 39:
                    // forward [>]
                    if($next.length) {
                        $next.focus();
                        closeMenu();
                        $this.unbind( "keydown" );
                    }
                    break;
                case 37:
                    // backward [<]
                    if($prev.length) {
                        $prev.focus();
                        closeMenu();
                        $this.unbind( "keydown" );
                    }
                    break;
                default:
                    $this.unbind( "keydown" );
                    break;
            }
        });
    });

    $(".dropdown-touch__item").on("click", function(event) {
        event.preventDefault();
        event.stopPropagation();

        let $this = $(this),
            $dropdown = $this.closest(".dropdown"),
            $dropdownToggle = $dropdown.find('.dropdown-toggle');

        $dropdown.toggleClass('open');
        $dropdownToggle.attr('aria-expanded', (i, val) => val !== "true");
    });

    function toggleMenu(elem) {
        let $this = elem;

        $this.toggleClass('open');
        $this.find('.dropdown-toggle').attr('aria-expanded', (i, val) => val !== "true");
    }

    function openMenu(elem) {
        let $this = elem;

        $this.addClass('open');
        $this.find('.dropdown-toggle').attr('aria-expanded', true);
    }

    function closeMenu() {
        // Close dropdown, by default Bootstrap leaves it open
        Dropdown.removeClass('open')
                .find('.dropdown-toggle').attr('aria-expanded', false);
    }
}
