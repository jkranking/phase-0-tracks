// $('li').on('click', function() {
//   $("").delay(800).fadeOut(400);
// });

  // Element Selectors
    // $('li')
    // $('a')
    // $('img')
    // $('p')
  // Descendant Selectors
    // $('p a')
  // Classes and IDs
    // $('.blog-post');
    // $('#about');
  // Attribute Selectors
    // $([name='newsletter']);

  $( "img" ).hide();

  $( "p" ).click(function() {
  $( "img" ).fadeIn( 3000 );
});

  $('button').on('click',function() {
  $('a').attr('href', 'https://github.com/');
});  