/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, {
/******/ 				configurable: false,
/******/ 				enumerable: true,
/******/ 				get: getter
/******/ 			});
/******/ 		}
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "/";
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = 2);
/******/ })
/************************************************************************/
/******/ ([
/* 0 */
/***/ (function(module, exports) {

module.exports = jQuery;

/***/ }),
/* 1 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_jquery__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_jquery___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_0_jquery__);


/**
 * --------------------------------------------------------------------------
 * Bootstrap (v4.1.3): util.js
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 * --------------------------------------------------------------------------
 */

const Util = (($) => {
  /**
   * ------------------------------------------------------------------------
   * Private TransitionEnd Helpers
   * ------------------------------------------------------------------------
   */

  const TRANSITION_END = 'transitionend'
  const MAX_UID = 1000000
  const MILLISECONDS_MULTIPLIER = 1000

  // Shoutout AngusCroll (https://goo.gl/pxwQGp)
  function toType(obj) {
    return {}.toString.call(obj).match(/\s([a-z]+)/i)[1].toLowerCase()
  }

  function getSpecialTransitionEndEvent() {
    return {
      bindType: TRANSITION_END,
      delegateType: TRANSITION_END,
      handle(event) {
        if ($(event.target).is(this)) {
          return event.handleObj.handler.apply(this, arguments) // eslint-disable-line prefer-rest-params
        }
        return undefined // eslint-disable-line no-undefined
      }
    }
  }

  function transitionEndEmulator(duration) {
    let called = false

    $(this).one(Util.TRANSITION_END, () => {
      called = true
    })

    setTimeout(() => {
      if (!called) {
        Util.triggerTransitionEnd(this)
      }
    }, duration)

    return this
  }

  function setTransitionEndSupport() {
    $.fn.emulateTransitionEnd = transitionEndEmulator
    $.event.special[Util.TRANSITION_END] = getSpecialTransitionEndEvent()
  }

  /**
   * --------------------------------------------------------------------------
   * Public Util Api
   * --------------------------------------------------------------------------
   */

  const Util = {

    TRANSITION_END: 'bsTransitionEnd',

    getUID(prefix) {
      do {
        // eslint-disable-next-line no-bitwise
        prefix += ~~(Math.random() * MAX_UID) // "~~" acts like a faster Math.floor() here
      } while (document.getElementById(prefix))
      return prefix
    },

    getSelectorFromElement(element) {
      let selector = element.getAttribute('data-target')
      if (!selector || selector === '#') {
        selector = element.getAttribute('href') || ''
      }

      try {
        return document.querySelector(selector) ? selector : null
      } catch (err) {
        return null
      }
    },

    getTransitionDurationFromElement(element) {
      if (!element) {
        return 0
      }

      // Get transition-duration of the element
      let transitionDuration = $(element).css('transition-duration')
      const floatTransitionDuration = parseFloat(transitionDuration)

      // Return 0 if element or transition duration is not found
      if (!floatTransitionDuration) {
        return 0
      }

      // If multiple durations are defined, take the first
      transitionDuration = transitionDuration.split(',')[0]

      return parseFloat(transitionDuration) * MILLISECONDS_MULTIPLIER
    },

    reflow(element) {
      return element.offsetHeight
    },

    triggerTransitionEnd(element) {
      $(element).trigger(TRANSITION_END)
    },

    // TODO: Remove in v5
    supportsTransitionEnd() {
      return Boolean(TRANSITION_END)
    },

    isElement(obj) {
      return (obj[0] || obj).nodeType
    },

    typeCheckConfig(componentName, config, configTypes) {
      for (const property in configTypes) {
        if (Object.prototype.hasOwnProperty.call(configTypes, property)) {
          const expectedTypes = configTypes[property]
          const value         = config[property]
          const valueType     = value && Util.isElement(value)
            ? 'element' : toType(value)

          if (!new RegExp(expectedTypes).test(valueType)) {
            throw new Error(
              `${componentName.toUpperCase()}: ` +
              `Option "${property}" provided type "${valueType}" ` +
              `but expected type "${expectedTypes}".`)
          }
        }
      }
    }
  }

  setTransitionEndSupport()

  return Util
})(__WEBPACK_IMPORTED_MODULE_0_jquery___default.a)

/* harmony default export */ __webpack_exports__["a"] = (Util);


/***/ }),
/* 2 */
/***/ (function(module, exports, __webpack_require__) {

__webpack_require__(3);
__webpack_require__(18);
module.exports = __webpack_require__(19);


/***/ }),
/* 3 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_bootstrap_js_src_util__ = __webpack_require__(1);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_bootstrap_js_src_collapse__ = __webpack_require__(4);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_bootstrap_js_src_collapse___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_1_bootstrap_js_src_collapse__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_bootstrap_js_src_dropdown__ = __webpack_require__(5);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_bootstrap_js_src_dropdown___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_2_bootstrap_js_src_dropdown__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_bootstrap_js_src_carousel__ = __webpack_require__(6);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_bootstrap_js_src_carousel___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_3_bootstrap_js_src_carousel__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4_bootstrap_js_src_tooltip__ = __webpack_require__(7);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4_bootstrap_js_src_tooltip___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_4_bootstrap_js_src_tooltip__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5_bootstrap_js_src_popover__ = __webpack_require__(8);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5_bootstrap_js_src_popover___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_5_bootstrap_js_src_popover__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6_bootstrap_js_src_modal__ = __webpack_require__(9);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6_bootstrap_js_src_modal___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_6_bootstrap_js_src_modal__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_7_bootstrap_js_src_tab__ = __webpack_require__(10);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_8_jquery_highlight_jquery_highlight__ = __webpack_require__(11);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_8_jquery_highlight_jquery_highlight___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_8_jquery_highlight_jquery_highlight__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_9__components_navigation__ = __webpack_require__(12);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_10__components_content__ = __webpack_require__(13);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_11__components_sitemap__ = __webpack_require__(14);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_12__components_search__ = __webpack_require__(15);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_13__components_form__ = __webpack_require__(16);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_14__components_img__ = __webpack_require__(17);
// Define globally exposed module objects
/* eslint-disable */
// Define dependency imports










