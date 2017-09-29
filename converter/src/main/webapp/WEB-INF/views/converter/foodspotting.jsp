
<!DOCTYPE html>
<html lang='en'>
<head><script type="text/javascript">var NREUMQ=NREUMQ||[];NREUMQ.push(["mark","firstbyte",new Date().getTime()]);</script>
<title>Foodspotting</title>
<meta charset='utf-8'>
<meta content='width=device-width,initial-scale=1,maximum-scale=1,user-scalable=0' name='viewport'>
<meta content='app-id=350727118' name='apple-itunes-app'>
<meta content='' name='description'>
<meta content='' name='keywords'>
<meta content='38883394' property='twitter:user_id'>
<!--[if (!IE)|(gte IE 8)]><!-->
<link href="/assets/base-datauri.css?1467717558" media="all" rel="stylesheet" type="text/css" />
<!--<![endif]-->
<!--[if lte IE 7]>
<link href="/assets/base-mhtml.css?1467717558" media="all" rel="stylesheet" type="text/css" />
<![endif]-->
<meta name="csrf-param" content="authenticity_token"/>
<meta name="csrf-token" content="mt7GQfPotpbxUbMAStzQr8JJ&#47;&#47;cY&#47;Ax+UNjffapvZmg="/>
<script>
  //<![CDATA[
    // Number chruncher
          _fst = [];
          function ncTrack(evt) {
            // No-op
          }
          function ncTrackNow(evt) {
            // No-op
          }
          _fst.signedin = false;
                _fst.debug = false;
          _fst.endPoint = "https://nc.foodspotting.com/tk";
    
    
    ncScreen = 'find';
  //]]>
</script>


<!--[if IE]>
<link href="/stylesheets/ie.css?1468514231" media="screen" rel="stylesheet" type="text/css" />
<![endif]-->
<!--[if IE 7]>
<link href="/stylesheets/ie7.css?1468514231" media="screen" rel="stylesheet" type="text/css" />
<![endif]-->
<!--[if IE 8]>
<link href="/stylesheets/ie8.css?1468514231" media="screen" rel="stylesheet" type="text/css" />
<![endif]-->
<!--[if IE 9]>
<link href="/stylesheets/ie9.css?1468514231" media="screen" rel="stylesheet" type="text/css" />
<![endif]-->
<!--[if lt IE 9]>
<script src='//html5shim.googlecode.com/svn/trunk/html5.js'></script>
<![endif]-->
<link href='/favicon.ico' rel='shortcut icon'>
<style>
  /*<![CDATA[*/
    @media screen and (min-width : 320px) {
      .container { width: 260px !important; }
      /*#main-content { height: 360px; width: 220px; }*/
      /*#map-canvas { height: 360px; width: 220px; }*/
      .btn-group { margin-bottom: 20px }
      #tab-bar {display: none; }
      #sort-dropdown { display: auto; }
      /*h1 {text-align: left;}*/
    }
    @media screen and (min-width : 500px) {
      .container { width: 500px !important; }
       /*#main-content { height: 360px; width: 460px; }*/
       /*#map-canvas { height: 360px; width: 460px; }*/
       #tab-bar {display: none; }
       #sort-dropdown { display: auto; }
       /*h1 {text-align: center;}*/
    }
    @media screen and (min-width : 740px) {
      .container { width: 740px !important; }
      /*#main-content { height: 360px; width: 700px; }*/
      /*#map-canvas { height: 360px; width: 700px; }*/
      #tab-bar {display: block; }
      #sort-dropdown { display: none; }
      /*h1 {text-align: left;}*/
    }
    @media screen and (min-width : 1000px) {
      .container { width: 980px !important; }
      /*#main-content { height: 360px; width: 940px; }*/
      /*#map-canvas { height: 360px; width: 940px; }*/
      #tab-bar {display: block; }
      #sort-dropdown { display: none; }
      /*h1 {text-align: left;}*/
    }
  /*]]>*/
