X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["18259" "Tuesday" "16" "June" "2015" "11:04:49" "-0700" "Aaron Patterson" "tenderlove@ruby-lang.org" "<20150616180449.GB28496@TC.local>" "551" "[oss-security] [CVE-2015-1840] CSRF Vulnerability in jquery-ujs and jquery-rails" nil nil nil "6" "2015061618:04:49" "[oss-security] [CVE-2015-1840] CSRF Vulnerability in jquery-ujs and jquery-rails" (number mark "U       tenderlove@r Jun 16  551/18259 " thread-indent "\"[oss-security] [CVE-2015-1840] CSRF Vulnerability in jquery-ujs and jquery-rails\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12094 invoked by uid 550); 16 Jun 2015 18:05:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11513 invoked from network); 16 Jun 2015 18:05:05 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-type:content-disposition:user-agent;
        bh=3ZvjFpX5aUNenk2twdHaVfVIehne8SCPUlRga8S59d0=;
        b=l6xErk55BlC/1RRq40gmmO4Kz3kikmRmdZP6ycxfKm2IbzDpIOKQizKtCpn57ISIVf
         aXQXQmWa3d14vlbt7UU0eCdbd97cnOyK4aV305zodBfAeZZ+/oXfHcNkX3Zfk3447plT
         JRCnLgeQ3jhOLuDpmrFL4RsMsVUUt0OpkTAVWGDkm4zTpCaNpnQRzX9xDnsQDO9/I5dB
         vX2JmNnB0aSheq9tjRKfv+UiCi+BtIygn77LGWIgTjzX1ACcdcW5VgudxsQmEMM4s09+
         mc3BSbdyLPhpazrUqh+g4fI2pspEqxte83xUu7yqkQRPiiRGBhJ04YS6Yuy91wnmumKa
         uLNA==
X-Gm-Message-State: ALoCoQkDO7kusugxLk9Q4YUcsP4okdAerkTa2GGbHR5j9b+O2oZxP4zhkeTJE2mr0lX/xi+5Ex8F
X-Received: by 10.70.135.168 with SMTP id pt8mr2967896pdb.8.1434477893974;
        Tue, 16 Jun 2015 11:04:53 -0700 (PDT)
Sender: Aaron Patterson <aaron@tenderlovemaking.com>
Date: Tue, 16 Jun 2015 11:04:49 -0700
From: Aaron Patterson <tenderlove@ruby-lang.org>
To: security@suse.de, rubyonrails-security@googlegroups.com,
	oss-security@lists.openwall.com, ruby-security-ann@googlegroups.com
Message-ID: <20150616180449.GB28496@TC.local>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="n/aVsWSeQ4JHkrmm"
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [oss-security] [CVE-2015-1840] CSRF Vulnerability in jquery-ujs and jquery-rails

--n/aVsWSeQ4JHkrmm
Content-Type: multipart/mixed; boundary="H8ygTp4AXg6deix2"
Content-Disposition: inline


--H8ygTp4AXg6deix2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

CSRF Vulnerability in jquery-ujs and jquery-rails

There is an vulnerability in jquery-ujs and jquery-rails that can be used to
bypass CSP protections and allows attackers to send CSRF tokens to attacker=
 domains.

This vulnerability has been assigned the CVE identifier CVE-2015-1840.

Versions Affected:  All.
Not affected:       Applications which don't use jquery-ujs or jquery-rails.
Fixed Versions:     jquery-rails versions 4.0.4 and 3.1.3 and jquery-ujs 1.=
0.4.

Impact
------
In the scenario where an attacker might be able to control the href attribu=
te of an anchor tag or
the action attribute of a form tag that will trigger a POST action, the att=
acker can set the
href or action to " https://attacker.com" (note the leading space) that wil=
l be passed to JQuery,
who will see this as a same origin request, and send the user's CSRF token =
to the attacker domain.

Releases
--------
The FIXED releases are available at the normal locations.

Workarounds
-----------
To work around this problem, change code that allows users to control the h=
ref attribute of an anchor
tag or the action attribute of a form tag to filter the user parameters.

For example, code like this:

    link_to params

to code like this:

    link_to filtered_params

    def filtered_params
      # Filter just the parameters that you trust
    end

Patches
-------
To aid users who aren't able to upgrade immediately we have provided patche=
s for the
supported release series. They are in git-am format and consist of a single=
 changeset.

* 1-0-3-jquery_ujs_csrf.patch - Patch for jquery-ujs 1.0.3.

* 3-1-2-jquery-rails-csrf.patch - Patch for jquery-rails 3.1.2.
* 4-0-3-jquery-rails-csrf.patch - Patch for jquery-rails 4.0.3.

Credits
-------

Thanks to Ben Toews of GitHub for reporting the vulnerability to us, and wo=
rking with us on a fix.

--=20
Aaron Patterson
http://tenderlovemaking.com/

--H8ygTp4AXg6deix2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="1-0-3-jquery_ujs_csrf.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 96561a2ac0fab58e3e248458e19003e09f106ec4 Mon Sep 17 00:00:00 2001
From: =3D?UTF-8?q?Rafael=3D20Mendon=3DC3=3DA7a=3D20Fran=3DC3=3DA7a?=3D
 <rafaelmfranca@gmail.com>
Date: Wed, 25 Mar 2015 17:23:33 -0300
Subject: [PATCH] Properly check if the request is cross domain

Fix CVE-2015-1840
---
 src/rails.js                              | 31 ++++++++++++++++++++++++---=
---
 test/public/test/call-remote-callbacks.js | 14 --------------
 test/public/test/call-remote.js           | 32 ---------------------------=
----
 test/public/test/data-method.js           | 26 +++++++++++++++++++++++++
 test/public/test/override.js              |  2 +-
 5 files changed, 52 insertions(+), 53 deletions(-)

diff --git a/src/rails.js b/src/rails.js
index a4fb0be..1ee8859 100644
--- a/src/rails.js
+++ b/src/rails.js
@@ -86,16 +86,14 @@
=20
     // Default way to get an element's href. May be overridden at $.rails.=
href.
     href: function(element) {
-      return element.attr('href');
+      return element[0].href;
     },
=20
     // Submits "remote" forms and links with ajax
     handleRemote: function(element) {
-      var method, url, data, elCrossDomain, crossDomain, withCredentials, =
dataType, options;
+      var method, url, data, withCredentials, dataType, options;
=20
       if (rails.fire(element, 'ajax:before')) {
-        elCrossDomain =3D element.data('cross-domain');
-        crossDomain =3D elCrossDomain =3D=3D=3D undefined ? null : elCross=
Domain;
         withCredentials =3D element.data('with-credentials') || null;
         dataType =3D element.data('type') || ($.ajaxSettings && $.ajaxSett=
ings.dataType);
=20
@@ -147,7 +145,7 @@
           error: function(xhr, status, error) {
             element.trigger('ajax:error', [xhr, status, error]);
           },
-          crossDomain: crossDomain
+          crossDomain: rails.isCrossDomain(url)
         };
=20
         // There is no withCredentials for IE6-8 when
@@ -167,6 +165,27 @@
       }
     },
=20
+    // Determines if the request is a cross domain request.
+    isCrossDomain: function(url) {
+      var originAnchor =3D document.createElement("a");
+      originAnchor.href =3D location.href;
+      var urlAnchor =3D document.createElement("a");
+
+      try {
+        urlAnchor.href =3D url;
+        // This is a workaround to a IE bug.
+        urlAnchor.href =3D urlAnchor.href;
+
+        // Make sure that the browser parses the URL and that the protocol=
s and hosts match.
+        return !urlAnchor.protocol || !urlAnchor.host ||
+          (originAnchor.protocol + "//" + originAnchor.host !=3D=3D
+            urlAnchor.protocol + "//" + urlAnchor.host);
+      } catch (e) {
+        // If there is an error parsing the URL, assume it is crossDomain.
+        return true;
+      }
+    },
+
     // Handles "data-method" on links such as:
     // <a href=3D"/users/5" data-method=3D"delete" rel=3D"nofollow" data-c=
onfirm=3D"Are you sure?">Delete</a>
     handleMethod: function(link) {
@@ -178,7 +197,7 @@
         form =3D $('<form method=3D"post" action=3D"' + href + '"></form>'=
),
         metadataInput =3D '<input name=3D"_method" value=3D"' + method + '=
" type=3D"hidden" />';
=20
-      if (csrfParam !=3D=3D undefined && csrfToken !=3D=3D undefined) {
+      if (csrfParam !=3D=3D undefined && csrfToken !=3D=3D undefined && !r=
ails.isCrossDomain(href)) {
         metadataInput +=3D '<input name=3D"' + csrfParam + '" value=3D"' +=
 csrfToken + '" type=3D"hidden" />';
       }
=20
diff --git a/test/public/test/call-remote-callbacks.js b/test/public/test/c=
all-remote-callbacks.js
index c1791f6..ad306a3 100644
--- a/test/public/test/call-remote-callbacks.js
+++ b/test/public/test/call-remote-callbacks.js
@@ -64,20 +64,6 @@ asyncTest('modifying data("type") with "ajax:before" req=
uests new dataType in re
   });
 });
