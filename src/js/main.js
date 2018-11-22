// Define globally exposed module objects
/* eslint-disable */
// Define dependency imports
import util from 'bootstrap/js/dist/util';
import collapse from 'bootstrap/js/dist/collapse';
import dropdown from 'bootstrap/js/dist/dropdown';
import carousel from 'bootstrap/js/dist/carousel';
import tooltip from 'bootstrap/js/dist/tooltip';
import popover from 'bootstrap/js/dist/popover';
import modal from 'bootstrap/js/dist/modal';
import tab from 'bootstrap/js/dist/tab';
import highlight from 'jquery-highlight/jquery.highlight';

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
/* eslint-enable */
