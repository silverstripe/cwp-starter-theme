import $ from 'jquery';

export default function () {
  /* eslint-disable */
  if (typeof searchQuery !== 'undefined') {
      $('article.result').highlight(searchQuery.query, { element: 'mark', className: 'highlight' });
  }
  /* eslint-enable */
}