=20
-asyncTest('setting data("cross-domain",true) with "ajax:before" uses new s=
etting in request', 2, function(){
-  $('form[data-remote]').data('cross-domain',false)
-    .bind('ajax:before', function() {
-      var form =3D $(this);
-      form.data('cross-domain',true);
-    });
-
-  submit(function(form) {
-    form.bind('ajax:beforeSend', function(e, xhr, settings) {
-      equal(settings.crossDomain, true, 'setting modified in ajax:before s=
hould have forced cross-domain request');
-    });
-  });
-});
-
 asyncTest('setting data("with-credentials",true) with "ajax:before" uses n=
ew setting in request', 2, function(){
   $('form[data-remote]').data('with-credentials',false)
     .bind('ajax:before', function() {
diff --git a/test/public/test/call-remote.js b/test/public/test/call-remote=
.js
index d78ce56..94316e8 100644
--- a/test/public/test/call-remote.js
+++ b/test/public/test/call-remote.js
@@ -122,22 +122,6 @@ asyncTest('sends CSRF token in custom header', 1, func=
tion() {
   });
 });
=20
-asyncTest('does not send CSRF token in custom header if crossDomain', 1, f=
unction() {
-  buildForm({ 'data-cross-domain': 'true' });
-  $('#qunit-fixture').append('<meta name=3D"csrf-token" content=3D"cf50faa=
3fe97702ca1ae" />');
-
-  // Manually set request header to be XHR, since setting crossDomain: tru=
e in .ajax()
-  // causes jQuery to skip setting the request header, to prevent our test=
/server.rb from
-  // raising an an error (when request.xhr? is false).
-  $('#qunit-fixture').find('form').bind('ajax:beforeSend', function(e, xhr=
) {
-    xhr.setRequestHeader('X-Requested-With', "XMLHttpRequest");
-  });
-
-  submit(function(e, data, status, xhr) {
-    equal(data.HTTP_X_CSRF_TOKEN, undefined, 'X-CSRF-Token header should N=
OT be sent');
-  });
-});
-
 asyncTest('intelligently guesses crossDomain behavior when target URL is a=
 different domain', 1, function(e, xhr) {
=20
   // Don't set data-cross-domain here, just set action to be a different d=
omain than localhost
@@ -156,20 +140,4 @@ asyncTest('intelligently guesses crossDomain behavior =
when target URL is a diffe
=20
   setTimeout(function() { start(); }, 13);
 });
-
-asyncTest('does not set crossDomain if explicitly set to false on element'=
, 1, function() {
-  buildForm({ action: 'http://www.alfajango.com', 'data-cross-domain': fal=
se });
-  $('#qunit-fixture').append('<meta name=3D"csrf-token" content=3D"cf50faa=
3fe97702ca1ae" />');
-
-  $('#qunit-fixture').find('form')
-    .bind('ajax:beforeSend', function(e, xhr, settings) {
-      equal(settings.crossDomain, false, 'crossDomain should be set to fal=
se');
-      // prevent request from actually getting sent off-domain
-      return false;
-    })
-    .trigger('submit');
-
-  setTimeout(function() { start(); }, 13);
-});
-
 })();
diff --git a/test/public/test/data-method.js b/test/public/test/data-method=
.js
index c442662..5752837 100644
--- a/test/public/test/data-method.js
+++ b/test/public/test/data-method.js
@@ -46,4 +46,30 @@ asyncTest('link "target" should be carried over to gener=
ated form', 1, function(
   });
 });