</style>
</head>
<body id='layout-explore'>
<div id='modal' style='display:none'>
<div class='wrapper thin'>
<a href="#" id="close-modal" onclick="FS.clear_modal(); return false;"><span class="ss-delete"></span></a>
<div class='card' id='modal-content'></div>
</div>
<div id='modal-screen'></div>
</div>

<div id='tooltip' style='display:none'>
<div class='content'></div>
<div class='pointer'></div>
</div>


<div class='clearfix' id='header'>
<div class='clearfix' id='nav-bar'>
<div class='content'>
<a href="/" id="logo" rel="nofollow"><img alt="Foodspotting" src="/images/redesign/logo@2x.png?1468512103" /></a>
<div id='person_actions'>
<div class='logged-out-actions'>
<strong class='sign-in'><a href="#" onclick="FS.authenticate(function() {}, &quot;login&quot;); return false;">Sign in</a></strong>
</div>
</div>
<div id='notifications-dropdown' style='display:none'>
<div class='arrow-up ss-directup'></div>
<menu>
<li class='loading'>
<span class='loading'>Loading notifications...</span>
</li>
<li class='load-more' style='display:none'>
<a href="#" onclick="; return false;">View all notifications</a>
</li>
</menu>
</div>
<ul class='mobile-nav-items'>
<li><a href="#" onclick="set_nav_active('search-form', this);$('#query').focus();; return false;"><span class="ss-icon">Search</span></a></li>
<li><a href="#" onclick="FS.authenticate(function() {}, &quot;login&quot;); return false;"><span class="ss-plus"></span><span class="ss-icon">User</span></a></li>
<li><a href="#" onclick="set_nav_active('nav-bar-items', this);$(this).toggleClass('on'); return false;"><span class="ss-icon">Rows</span></a></li>
</ul>
<div id='share-this'>
<a class="button secondary" href="#" id="share-this-toggle" onclick="$('#share-this-menu').toggle(); return false;" title="Share this page"><span class="ss-action"></span></a>
<div class='dropdown' id='share-this-menu' style='display:none'>
<div class='arrow-up ss-directup'></div>
<ul>
<li>
<strong>Share this page</strong>
</li>
<li><a href="#" onclick="share_this('facebook'); return false;"><span class="ss-icon ss-social">facebook</span> Facebook</a></li>
<li><a href="#" onclick="share_this('twitter'); return false;"><span class="ss-icon ss-social">twitter</span> Twitter</a></li>
<li><a href="#" onclick="share_this('email'); return false;"><span class="ss-mail"></span> Email</a></li>
</ul>
</div>
</div>
<form accept-charset='UTF-8' class='navbar-search right' id='search-form' onsubmit='return false;'>
<div class='dropdown' id='search-box'>
<div class='ss-delete' style='display:none'></div>
<a id='search-button-mobile'>
<span class='ss-icon'>Search</span>
</a>
<a id='search-button'>
<span class='ss-search'></span>
</a>
<div class='live-search' id='genius-search'>
<div class='spinner' style='display:none'><img alt="Spinner" src="/images/spinner.gif?1468512103" /></div>
<input autocomplete='off' id='query' name='query' onkeydown='if(event.keyCode == 9) {return false;}' placeholder='Search by dish, restaurant or person' type='text'>
<div class='results-container' style='position:absolute'>
<ul class='results' id='genius_results' style='display: none;'>
<li class='status'>Start typing to get suggestions...</li>
</ul>
</div>
</div>
</div>
</form>
<ul class='nav-items' id='nav-bar-items'>
<li class='item on'>
<a href="/find" rel="nofollow"><strong>Find</strong><span>Great Dishes</span></a>
</li>
<li class='item'>
<a href="/share" rel="nofollow"><strong>Share</strong><span>Great Dishes</span></a>
</li>
</ul>
</div>
</div>
<script>
  //<![CDATA[
    set_nav_active = function(nav_item, target) {
      console.log($(target));
      $('.mobile-nav-items .on').each(function() {
        console.log($(this));
        if($(this) != $(target)) {
          $(this).removeClass('on');
        }
      });
      jQuery.each(['search-form', 'mini-menu', 'nav-bar-items'], function() {
        if(nav_item != this) {
          $('#'+this).removeClass('visible');
        }
      });
      $('#'+nav_item).toggleClass('visible');
    }
    share_this = function(action) {
      var share_link = window.location.href;
      var share_text = FS.get_page_title();
      var offset_left = ($(window).width()/2)-250;
      var offset_top  = ($(window).height()/2)-140;
      console.log(offset_top);
      
      var subscreen = FS.app[FS.app.current_view].params.get('sort');
      ncTrack({screen: ncScreen, subscreen: subscreen, action: 'shared', subaction: action});
    
      switch(action) {
      case 'facebook':
        var share_image = "";
        if (image = $('.sightinglist .photo-link img').first()) {
          share_image = image.attr("src");
        }
        facebook_url = "http://www.facebook.com/dialog/feed?app_id=308918024569&link="+share_link+"&name="+share_text+"&picture="+share_image+"&display=popup&redirect_uri=http://www.foodspotting.com/close";
        console.log(facebook_url);
        window.open(facebook_url, 'facebook_share', 'status=1,toolbar=0,location=0,width=500,height=260,left='+offset_left+',top='+offset_top);
        break;
      case 'twitter':
        var twitter_url = "https://twitter.com/share?url="+share_link+"&text="+share_text;
        window.open(twitter_url, 'twitter_share', 'status=1,toolbar=0,location=0,width=500,height=260,left='+offset_left+',top='+offset_top);
        break;
      case 'email':
        subject = share_text;
        email_link = "mailto:?body="+share_link+"&subject="+subject;
        window.open(email_link, 'email');
        break;
      case 'clipboard':
        alert(action);
        break;
      }
      $('#share-this-menu').hide();
    }
  //]]>