// Define local components







Object(__WEBPACK_IMPORTED_MODULE_9__components_navigation__["a" /* default */])();
Object(__WEBPACK_IMPORTED_MODULE_10__components_content__["a" /* default */])();
Object(__WEBPACK_IMPORTED_MODULE_11__components_sitemap__["a" /* default */])();
Object(__WEBPACK_IMPORTED_MODULE_12__components_search__["a" /* default */])();
Object(__WEBPACK_IMPORTED_MODULE_13__components_form__["a" /* default */])();
Object(__WEBPACK_IMPORTED_MODULE_14__components_img__["a" /* default */])();
/* eslint-enable */

/***/ }),
/* 4 */
/***/ (function(module, exports) {

throw new Error("Module parse failed: Unexpected token (271:8)\nYou may need an appropriate loader to handle this file type.\n|     _getConfig(config) {\n|       config = {\n|         ...Default,\n|         ...config\n|       }");

/***/ }),
/* 5 */
/***/ (function(module, exports) {

throw new Error("Module parse failed: Unexpected token (228:8)\nYou may need an appropriate loader to handle this file type.\n|     _getConfig(config) {\n|       config = {\n|         ...this.constructor.Default,\n|         ...$(this._element).data(),\n|         ...config");

/***/ }),
/* 6 */
/***/ (function(module, exports) {

throw new Error("Module parse failed: Unexpected token (217:8)\nYou may need an appropriate loader to handle this file type.\n|     _getConfig(config) {\n|       config = {\n|         ...Default,\n|         ...config\n|       }");

/***/ }),
/* 7 */
/***/ (function(module, exports) {

throw new Error("Module parse failed: Unexpected token (499:10)\nYou may need an appropriate loader to handle this file type.\n|       if (this.config.selector) {\n|         this.config = {\n|           ...this.config,\n|           trigger: 'manual',\n|           selector: ''");

/***/ }),
/* 8 */
/***/ (function(module, exports) {

throw new Error("Module parse failed: Unexpected token (27:4)\nYou may need an appropriate loader to handle this file type.\n| \n|   const Default = {\n|     ...Tooltip.Default,\n|     placement : 'right',\n|     trigger   : 'click',");

/***/ }),
/* 9 */
/***/ (function(module, exports) {

throw new Error("Module parse failed: Unexpected token (221:8)\nYou may need an appropriate loader to handle this file type.\n|     _getConfig(config) {\n|       config = {\n|         ...Default,\n|         ...config\n|       }");

/***/ }),
/* 10 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_jquery__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_jquery___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_0_jquery__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__util__ = __webpack_require__(1);



/**
 * --------------------------------------------------------------------------
 * Bootstrap (v4.1.3): tab.js
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 * --------------------------------------------------------------------------
 */

