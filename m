X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["9618" "Monday" "25" "January" "2016" "11:34:16" "-0800" "Aaron Patterson" "tenderlove@ruby-lang.org" "<20160125193416.GD14069@TC.local>" "282" "[oss-security] [CVE-2015-7578] Possible XSS vulnerability in rails-html-sanitizer" nil nil nil "1" "2016012519:34:16" "[oss-security] [CVE-2015-7578] Possible XSS vulnerability in rails-html-sanitizer" (number mark "U       tenderlove@r Jan 25  282/9618  " thread-indent "\"[oss-security] [CVE-2015-7578] Possible XSS vulnerability in rails-html-sanitizer\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14333 invoked by uid 550); 25 Jan 2016 19:34:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14261 invoked from network); 25 Jan 2016 19:34:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenderlovemaking-com.20150623.gappssmtp.com; s=20150623;
        h=sender:date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=UgZPMzLBOKANDB2lsRM0wnxzs9OauptYBhL7zMTUElg=;
        b=mrSWy/U+d0mIzbHrdA++v0Z0uIHhrbm1YiElNYYb9/6iTQKbTmzRFSNx4xP+y4mDrd
         nDZWqD+pTDJSI5el3LsPNBvF/zg5LgHV7FVo+U0ja31p2S6ZK9HbSEyYUdmkR4eW6NuM
         48CWuOqs+eNzELlW7PchnFzyLnVHZvtjRLVUoc0iEkxBDti5e1rK73pDRXHzabulB2ns
         SJBOSCFrxwzo0jXhbrJu/+yKtamUW2xRnBgl5Gy9x868C1dcjatcfmisc2CZUGh5WSSd
         luQb5i/nl9MxLKhLWMecc230oFSr+dAX1piM4K9VZDCAd6gl0efAyDDa9RwtvXKtRoXM
         sEbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-type:content-disposition:user-agent;
        bh=UgZPMzLBOKANDB2lsRM0wnxzs9OauptYBhL7zMTUElg=;
        b=JMfgQpMCaMqstYHVJzigA1xqkEGeQDWyRqf5t8GlGVbtllZARVLKEO+1m6CBFg4lWY
         k9cKCs2LibuYnTVvV3X58tCqLDA8bgF8eLOG0jnKbGmCfcwzkMOrxW4LMCp18OgNrShE
         BfXR86SFYrwPNGOukzd5BLhX+841QaPTp/0Cb2FgKUs77SoX2sjBdCCv5QNTlgNPo9li
         a16LbfQDBhUfAJ8DhkNHHT/LvVEG26VNm2SYzRHaFef/FEW/WBz35cXeCm1Uzlk4qI+K
         y1Bkn2iV7jbdR+H3exBj8XZN2bYnpHOK9ecr2UgVisb+eZUk24VD5l7TQ54uoaBfeelA
         zrSQ==
X-Gm-Message-State: AG10YOQlr6jJdNqCq4QzsT/kJYW0kPR495dpFsApUxGLIGEfZvdrXmJ9Bv1D4jGfTBC9rQ==
X-Received: by 10.66.101.36 with SMTP id fd4mr28681648pab.76.1453750459422;
        Mon, 25 Jan 2016 11:34:19 -0800 (PST)
Sender: Aaron Patterson <aaron@tenderlovemaking.com>
Date: Mon, 25 Jan 2016 11:34:16 -0800
From: Aaron Patterson <tenderlove@ruby-lang.org>
To: security@suse.de, rubyonrails-security@googlegroups.com,
	oss-security@lists.openwall.com, ruby-security-ann@googlegroups.com
Message-ID: <20160125193416.GD14069@TC.local>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="CEUtFxTsmBsHRLs3"
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [oss-security] [CVE-2015-7578] Possible XSS vulnerability in rails-html-sanitizer

--CEUtFxTsmBsHRLs3
Content-Type: multipart/mixed; boundary="AGZzQgpsuUlWC1xT"
Content-Disposition: inline


--AGZzQgpsuUlWC1xT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Possible XSS vulnerability in rails-html-sanitizer

There is a possible XSS vulnerability in rails-html-sanitizer. This
vulnerability has been assigned the CVE identifier CVE-2015-7578.

Versions Affected:  All.
Not affected:       None.
Fixed Versions:     1.0.3

Impact
------
There is a possible XSS vulnerability in rails-html-sanitizer.  Certain
attributes are not removed from tags when they are sanitized, and these
attributes can lead to an XSS attack on target applications.

All users running an affected release should either upgrade or use one of t=
he
workarounds immediately.

Releases
--------
The FIXED releases are available at the normal locations.

Workarounds
-----------
There are no feasible workarounds for this issue.

Patches
-------
To aid users who aren't able to upgrade immediately we have provided patche=
s for
the two supported release series. They are in git-am format and consist of a
single changeset.

* 1-0-sanitize_data_attributes.patch - Patch for 1.0 series

Credits
-------
Thanks to Ben Murphy and Marien for reporting this

--=20
Aaron Patterson
http://tenderlovemaking.com/

--AGZzQgpsuUlWC1xT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="1-0-sanitize_data_attributes.patch"
Content-Transfer-Encoding: quoted-printable

=46rom e46ef9dcd91e25bc41a90b332e7df153d9f62858 Mon Sep 17 00:00:00 2001
From: =3D?UTF-8?q?Rafael=3D20Mendon=3DC3=3DA7a=3D20Fran=3DC3=3DA7a?=3D
 <rafaelmfranca@gmail.com>
Date: Wed, 25 Nov 2015 15:23:22 -0200
Subject: [PATCH] Define a less permissive list of tags and attributes

And use it by default.

The new sanitizer were being a lot more permissive that we had in Rails
until the version 4.2.

This was also allowing arbritary data attributes by default what can
lead to CSRF and XSS attacks.

Now data attributes need to be explicitly allowed.

CVE-2015-7578
---
 lib/rails/html/sanitizer.rb |  4 ++++
 lib/rails/html/scrubbers.rb | 25 +++++++++++++++++++++++++
 test/sanitizer_test.rb      | 36 ++++++++++++++++++++++++++----------
 3 files changed, 55 insertions(+), 10 deletions(-)

diff --git a/lib/rails/html/sanitizer.rb b/lib/rails/html/sanitizer.rb
index 8be10d5..f40bf6b 100644
--- a/lib/rails/html/sanitizer.rb
+++ b/lib/rails/html/sanitizer.rb
@@ -97,6 +97,10 @@ module Rails
         attr_accessor :allowed_tags
         attr_accessor :allowed_attributes
       end
+      self.allowed_tags =3D Set.new(%w(strong em b i p code pre tt samp kb=
d var sub
+        sup dfn cite big small address hr br div span h1 h2 h3 h4 h5 h6 ul=
 ol li dl dt dd abbr
+        acronym a img blockquote del ins))
+      self.allowed_attributes =3D Set.new(%w(href src width height alt cit=
e datetime title class name xml:lang abbr))
=20
       def initialize
         @permit_scrubber =3D PermitScrubber.new
diff --git a/lib/rails/html/scrubbers.rb b/lib/rails/html/scrubbers.rb
index 1384a2f..2c89c04 100644
--- a/lib/rails/html/scrubbers.rb
+++ b/lib/rails/html/scrubbers.rb
@@ -100,6 +100,7 @@ module Rails
         if @attributes
           node.attribute_nodes.each do |attr|
             attr.remove if scrub_attribute?(attr.name)
+            scrub_attribute(node, attr)
           end
=20
           scrub_css_attribute(node)
@@ -123,6 +124,30 @@ module Rails
         end
         var
       end
+
+      def scrub_attribute(node, attr_node)
+        attr_name =3D if attr_node.namespace
+                      "#{attr_node.namespace.prefix}:#{attr_node.node_name=
}"
+                    else
+                      attr_node.node_name
+                    end
+
+        if Loofah::HTML5::WhiteList::ATTR_VAL_IS_URI.include?(attr_name)
+          # this block lifted nearly verbatim from HTML5 sanitization
+          val_unescaped =3D CGI.unescapeHTML(attr_node.value).gsub(Loofah:=
:HTML5::Scrub::CONTROL_CHARACTERS,'').downcase
+          if val_unescaped =3D~ /^[a-z0-9][-+.a-z0-9]*:/ && ! Loofah::HTML=
5::WhiteList::ALLOWED_PROTOCOLS.include?(val_unescaped.split(Loofah::HTML5:=
:WhiteList::PROTOCOL_SEPARATOR)[0])
+            attr_node.remove
+          end
+        end
+        if Loofah::HTML5::WhiteList::SVG_ATTR_VAL_ALLOWS_REF.include?(attr=
_name)
+          attr_node.value =3D attr_node.value.gsub(/url\s*\(\s*[^#\s][^)]+=
?\)/m, ' ') if attr_node.value
+        end
+        if Loofah::HTML5::WhiteList::SVG_ALLOW_LOCAL_HREF.include?(node.na=
me) && attr_name =3D=3D 'xlink:href' && attr_node.value =3D~ /^\s*[^#\s].*/m
+          attr_node.remove
+        end
+
+        node.remove_attribute(attr_node.name) if attr_name =3D=3D 'src' &&=
 attr_node.value !~ /[^[:space:]]/
+      end
     end
=20
     # =3D=3D=3D Rails::Html::TargetScrubber
diff --git a/test/sanitizer_test.rb b/test/sanitizer_test.rb
index 06d70e4..5f636ba 100644
--- a/test/sanitizer_test.rb
+++ b/test/sanitizer_test.rb
@@ -152,7 +152,7 @@ class SanitizersTest < Minitest::Test
   end
=20
   def test_sanitize_script
-    assert_sanitized "a b c<script language=3D\"Javascript\">blah blah bla=
h</script>d e f", "a b cd e f"
+    assert_sanitized "a b c<script language=3D\"Javascript\">blah blah bla=
h</script>d e f", "a b cblah blah blahd e f"
   end
=20
   def test_sanitize_js_handlers
@@ -173,17 +173,23 @@ class SanitizersTest < Minitest::Test
   tags =3D Loofah::HTML5::WhiteList::ALLOWED_ELEMENTS - %w(script form)
   tags.each do |tag_name|
     define_method "test_should_allow_#{tag_name}_tag" do
-      assert_sanitized "start <#{tag_name} title=3D\"1\" onclick=3D\"foo\"=
>foo <bad>bar</bad> baz</#{tag_name}> end", %(start <#{tag_name} title=3D"1=
">foo bar baz</#{tag_name}> end)
+      scope_allowed_tags(tags) do
+        assert_sanitized "start <#{tag_name} title=3D\"1\" onclick=3D\"foo=
\">foo <bad>bar</bad> baz</#{tag_name}> end", %(start <#{tag_name} title=3D=
"1">foo bar baz</#{tag_name}> end)
+      end
     end
   end
=20
   def test_should_allow_anchors
-    assert_sanitized %(<a href=3D"foo" onclick=3D"bar"><script>baz</script=
></a>), %(<a href=3D\"foo\"></a>)
+    assert_sanitized %(<a href=3D"foo" onclick=3D"bar"><script>baz</script=
></a>), %(<a href=3D\"foo\">baz</a>)
   end
=20
   def test_video_poster_sanitization
-    assert_sanitized %(<video src=3D"videofile.ogg" autoplay  poster=3D"po=
sterimage.jpg"></video>), %(<video src=3D"videofile.ogg" poster=3D"posterim=
age.jpg"></video>)
-    assert_sanitized %(<video src=3D"videofile.ogg" poster=3Djavascript:al=
ert(1)></video>), %(<video src=3D"videofile.ogg"></video>)
+    scope_allowed_tags(%w(video)) do
+      scope_allowed_attributes %w(src poster) do
+        assert_sanitized %(<video src=3D"videofile.ogg" autoplay  poster=
=3D"posterimage.jpg"></video>), %(<video src=3D"videofile.ogg" poster=3D"po=
sterimage.jpg"></video>)
+        assert_sanitized %(<video src=3D"videofile.ogg" poster=3Djavascrip=
t:alert(1)></video>), %(<video src=3D"videofile.ogg"></video>)
+      end
+    end
   end
=20
   # RFC 3986, sec 4.2
@@ -309,7 +315,7 @@ class SanitizersTest < Minitest::Test
   end
=20
   def test_should_not_fall_for_xss_image_hack_with_uppercase_tags
-    assert_sanitized %(<IMG """><SCRIPT>alert("XSS")</SCRIPT>">), "<img>\"=
&gt;"
+    assert_sanitized %(<IMG """><SCRIPT>alert("XSS")</SCRIPT>">), %(<img>a=
lert("XSS")"&gt;)
   end
=20
   [%(<IMG SRC=3D"javascript:alert('XSS');">),
@@ -453,6 +459,16 @@ class SanitizersTest < Minitest::Test
     end
   end
=20
+  def test_sanitize_data_attributes
+    assert_sanitized %(<a href=3D"/blah" data-method=3D"post">foo</a>), %(=
<a href=3D"/blah">foo</a>)
+    assert_sanitized %(<a data-remote=3D"true" data-type=3D"script" data-m=
ethod=3D"get" data-cross-domain=3D"true" href=3D"attack.js">Launch the miss=
iles</a>), %(<a href=3D"attack.js">Launch the missiles</a>)
+  end
+
+  def test_allow_data_attribute_if_requested
+    text =3D %(<a data-foo=3D"foo">foo</a>)
+    assert_equal %(<a data-foo=3D"foo">foo</a>), white_list_sanitize(text,=
 attributes: ['data-foo'])
+  end
+
 protected
=20
   def xpath_sanitize(input, options =3D {})
@@ -484,18 +500,18 @@ protected
   end
=20
   def scope_allowed_tags(tags)
+    old_tags =3D Rails::Html::WhiteListSanitizer.allowed_tags
     Rails::Html::WhiteListSanitizer.allowed_tags =3D tags
     yield Rails::Html::WhiteListSanitizer.new
-
   ensure
-    Rails::Html::WhiteListSanitizer.allowed_tags =3D nil
+    Rails::Html::WhiteListSanitizer.allowed_tags =3D old_tags
   end
=20
   def scope_allowed_attributes(attributes)
+    old_attributes =3D Rails::Html::WhiteListSanitizer.allowed_attributes
     Rails::Html::WhiteListSanitizer.allowed_attributes =3D attributes
     yield Rails::Html::WhiteListSanitizer.new
-
   ensure
-    Rails::Html::WhiteListSanitizer.allowed_attributes =3D nil
+    Rails::Html::WhiteListSanitizer.allowed_attributes =3D old_attributes
   end
 end
--=20
2.4.0


--AGZzQgpsuUlWC1xT--

--CEUtFxTsmBsHRLs3
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iQEcBAEBAgAGBQJWpni4AAoJEJUxcLy0/6/GJWMIAKEoR46fCdKVBYtgy3Rm6FVQ
3dBW/AuAvFyCuTJzRwMc83BERxuJ9Q4Si8OJfJKKS+I3aEMhHDdCYewL809Wgm6n
Ebb7bh/W8uIwFbE9l0JddVrT+tE6Oge3T5F4WCrcBpxyabASn1tnYLYVtI+4upST
S/xE5KtXMfP47nJg7wCbO37MWAgfQMC+I/o3ky3YX0S3P6TdIR6Q4r7Qd7KgRGMh
c2KAVaeAW1e8hQixLcWcVuUyyob17fcXljpUXu6MWUT4u938wy43ovpQoPjaVP3H
1PiBj+68l80pIoPQ3oRuU1rxATf+KbZeYCHxUTS+yYMBVr93gG2p9VzTCFCZuSw=
=yGKv
-----END PGP SIGNATURE-----

--CEUtFxTsmBsHRLs3--