</script>

<div id='flash_notice' style='display:none'>
<div id='flash_notice_text'>Your search did not yield any results</div>
</div>
</div>
<div class='wrapper clearfix' id='container'>
<!--[if lt IE 8]>
<div class="unsupported">
  <b>Foodspotting does not fully support your browser.</b><br>
  Please <a href="http://windows.microsoft.com/en-us/internet-explorer/products/ie/home">upgrade to IE9</a>, or install
  <a href="https://www.google.com/intl/en/chrome/browser/">Google Chrome</a> for free.
</div>
<![endif]-->

<div class='clearfix' id='content'>
<div class='hgroup clearfix'>
<h1 id='main-title'>Find Dishes</h1>
<div class='main-controls clearfix'>
<!-- navigation -->
<ul id='filters'>
<li class='active' id='filter-all-overview'>
<a href='#'>Overview</a>
</li>
<li id='filter-all-latest'>
<a href='#'>Latest</a>
</li>
<li id='filter-all-best'>
<a href='#'>Best</a>
</li>
<li id='filter-following-nearby'>
<a href='#'>Following</a>
</li>
<li id='filter-guides-nearby'>
<a href='#'>Guides</a>
</li>
<li id='filter-me'>
<a class='filter-me-link dropdown-target' href='#'>
Me
<span class='ss-dropdown' id='me-dropdown'></span>
</a>
<div class='dropdown' id='filter-me-dropdown'>
<div class='arrow-up ss-directup'></div>
<ul>
<li id='filter-me-nearby'>
<a href='#'>All Mine</a>
</li>
<li id='filter-wanted-nearby'>
<a href='#'>Wanted</a>
</li>
<li id='filter-tried-nearby'>
<a href='#'>Tried</a>
</li>
<li id='filter-loved-nearby'>
<a href='#'>Loved</a>
</li>
</ul>
</div>
</li>
<!-- %li#filter-deals-nearby -->
<!-- %a{:href => "#"} Specials -->
</ul>
<!-- location -->
<form action='' id='explore-location' onsubmit='return false;'>
<span class='ss-navigate tooltip' data-title='Get current location' onclick="$('#addresspicker_map').val('Current Location');FS.app.location_manager.determineCurrentPosition();"></span>
<span class='ss-dropdown' onclick="$('#addresspicker_map').focus()"></span>
<input id='addresspicker_map' placeholder='Set your location...' type='text'>
<div id='results'></div>
</form>
</div>
</div>
<div class='card explore'>
<div id='main-content'>
<!-- loading -->
<div class='map-loader' id='loading'>Scan for foods in map area</div>
<!-- map -->
<div id='map-canvas'></div>
</div>
<div class='grid-row' id='coverflow'>
<!-- sightings -->
</div>
</div>
<div id='loading-sightings-scroll' style='display:none'></div>
<div id='loading-sightings-button' style='display:none'>
<a class="button secondary full" href="#" onclick="; return false;">Load more...</a>
</div>

