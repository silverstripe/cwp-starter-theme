import $ from 'jquery';
/* eslint-disable */
import collapse from 'bootstrap-sass/assets/javascripts/bootstrap/collapse';
import tab from 'bootstrap-sass/assets/javascripts/bootstrap/tab';
import dropdown from 'bootstrap-sass/assets/javascripts/bootstrap/dropdown';
import highlight from 'jquery-highlight/jquery.highlight';
/* eslint-enable*/
import search from './components/search';
import share from './components/share';
import img from './components/img';

search();
share();
img();

$('.nonvisual-indicator').addClass('sr-only').removeClass('nonvisual-indicator');
