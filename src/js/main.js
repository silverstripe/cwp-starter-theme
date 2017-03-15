// Define globally exposed module objects
/* eslint-disable */
// Define dependency imports
import transition from 'bootstrap-sass/assets/javascripts/bootstrap/transition';
import collapse from 'bootstrap-sass/assets/javascripts/bootstrap/collapse';
import dropdown from 'bootstrap-sass/assets/javascripts/bootstrap/dropdown';
import carousel from 'bootstrap-sass/assets/javascripts/bootstrap/carousel';
import tooltip from 'bootstrap-sass/assets/javascripts/bootstrap/tooltip';
import popover from 'bootstrap-sass/assets/javascripts/bootstrap/popover';
import modal from 'bootstrap-sass/assets/javascripts/bootstrap/modal';
import tab from 'bootstrap-sass/assets/javascripts/bootstrap/tab';
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
