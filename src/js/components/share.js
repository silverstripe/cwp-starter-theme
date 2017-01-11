import $ from 'jquery';

export default function () {
  $('.share-links .share-links-print').on('click', (e) => {
    e.preventDefault();
    e.stopPropagation();

    window.print();
  });

  $('.share-links .share-links-facebook').on('click', (e) => {
    e.preventDefault();
    e.stopPropagation();

    window.open(
            `https://www.facebook.com/sharer/sharer.php?u=${window.location.href}`,
            'Share via Facebook',
            'resizable,width=800,height=600,centerscreen',
        );
  });

  $('.share-links .share-links-twitter').on('click', (e) => {
    e.preventDefault();
    e.stopPropagation();

    window.open(
            `https://twitter.com/home?status=${window.location.href}`,
            'Share via Twitter',
            'resizable,width=800,height=600,centerscreen',
        );
  });
}
