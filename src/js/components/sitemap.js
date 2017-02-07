import $ from 'jquery';

export default function () {
  const $CollapseBtn = $('a.sitemap_collapse-action');

  $CollapseBtn.click(function () {
    const $this = $(this);
    const $toggleIco = $this.find('.toggleIco');
    const $screenReader = $this.find('.sr-only');
    const $screenReaderText = $screenReader.text();
    const $screenReaderDataText = $screenReader.attr('data-collapse-text');

    $this.toggleClass('collapsed');
    $this.attr('aria-expanded', (i, val) => val !== 'true');
    $toggleIco.toggleClass('fa-minus fa-plus');
    // Toggle text and data-collapse-text
    $screenReader.text($screenReaderDataText);
    $screenReader.attr('data-collapse-text', $screenReaderText);
  });
}