const Tab = (($) => {
  /**
   * ------------------------------------------------------------------------
   * Constants
   * ------------------------------------------------------------------------
   */

  const NAME               = 'tab'
  const VERSION            = '4.1.3'
  const DATA_KEY           = 'bs.tab'
  const EVENT_KEY          = `.${DATA_KEY}`
  const DATA_API_KEY       = '.data-api'
  const JQUERY_NO_CONFLICT = $.fn[NAME]

  const Event = {
    HIDE           : `hide${EVENT_KEY}`,
    HIDDEN         : `hidden${EVENT_KEY}`,
    SHOW           : `show${EVENT_KEY}`,
    SHOWN          : `shown${EVENT_KEY}`,
    CLICK_DATA_API : `click${EVENT_KEY}${DATA_API_KEY}`
  }

  const ClassName = {
    DROPDOWN_MENU : 'dropdown-menu',
    ACTIVE        : 'active',
    DISABLED      : 'disabled',
    FADE          : 'fade',
    SHOW          : 'show'
  }

  const Selector = {
    DROPDOWN              : '.dropdown',
    NAV_LIST_GROUP        : '.nav, .list-group',
    ACTIVE                : '.active',
    ACTIVE_UL             : '> li > .active',
    DATA_TOGGLE           : '[data-toggle="tab"], [data-toggle="pill"], [data-toggle="list"]',
    DROPDOWN_TOGGLE       : '.dropdown-toggle',
    DROPDOWN_ACTIVE_CHILD : '> .dropdown-menu .active'
  }

  /**
   * ------------------------------------------------------------------------
   * Class Definition
   * ------------------------------------------------------------------------
   */

  class Tab {
    constructor(element) {
      this._element = element
    }

    // Getters

    static get VERSION() {
      return VERSION
    }

    // Public

    show() {
      if (this._element.parentNode &&
          this._element.parentNode.nodeType === Node.ELEMENT_NODE &&
          $(this._element).hasClass(ClassName.ACTIVE) ||
          $(this._element).hasClass(ClassName.DISABLED)) {
        return
      }

      let target
      let previous
      const listElement = $(this._element).closest(Selector.NAV_LIST_GROUP)[0]
      const selector = __WEBPACK_IMPORTED_MODULE_1__util__["a" /* default */].getSelectorFromElement(this._element)

      if (listElement) {
        const itemSelector = listElement.nodeName === 'UL' ? Selector.ACTIVE_UL : Selector.ACTIVE
        previous = $.makeArray($(listElement).find(itemSelector))
        previous = previous[previous.length - 1]
      }

      const hideEvent = $.Event(Event.HIDE, {
        relatedTarget: this._element
      })

      const showEvent = $.Event(Event.SHOW, {
        relatedTarget: previous
      })

      if (previous) {
        $(previous).trigger(hideEvent)
      }

      $(this._element).trigger(showEvent)

      if (showEvent.isDefaultPrevented() ||
         hideEvent.isDefaultPrevented()) {
        return
      }

      if (selector) {
        target = document.querySelector(selector)
      }

      this._activate(
        this._element,
        listElement
      )

      const complete = () => {
        const hiddenEvent = $.Event(Event.HIDDEN, {
          relatedTarget: this._element
        })

        const shownEvent = $.Event(Event.SHOWN, {
          relatedTarget: previous
        })

        $(previous).trigger(hiddenEvent)
        $(this._element).trigger(shownEvent)
      }

      if (target) {
        this._activate(target, target.parentNode, complete)
      } else {
        complete()
      }
    }

    dispose() {
      $.removeData(this._element, DATA_KEY)
      this._element = null
    }

    // Private

    _activate(element, container, callback) {
      let activeElements
      if (container.nodeName === 'UL') {
        activeElements = $(container).find(Selector.ACTIVE_UL)
      } else {
        activeElements = $(container).children(Selector.ACTIVE)
      }

      const active = activeElements[0]
      const isTransitioning = callback &&
        (active && $(active).hasClass(ClassName.FADE))

      const complete = () => this._transitionComplete(
        element,
        active,
        callback
      )

      if (active && isTransitioning) {
        const transitionDuration = __WEBPACK_IMPORTED_MODULE_1__util__["a" /* default */].getTransitionDurationFromElement(active)

        $(active)
          .one(__WEBPACK_IMPORTED_MODULE_1__util__["a" /* default */].TRANSITION_END, complete)
          .emulateTransitionEnd(transitionDuration)
      } else {
        complete()
      }
    }

    _transitionComplete(element, active, callback) {
      if (active) {
        $(active).removeClass(`${ClassName.SHOW} ${ClassName.ACTIVE}`)

        const dropdownChild = $(active.parentNode).find(
          Selector.DROPDOWN_ACTIVE_CHILD
        )[0]

        if (dropdownChild) {
          $(dropdownChild).removeClass(ClassName.ACTIVE)
        }

        if (active.getAttribute('role') === 'tab') {
          active.setAttribute('aria-selected', false)
        }
      }

      $(element).addClass(ClassName.ACTIVE)
      if (element.getAttribute('role') === 'tab') {
        element.setAttribute('aria-selected', true)
      }

      __WEBPACK_IMPORTED_MODULE_1__util__["a" /* default */].reflow(element)
      $(element).addClass(ClassName.SHOW)

      if (element.parentNode &&
          $(element.parentNode).hasClass(ClassName.DROPDOWN_MENU)) {
        const dropdownElement = $(element).closest(Selector.DROPDOWN)[0]
        if (dropdownElement) {
          const dropdownToggleList = [].slice.call(dropdownElement.querySelectorAll(Selector.DROPDOWN_TOGGLE))
          $(dropdownToggleList).addClass(ClassName.ACTIVE)
        }

        element.setAttribute('aria-expanded', true)
      }

      if (callback) {
        callback()
      }
    }

    // Static

    static _jQueryInterface(config) {
      return this.each(function () {
        const $this = $(this)
        let data = $this.data(DATA_KEY)

        if (!data) {
          data = new Tab(this)
          $this.data(DATA_KEY, data)
        }

        if (typeof config === 'string') {
          if (typeof data[config] === 'undefined') {
            throw new TypeError(`No method named "${config}"`)
          }
          data[config]()
        }
      })
    }
  }

  /**
   * ------------------------------------------------------------------------
   * Data Api implementation
   * ------------------------------------------------------------------------
   */

  $(document)
    .on(Event.CLICK_DATA_API, Selector.DATA_TOGGLE, function (event) {
      event.preventDefault()
      Tab._jQueryInterface.call($(this), 'show')
    })

  /**
   * ------------------------------------------------------------------------
   * jQuery
   * ------------------------------------------------------------------------
   */

  $.fn[NAME] = Tab._jQueryInterface
  $.fn[NAME].Constructor = Tab
  $.fn[NAME].noConflict = function () {
    $.fn[NAME] = JQUERY_NO_CONFLICT
    return Tab._jQueryInterface
  }

  return Tab
})(__WEBPACK_IMPORTED_MODULE_0_jquery___default.a)

