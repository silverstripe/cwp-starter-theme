// Define globally exposed module objects
require('expose-loader?jquery!jquery');

// Define dependency imports
/* eslint-disable */
import collapse from 'bootstrap-sass/assets/javascripts/bootstrap/collapse';
import tab from 'bootstrap-sass/assets/javascripts/bootstrap/tab';
import dropdown from 'bootstrap-sass/assets/javascripts/bootstrap/dropdown';
import highlight from 'jquery-highlight/jquery.highlight';
/* eslint-enable */

// Define local components
import navigation from './components/navigation';
import content from './components/content';
import sitemap from './components/sitemap';
import search from './components/search';
import form from './components/form';
import img from './components/img';

navigation();
content();
sitemap();
search();
form();
img();