</div>
</div>
<script src='//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js'></script>
<script src='//maps.googleapis.com/maps/api/js?v=3&amp;libraries=geometry&amp;key=AIzaSyAgZwpsNaMwDcRG9EaAmmuA9nqsnj_zBz8'></script>
<script>
  //<![CDATA[
    major_version = parseInt(jQuery.browser.version, 10);
    // If less than Safari 5.1 (webkit version 534.48.3)
    if(jQuery.browser.safari && major_version < 534) {
      $('#container').prepend('<div class="unsupported"><b>Foodspotting does not fully support your browser.</b> Please <a href="http://support.apple.com/kb/index?page=search&src=support_site.results.disambiguation&q=Updating%20Safari%205">upgrade Safari</a>.</div>')
    }
    
    window.RAILS_ENV = "production";
    window.FS  = {};
    FS.user_city = null;
    FS.user_location = false;
    FS.authed = false;
    FS.person_id = false;
  //]]>
</script>


<div id='footer'>
<!-- Foodspotting migration: 1 -->
<div class='mobile-feature'>
<div class='wrapper clearfix'>
<div class='press-feature'></div>
<div class='footer-phones'></div>
<div class='text'>
<h1>Find &amp; share great dishes, not just restaurants.</h1>
<p>Find whatever you're craving, see what's good at any restaurant and learn what foodspotters, friends and experts love wherever you go.</p>
<p>
Share great dishes using our apps or by tagging food photos
<a href="http://foodspotting.uservoice.com/knowledgebase/articles/52275-4-how-can-i-post-to-foodspotting-using-instagram" rel="follow" target="_blank">#foodspotting on Instagram</a>
</p>
</div>
<div class='mobile-platforms button-group left'>
<a href="http://itunes.apple.com/us/app/foodspotting/id350727118?mt=8" class="button large" rel="me" target="_blank"><span class="app-icon iphone"></span> Download for iPhone</a>
<a href="https://market.android.com/details?id=com.foodspotting" class="button large" rel="me" target="_blank"><span class="app-icon android"></span> Download for Android</a>
<a href="http://www.windowsphone.com/en-US/apps/55b55f3e-649b-e011-986b-78e7d1fa76f8" class="button large circle tooltip" rel="me" target="_blank" title="Windows Phone"><span class="app-icon windows single"></span></a>
<a href="http://appworld.blackberry.com/webstore/content/32713" class="button large circle tooltip" rel="me" target="_blank" title="Blackberry"><span class="app-icon blackberry single"></span></a>
</div>
</div>
</div>
<div class='web-features wrapper'>
<div class='pods grid-row'>
<div class='pod span3'>
<a href="/about" class="image about" rel="follow"></a>
<div class='text'>
<h4>About Foodspotting</h4>
Meet the app &amp; join our team!
</div>
</div>
<div class='pod span3'>
<a href="/blog" class="image blog" rel="follow"></a>
<div class='text'>
<h4>Read Our Blog</h4>
Discover great dishes with us.
</div>
</div>
<div class='pod span3'>
<a href="/book" class="image book" rel="follow"></a>
<div class='text'>
<h4>Book</h4>
Check out our field guide.
</div>
</div>
<div class='pod span3'>
<a href="/about/assets" class="image goods" rel="nofollow"></a>
<div class='text'>
<h4>Goodspotting</h4>
Get widgets, assets & t-shirts!
</div>
</div>
</div>
</div>
<div class='copy wrapper'>
<div class='social-footer'>
<a href="http://www.facebook.com/foodspotting" class="facebook" rel="me" target="_blank"><span class="ss-icon ss-social-circle">Facebook</span></a>
<a href="http://www.twitter.com/foodspotting" class="twitter" rel="me" target="_blank"><span class="ss-icon ss-social-circle">Twitter</span></a>
<a href="https://plus.google.com/108089624005932415102" class="google-plus" rel="me" target="_blank"><span class="ss-icon ss-social-circle">GooglePlus</span></a>
</div>
<strong>&copy;2017 Foodspotting, LLC. - 1 Montgomery St, Suite 700 San Francisco, CA 94104</strong>
<a href="/terms" rel="follow">Terms of Service</a>
<span>&middot;</span>
<a href="/privacy" rel="follow">Privacy Policy</a>
<span>&middot;</span>
<a href="/about/contact" rel="follow">Contact Us</a>
<span>&middot;</span>
<a href="http://foodspotting.uservoice.com" rel="nofollow" target="_blank">Support &amp; FAQ</a>
<div class='clearfix' style='padding-top:20px'>
<strong style='display:inline'>Top Cities:</strong>
<a href="/find/best/in/San-Francisco-CA" rel="follow">San Francisco, CA</a> <span>&middot;</span> <a href="/find/best/in/New-York-NY" rel="follow">New York, NY</a> <span>&middot;</span> <a href="/find/best/in/Los-Angeles-CA" rel="follow">Los Angeles, CA</a> <span>&middot;</span> <a href="/find/best/in/Quezon-City-Philippines" rel="follow">Quezon City, Philippines</a> <span>&middot;</span> <a href="/find/best/in/Philadelphia-PA" rel="follow">Philadelphia, PA</a> <span>&middot;</span> <a href="/find/best/in/Chicago-IL" rel="follow">Chicago, IL</a> <span>&middot;</span> <a href="/find/best/in/Toronto-Canada" rel="follow">Toronto, Canada</a> <span>&middot;</span> <a href="/find/best/in/Sydney-Australia" rel="follow">Sydney, Australia</a> <span>&middot;</span> <a href="/find/best/in/Singapore" rel="follow">Singapore</a> <span>&middot;</span> <a href="/find/best/in/London-UK" rel="follow">London, UK</a>
<span>&middot;</span>
<a href="/cities" rel="follow">More cities</a>
</div>
</div>
</div>