/* unused harmony default export */ var _unused_webpack_default_export = (Tab);


/***/ }),
/* 11 */
/***/ (function(module, exports, __webpack_require__) {

var __WEBPACK_AMD_DEFINE_FACTORY__, __WEBPACK_AMD_DEFINE_ARRAY__, __WEBPACK_AMD_DEFINE_RESULT__;/*
 * jQuery Highlight plugin
 *
 * Based on highlight v3 by Johann Burkard
 * http://johannburkard.de/blog/programming/javascript/highlight-javascript-text-higlighting-jquery-plugin.html
 *
 * Code a little bit refactored and cleaned (in my humble opinion).
 * Most important changes:
 *  - has an option to highlight only entire words (wordsOnly - false by default),
 *  - has an option to be case sensitive (caseSensitive - false by default)
 *  - highlight element tag and class names can be specified in options
 *
 * Usage:
 *   // wrap every occurrence of text 'lorem' in content
 *   // with <span class='highlight'> (default options)
 *   $('#content').highlight('lorem');
 *
 *   // search for and highlight more terms at once
 *   // so you can save some time on traversing DOM
 *   $('#content').highlight(['lorem', 'ipsum']);
 *   $('#content').highlight('lorem ipsum');
 *
 *   // search only for entire word 'lorem'
 *   $('#content').highlight('lorem', { wordsOnly: true });
 *
 *   // search only for the entire word 'C#'
 *   // and make sure that the word boundary can also
 *   // be a 'non-word' character, as well as a regex latin1 only boundary:
 *   $('#content').highlight('C#', { wordsOnly: true , wordsBoundary: '[\\b\\W]' });
 *
 *   // don't ignore case during search of term 'lorem'
 *   $('#content').highlight('lorem', { caseSensitive: true });
 *
 *   // wrap every occurrence of term 'ipsum' in content
 *   // with <em class='important'>
 *   $('#content').highlight('ipsum', { element: 'em', className: 'important' });
 *
 *   // remove default highlight
 *   $('#content').unhighlight();
 *
 *   // remove custom highlight
 *   $('#content').unhighlight({ element: 'em', className: 'important' });
 *
 *
 * Copyright (c) 2009 Bartek Szopka
 *
 * Licensed under MIT license.
 *
 */

(function (factory) {
    if (true) {
        // AMD. Register as an anonymous module.
        !(__WEBPACK_AMD_DEFINE_ARRAY__ = [__webpack_require__(0)], __WEBPACK_AMD_DEFINE_FACTORY__ = (factory),
				__WEBPACK_AMD_DEFINE_RESULT__ = (typeof __WEBPACK_AMD_DEFINE_FACTORY__ === 'function' ?
				(__WEBPACK_AMD_DEFINE_FACTORY__.apply(exports, __WEBPACK_AMD_DEFINE_ARRAY__)) : __WEBPACK_AMD_DEFINE_FACTORY__),
				__WEBPACK_AMD_DEFINE_RESULT__ !== undefined && (module.exports = __WEBPACK_AMD_DEFINE_RESULT__));
    } else if (typeof exports === 'object') {
        // Node/CommonJS
        factory(require('jquery'));
    } else {
        // Browser globals
        factory(jQuery);
    }
}(function (jQuery) {
    jQuery.extend({
        highlight: function (node, re, nodeName, className, callback) {
            if (node.nodeType === 3) {
                var match = node.data.match(re);
                if (match) {
                    // The new highlight Element Node
                    var highlight = document.createElement(nodeName || 'span');
                    highlight.className = className || 'highlight';
                    // Note that we use the captured value to find the real index
                    // of the match. This is because we do not want to include the matching word boundaries
                    var capturePos = node.data.indexOf( match[1] , match.index );

                    // Split the node and replace the matching wordnode
                    // with the highlighted node
                    var wordNode = node.splitText(capturePos);
                    wordNode.splitText(match[1].length);

                    var wordClone = wordNode.cloneNode(true);
                    highlight.appendChild(wordClone);
                    wordNode.parentNode.replaceChild(highlight, wordNode);
                    if (typeof callback == 'function') {
                        callback(highlight)   
                    }
                    return 1; //skip added node in parent
                }
            } else if ((node.nodeType === 1 && node.childNodes) && // only element nodes that have children
                    !/(script|style)/i.test(node.tagName) && // ignore script and style nodes
                    !(node.tagName === nodeName.toUpperCase() && node.className === className)) { // skip if already highlighted
                for (var i = 0; i < node.childNodes.length; i++) {
                    i += jQuery.highlight(node.childNodes[i], re, nodeName, className, callback);
                }
            }
            return 0;
        }
    });

    jQuery.fn.unhighlight = function (options) {
        var settings = {
          className: 'highlight',
          element: 'span'
        };

        jQuery.extend(settings, options);

        return this.find(settings.element + '.' + settings.className).each(function () {
            var parent = this.parentNode;
            parent.replaceChild(this.firstChild, this);
            parent.normalize();
        }).end();
    };

    jQuery.fn.highlight = function (words, options, callback) {
        var settings = {
          className: 'highlight',
          element: 'span',
          caseSensitive: false,
          wordsOnly: false,
          wordsBoundary: '\\b'
        };

        jQuery.extend(settings, options);

        if (typeof words === 'string') {
          words = [words];
        }
        words = jQuery.grep(words, function(word, i){
          return word != '';
        });
        words = jQuery.map(words, function(word, i) {
          return word.replace(/[-[\]{}()*+?.,\\^$|#\s]/g, '\\$&');
        });

        if (words.length === 0) {
          return this;
        };

        var flag = settings.caseSensitive ? '' : 'i';
        // The capture parenthesis will make sure we can match
        // only the matching word
        var pattern = '(' + words.join('|') + ')';
        if (settings.wordsOnly) {
            pattern =
                (settings.wordsBoundaryStart || settings.wordsBoundary) +
                pattern +
                (settings.wordsBoundaryEnd || settings.wordsBoundary);
        }
        var re = new RegExp(pattern, flag);

        return this.each(function () {
            jQuery.highlight(this, re, settings.element, settings.className, callback);
        });
    };
}));


/***/ }),
/* 12 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_jquery__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_jquery___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_0_jquery__);
/* eslint-disable */

/* eslint-enable */

/* harmony default export */ __webpack_exports__["a"] = (function () {
  var Dropdown = __WEBPACK_IMPORTED_MODULE_0_jquery___default()('nav .dropdown');

  /**
   * Close dropdown, by default Bootstrap leaves it open. Also hide any child
   * menus with aria-hidden.
   */
  var closeMenu = function closeMenu() {
    // Close dropdown, by default Bootstrap leaves it open
    Dropdown.removeClass('open').find('.navbar-touch-caret').attr('aria-expanded', false).find('.fa-caret-up').toggleClass('fa-caret-up fa-caret-down');

    Dropdown.find('.dropdown-menu').attr('aria-hidden', true);
  };

  /**
   * Trigger a menu item to be "opened" or expanded
   */
  var openMenu = function openMenu($elem) {
    closeMenu();

    $elem.addClass('open');
    $elem.find('.navbar-touch-caret').attr('aria-expanded', true).find('.fa-caret-down').toggleClass('fa-caret-down fa-caret-up');

    $elem.find('.dropdown-menu').attr('aria-hidden', false);
  };

  /**
   * If screen width is Desktop return true. 752px according to Bootstrap @media queries,
   * but can be overridden by adding data-grid-float-breakpoint-width="1234" to your <body>
   * tag to override this.
   *
   * @returns {Boolean}
   */
  var isDesktop = function isDesktop() {
    var maxWidth = __WEBPACK_IMPORTED_MODULE_0_jquery___default()('body').data('grid-float-breakpoint-width') || 752;
    return __WEBPACK_IMPORTED_MODULE_0_jquery___default()(document).width() > maxWidth || false;
  };

  /**
   * Handle the "hover" events to open and close the dropdown menus, and some keyboard
   * behaviours, such as "Esc" to close the menu, and spacebar and down key to open it.
   *
   * These keypress handlers differ from the others lower down in that these apply only
   * to navigation elements that have a dropdown menu associated.
   */
  Dropdown.hover(function handleOpenMenu() {
    if (isDesktop()) {
      openMenu(__WEBPACK_IMPORTED_MODULE_0_jquery___default()(this));
    }
  }, function () {
    if (isDesktop()) {
      closeMenu();
    }
  }).keydown(function (event) {
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
        openMenu(__WEBPACK_IMPORTED_MODULE_0_jquery___default()(this));
        break;
      case 27:
        // ESC
        closeMenu();
        break;
      default:
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
  __WEBPACK_IMPORTED_MODULE_0_jquery___default()('nav .nav-item').keydown(function (event) {
    var $next = __WEBPACK_IMPORTED_MODULE_0_jquery___default()(this).next().find('a');
    var $prev = __WEBPACK_IMPORTED_MODULE_0_jquery___default()(this).prev().find('a');
    switch (event.keyCode) {
      case 39:
        // forward [>]
        if ($next.length) {
          $next.focus();
          closeMenu();
        }
        break;
      case 37:
        // backward [<]
        if ($prev.length) {
          $prev.focus();
          closeMenu();
        }
        break;
      default:
        break;
    }
  });

  /**
   * Handler for opening and closing the dropdown menus when you click on the caret toggle
   */
  __WEBPACK_IMPORTED_MODULE_0_jquery___default()('.main-nav .navbar-nav').on('click', '.navbar-touch-caret', function (event) {
    event.stopPropagation();
    event.preventDefault();

    var $parent = __WEBPACK_IMPORTED_MODULE_0_jquery___default()(this).parent('.dropdown');

    if ($parent.hasClass('open')) {
      closeMenu();
    } else {
      openMenu($parent);
    }
  });
});

/***/ }),
/* 13 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_jquery__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_jquery___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_0_jquery__);
/* eslint-disable */

/* eslint-enable */

/* harmony default export */ __webpack_exports__["a"] = (function () {
    // Maori language class to add lang type
    __WEBPACK_IMPORTED_MODULE_0_jquery___default()('.maori').attr('lang', 'mi');

    __WEBPACK_IMPORTED_MODULE_0_jquery___default()('.nonvisual-indicator').addClass('sr-only').removeClass('nonvisual-indicator');
});

/***/ }),
/* 14 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_jquery__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_jquery___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_0_jquery__);
/* eslint-disable */