=20
+asyncTest('link with "data-method" and cross origin', 1, function() {
+  var data =3D {};
+
+  $('#qunit-fixture')
+    .append('<meta name=3D"csrf-param" content=3D"authenticity_token"/>')
+    .append('<meta name=3D"csrf-token" content=3D"cf50faa3fe97702ca1ae"/>'=
);
+
+  $(document).on('submit', 'form', function(e) {
+    $(e.currentTarget).serializeArray().map(function(item) {
+      data[item.name] =3D item.value;
+    });
+
+    return false;
+  });
+
+  var link =3D $('#qunit-fixture').find('a');
+
+  link.attr('href', 'http://www.alfajango.com');
+
+  link.trigger('click');
+
+  start();
+
+  notEqual(data.authenticity_token, 'cf50faa3fe97702ca1ae');
+});
+
 })();
diff --git a/test/public/test/override.js b/test/public/test/override.js
index ba84b6d..0dca60c 100644
--- a/test/public/test/override.js
+++ b/test/public/test/override.js
@@ -32,7 +32,7 @@ asyncTest("the getter for an element's href is overridabl=
e", 1, function() {
=20
 asyncTest("the getter for an element's href works normally if not overridd=
en", 1, function() {
   $.rails.ajax =3D function(options) {
-    equal('/real/href', options.url);
+    equal(location.protocol + '//' + location.host + '/real/href', options=
.url);
   }
   $.rails.handleRemote($('#qunit-fixture').find('a'));
   start();
--=20
2.3.1


--H8ygTp4AXg6deix2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="3-1-2-jquery-rails-csrf.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 92f2a9d28542aad7faf770adae99f608c5b1e2c9 Mon Sep 17 00:00:00 2001
From: =3D?UTF-8?q?Rafael=3D20Mendon=3DC3=3DA7a=3D20Fran=3DC3=3DA7a?=3D
 <rafaelmfranca@gmail.com>
Date: Wed, 25 Mar 2015 17:39:15 -0300
Subject: [PATCH] Upgrade jquery-ujs to do proper checks for cross domain
 requests

Fix CVE-2015-1840
---
 vendor/assets/javascripts/jquery_ujs.js | 31 +++++++++++++++++++++++++----=
--
 1 file changed, 25 insertions(+), 6 deletions(-)

diff --git a/vendor/assets/javascripts/jquery_ujs.js b/vendor/assets/javasc=
ripts/jquery_ujs.js
index a26f48c..3c94106 100644
--- a/vendor/assets/javascripts/jquery_ujs.js
+++ b/vendor/assets/javascripts/jquery_ujs.js
@@ -86,16 +86,14 @@
=20
     // Default way to get an element's href. May be overridden at $.rails.=
href.
     href: function(element) {
-      return element.attr('href');
+      return element[0].href;
     },
=20
     // Submits "remote" forms and links with ajax
     handleRemote: function(element) {
-      var method, url, data, elCrossDomain, crossDomain, withCredentials, =
dataType, options;
+      var method, url, data, withCredentials, dataType, options;
=20
       if (rails.fire(element, 'ajax:before')) {
-        elCrossDomain =3D element.data('cross-domain');
-        crossDomain =3D elCrossDomain =3D=3D=3D undefined ? null : elCross=
Domain;
         withCredentials =3D element.data('with-credentials') || null;
         dataType =3D element.data('type') || ($.ajaxSettings && $.ajaxSett=
ings.dataType);
=20
@@ -147,7 +145,7 @@
           error: function(xhr, status, error) {
             element.trigger('ajax:error', [xhr, status, error]);
           },
-          crossDomain: crossDomain
+          crossDomain: rails.isCrossDomain(url)
         };
=20
         // There is no withCredentials for IE6-8 when
@@ -167,6 +165,27 @@
       }
     },
=20
+    // Determines if the request is a cross domain request.
+    isCrossDomain: function(url) {
+      var originAnchor =3D document.createElement("a");
+      originAnchor.href =3D location.href;
+      var urlAnchor =3D document.createElement("a");
+
+      try {
+        urlAnchor.href =3D url;
+        // This is a workaround to a IE bug.
+        urlAnchor.href =3D urlAnchor.href;
+
+        // Make sure that the browser parses the URL and that the protocol=
s and hosts match.
+        return !urlAnchor.protocol || !urlAnchor.host ||
+          (originAnchor.protocol + "//" + originAnchor.host !=3D=3D
+            urlAnchor.protocol + "//" + urlAnchor.host);
+      } catch (e) {
+        // If there is an error parsing the URL, assume it is crossDomain.
+        return true;
+      }
+    },
+
     // Handles "data-method" on links such as:
     // <a href=3D"/users/5" data-method=3D"delete" rel=3D"nofollow" data-c=
onfirm=3D"Are you sure?">Delete</a>
     handleMethod: function(link) {
@@ -178,7 +197,7 @@
         form =3D $('<form method=3D"post" action=3D"' + href + '"></form>'=
),
         metadataInput =3D '<input name=3D"_method" value=3D"' + method + '=
" type=3D"hidden" />';
=20
-      if (csrfParam !=3D=3D undefined && csrfToken !=3D=3D undefined) {
+      if (csrfParam !=3D=3D undefined && csrfToken !=3D=3D undefined && !r=
ails.isCrossDomain(href)) {
         metadataInput +=3D '<input name=3D"' + csrfParam + '" value=3D"' +=
 csrfToken + '" type=3D"hidden" />';
       }
=20
--=20
2.3.1


--H8ygTp4AXg6deix2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="4-0-3-jquery-rails-csrf.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 11ad7bc5211b02aad131ae9d009ced2164f4b975 Mon Sep 17 00:00:00 2001
From: =3D?UTF-8?q?Rafael=3D20Mendon=3DC3=3DA7a=3D20Fran=3DC3=3DA7a?=3D
 <rafaelmfranca@gmail.com>
Date: Wed, 25 Mar 2015 17:36:17 -0300
Subject: [PATCH] Upgrade jquery-ujs to do proper checks for cross domain
 requests

Fix CVE-2015-1840
---
 vendor/assets/javascripts/jquery_ujs.js | 31 +++++++++++++++++++++++++----=
--
 1 file changed, 25 insertions(+), 6 deletions(-)

diff --git a/vendor/assets/javascripts/jquery_ujs.js b/vendor/assets/javasc=
ripts/jquery_ujs.js
index a4fb0be..1ee8859 100644
--- a/vendor/assets/javascripts/jquery_ujs.js
+++ b/vendor/assets/javascripts/jquery_ujs.js
@@ -86,16 +86,14 @@
=20
     // Default way to get an element's href. May be overridden at $.rails.=
href.
     href: function(element) {
-      return element.attr('href');
+      return element[0].href;
     },
=20
     // Submits "remote" forms and links with ajax
     handleRemote: function(element) {
-      var method, url, data, elCrossDomain, crossDomain, withCredentials, =
dataType, options;
+      var method, url, data, withCredentials, dataType, options;
=20
       if (rails.fire(element, 'ajax:before')) {
-        elCrossDomain =3D element.data('cross-domain');
-        crossDomain =3D elCrossDomain =3D=3D=3D undefined ? null : elCross=
Domain;
         withCredentials =3D element.data('with-credentials') || null;
         dataType =3D element.data('type') || ($.ajaxSettings && $.ajaxSett=
ings.dataType);
=20
@@ -147,7 +145,7 @@
           error: function(xhr, status, error) {
             element.trigger('ajax:error', [xhr, status, error]);
           },
-          crossDomain: crossDomain
+          crossDomain: rails.isCrossDomain(url)
         };
=20
         // There is no withCredentials for IE6-8 when
@@ -167,6 +165,27 @@
       }
     },
=20
+    // Determines if the request is a cross domain request.
+    isCrossDomain: function(url) {
+      var originAnchor =3D document.createElement("a");
+      originAnchor.href =3D location.href;
+      var urlAnchor =3D document.createElement("a");
+
+      try {
+        urlAnchor.href =3D url;
+        // This is a workaround to a IE bug.
+        urlAnchor.href =3D urlAnchor.href;
+
+        // Make sure that the browser parses the URL and that the protocol=
s and hosts match.
+        return !urlAnchor.protocol || !urlAnchor.host ||
+          (originAnchor.protocol + "//" + originAnchor.host !=3D=3D
+            urlAnchor.protocol + "//" + urlAnchor.host);
+      } catch (e) {
+        // If there is an error parsing the URL, assume it is crossDomain.
+        return true;
+      }
+    },
+
     // Handles "data-method" on links such as:
     // <a href=3D"/users/5" data-method=3D"delete" rel=3D"nofollow" data-c=
onfirm=3D"Are you sure?">Delete</a>
     handleMethod: function(link) {
@@ -178,7 +197,7 @@
         form =3D $('<form method=3D"post" action=3D"' + href + '"></form>'=
),
         metadataInput =3D '<input name=3D"_method" value=3D"' + method + '=
" type=3D"hidden" />';
=20
-      if (csrfParam !=3D=3D undefined && csrfToken !=3D=3D undefined) {
+      if (csrfParam !=3D=3D undefined && csrfToken !=3D=3D undefined && !r=
ails.isCrossDomain(href)) {
         metadataInput +=3D '<input name=3D"' + csrfParam + '" value=3D"' +=
 csrfToken + '" type=3D"hidden" />';
       }
=20
--=20
2.3.1


--H8ygTp4AXg6deix2--

--n/aVsWSeQ4JHkrmm
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iQEcBAEBAgAGBQJVgGVBAAoJEJUxcLy0/6/G2pEH/1qY7d+b0yhctNT1NrwOLYW+
ZaxTAPa+ZibfY2DjZCQvM8kWWMVAi23nuSKPr0sr+m96iptqIXa3rv4L4Zx32d/A
rkuY0kJhND3DOd7eCihiuHivXCM7wG0XtJ8+WeuM+r34xarZgxUW3X1OZ0HhIeGK
QWUXcdqcWhE/JPXUPC8uFxT1XZoS6p+uslr7dbFUOiLrqkoxD5oxRbQsvWgOgbH6
FM6YkFrnSHVdEkSo+oYRuLvhcl28zLwp89/AhQdHHh5gDT0GWg1DZr6kcuqZf+Ev
0yyc+cqrhiXjJP6zm+HBWT8b+rFjdw7qSv9Ksnz19rX+wpDG4IdUKWMLWKJwpJQ=
=opGv
-----END PGP SIGNATURE-----

--n/aVsWSeQ4JHkrmm--