<script type='text/javascript'>
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type='text/javascript'>
try {
  var pageTracker = _gat._getTracker("UA-10073389-1");
  pageTracker._trackPageview();
} catch(err) {}
</script>
<script src='http://edge.quantserve.com/quant.js' type='text/javascript'></script>
<noscript>
<img alt='Quantcast' height='1' src='http://pixel.quantserve.com/pixel/p-67HM1Vig24MFw.gif' style='display: none;' width='1'>
</noscript>

<script src="/assets/vendor.js?1467717415" type="text/javascript"></script>
<script src="/assets/explore.js?1467717415" type="text/javascript"></script>
<script type='text/javascript'>
var _kiq = _kiq || []
</script>
<script async='true' src='//s3.amazonaws.com/j.kissinsights.com/u/5809/c22b9a859d0f06f366ba29866e085afb4b07cdca.js' type='text/javascript'></script>
<script type="text/javascript">if (!NREUMQ.f) { NREUMQ.f=function() {
NREUMQ.push(["load",new Date().getTime()]);
var e=document.createElement("script");
e.type="text/javascript";
e.src=(("http:"===document.location.protocol)?"http:":"https:") + "//" +
  "js-agent.newrelic.com/nr-100.js";
document.body.appendChild(e);
if(NREUMQ.a)NREUMQ.a();
};
NREUMQ.a=window.onload;window.onload=NREUMQ.f;
};
NREUMQ.push(["nrfj","bam.nr-data.net","bd9c42ad04","686657","egtWRxRaXVlSRRhVQUkIV0EDGlhbU1JP",1505161793896,13,new Date().getTime(),"","","","",""]);</script></body>
</html>