/* eslint-enable */

/* harmony default export */ __webpack_exports__["a"] = (function () {
  /**
   * Return a cache identifier for storing sitemap data in local storage
   */
  function getCacheId(pageId) {
    return 'sitemap-cache-' + pageId;
  }

  /**
   * Sets some data to the sitemap for the given page
   */
  function setSitemapData(pageId, data) {
    __WEBPACK_IMPORTED_MODULE_0_jquery___default()('#children-' + pageId).html(data);
  }

  /**
   * Given a page ID and some sitemap data, load it into the DOM. Will load from
   * the local cache if available.
   */
  function loadSitemap(pageId) {
    var data = arguments.length > 1 && arguments[1] !== undefined ? arguments[1] : null;

    var sitemapData = data;
    // Attempt to load from cache
    if (data === null && typeof Storage !== 'undefined' && sessionStorage.getItem(getCacheId(pageId)) !== null) {
      sitemapData = sessionStorage.getItem(getCacheId(pageId));
    }
    setSitemapData(pageId, sitemapData);
  }

  /**
   * Constructs a loading animation and sets it to the sitemap data
   */
  function setLoadingMessage($self, pageId) {
    var loadingMessage = $self.data('loading-message');
    setSitemapData(pageId, '<div class="sitemap-loading">\n        <i class="fa fa-spinner fa-pulse" aria-hidden="true"></i>\n        <span class="sr-only">' + loadingMessage + '</span>\n      </div>');
  }

  /**
   * Check for a cached copy of the sitemap data for the requested page, and return
   * whether or not to perform an AJAX request
   */
  function getPerformAjaxRequest($self, pageId) {
    if (typeof Storage !== 'undefined') {
      if (sessionStorage.getItem(getCacheId(pageId)) !== null) {
        loadSitemap(pageId);
        return false;
      }
    }
    setLoadingMessage($self, pageId);
    return true;
  }

  /**
   * Toggle the state of the sitemap section button, either expanded or collapsed
   */
  function toggleButton($button) {
    $button.toggleClass('collapsed').attr('aria-expanded', function (i, val) {
      return val !== 'true';
    });

    var $screenReader = $button.find('.sr-only');

    var screenReaderText = $screenReader.text();
    var screenReaderDataText = $screenReader.attr('data-collapse-text');

    $button.find('.toggleIco').toggleClass('fa-minus fa-plus');

    // Toggle text and data-collapse-text
    $screenReader.text(screenReaderDataText);
    $screenReader.attr('data-collapse-text', screenReaderText);
  }

  __WEBPACK_IMPORTED_MODULE_0_jquery___default()('.sitemap-page').on('click', 'a.sitemap__collapse-action', function (e) {
    e.preventDefault();

    // @todo: Remove passing of reference to $(this) as per AirBnB style guide
    var $self = __WEBPACK_IMPORTED_MODULE_0_jquery___default()(this);
    var pageId = $self.data('page-id');

    toggleButton($self);
    __WEBPACK_IMPORTED_MODULE_0_jquery___default.a.ajax({
      cache: true,
      url: window.location.pathname + '/page/' + pageId,
      beforeSend: function beforeSend() {
        return getPerformAjaxRequest($self, pageId);
      },
      success: function success(data) {
        // Cache so we don't need to perform this AJAX request again
        if (typeof Storage !== 'undefined') {
          sessionStorage.setItem(getCacheId(pageId), data);
        }
        loadSitemap(pageId, data);
      }
    });
  });

  /**
   * Remove the aria-selected attributes that the paypal/bootstrap-accessibility
   * plugin adds to all sitemap toggle anchors.
   */
  __WEBPACK_IMPORTED_MODULE_0_jquery___default()(document).ready(function () {
    __WEBPACK_IMPORTED_MODULE_0_jquery___default()('.sitemap__collapse-action').removeAttr('aria-selected');
  });
});

