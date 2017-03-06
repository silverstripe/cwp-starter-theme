import $ from 'jquery';

export default function () {
  $('article[data-highlight]').each(function () {
    const text = $(this).data('highlight');
    $(this).highlight(text, { element: 'mark', className: 'highlight' });
  });
}