/***/ }),
/* 15 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_jquery__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_jquery___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_0_jquery__);
/* eslint-disable */

/* eslint-enable */

/* harmony default export */ __webpack_exports__["a"] = (function () {
  __WEBPACK_IMPORTED_MODULE_0_jquery___default()('article[data-highlight]').each(function () {
    var text = __WEBPACK_IMPORTED_MODULE_0_jquery___default()(this).data('highlight');
    __WEBPACK_IMPORTED_MODULE_0_jquery___default()(this).highlight(text, { element: 'mark', className: 'highlight' });
  });
});

/***/ }),
/* 16 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_jquery__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_jquery___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_0_jquery__);
/* eslint-disable */

/* eslint-enable */

/* harmony default export */ __webpack_exports__["a"] = (function () {
  __WEBPACK_IMPORTED_MODULE_0_jquery___default()('input.number').on('keyup', function () {
    var value = __WEBPACK_IMPORTED_MODULE_0_jquery___default()(this).val();
    __WEBPACK_IMPORTED_MODULE_0_jquery___default()(this).val(value.replace(/[a-zA-Z]/g, ''));
  });

  /**
   * Apply a Bootstrap 3 form structure context to the jQuery validator plugin in userforms
   */
  __WEBPACK_IMPORTED_MODULE_0_jquery___default()('.userform, .comments-holder-container form').each(function () {
    if (typeof __WEBPACK_IMPORTED_MODULE_0_jquery___default()(this).validate === 'function') {
      var validatorSettings = __WEBPACK_IMPORTED_MODULE_0_jquery___default()(this).validate().settings;

      validatorSettings.highlight = function (element) {
        __WEBPACK_IMPORTED_MODULE_0_jquery___default()(element).closest('.form-group').addClass('has-error');
      };

      validatorSettings.unhighlight = function (element) {
        __WEBPACK_IMPORTED_MODULE_0_jquery___default()(element).closest('.form-group').removeClass('has-error');
      };

      validatorSettings.errorElement = 'span';
      validatorSettings.errorClass = 'help-block';

      validatorSettings.errorPlacement = function (error, element) {
        if (element.parent('.input-group').length || element.prop('type') === 'checkbox' || element.prop('type') === 'radio') {
          error.insertAfter(element.parent());
        } else {
          error.insertAfter(element);
        }
      };
    }
  });

  // Comments Module - Accesibility for Replies
  var $commentReplyLink = __WEBPACK_IMPORTED_MODULE_0_jquery___default()('.comment-reply-link');

  $commentReplyLink.click(function () {
    __WEBPACK_IMPORTED_MODULE_0_jquery___default()(this).attr('aria-expanded', function (i, val) {
      return val !== 'true';
    });
  });
});

/***/ }),
/* 17 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_jquery__ = __webpack_require__(0);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_jquery___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_0_jquery__);
/* eslint-disable */

/* eslint-enable */

/* harmony default export */ __webpack_exports__["a"] = (function () {
  __WEBPACK_IMPORTED_MODULE_0_jquery___default()('#main img').addClass('img-responsive');

  __WEBPACK_IMPORTED_MODULE_0_jquery___default()('#main div .captionImage.right').removeClass('right').addClass('pull-right');

  __WEBPACK_IMPORTED_MODULE_0_jquery___default()('#main div .captionImage.left').removeClass('left').addClass('pull-left');

  __WEBPACK_IMPORTED_MODULE_0_jquery___default()('#main div .captionImage.center').removeClass('center').addClass('center-block');

  __WEBPACK_IMPORTED_MODULE_0_jquery___default()('#main img.center').removeClass('center').addClass('center-block');
});

/***/ }),
/* 18 */
/***/ (function(module, exports) {

// removed by extract-text-webpack-plugin

/***/ }),
/* 19 */
/***/ (function(module, exports) {

// removed by extract-text-webpack-plugin

/***/ })
/******/ ]);