X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7806" "Monday" "25" "January" "2016" "11:35:37" "-0800" "Aaron Patterson" "tenderlove@ruby-lang.org" "<20160125193537.GE14069@TC.local>" "265" "[oss-security] [CVE-2015-7579] XSS vulnerability in rails-html-sanitizer" nil nil nil "1" "2016012519:35:37" "[oss-security] [CVE-2015-7579] XSS vulnerability in rails-html-sanitizer" (number mark "U       tenderlove@r Jan 25  265/7806  " thread-indent "\"[oss-security] [CVE-2015-7579] XSS vulnerability in rails-html-sanitizer\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23895 invoked by uid 550); 25 Jan 2016 19:35:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23831 invoked from network); 25 Jan 2016 19:35:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenderlovemaking-com.20150623.gappssmtp.com; s=20150623;
        h=sender:date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=VhPj+DTslZQ0Lo6M/YfopbFcdUl2ZmaQfdJCaW/gBpk=;
        b=FY/95XB5jWj5k0o+Pt+TLUMoN5QDV1EQh41WB0Jj512mwBE9SVpKBUAUbwxGcdwx1r
         xvjRjRPVuSn5lsy4sKtf/peked5Gne1hz+Rugq653besHKoOHmpMQatcGRIfEkZZJpTs
         yeCL+K9GWuc0D03YWp4b3vsvKeYPhXN+vrEVr+5j19nNNyZ/KV/v3FjxyTBQnctiyBPZ
         WFGO2jpw6ChPJaY5Hqwgd5AG6Lzic/K38t+I0XFPyrdw9O89abPlXuBcZtdwS0iMor8t
         anrf4ovC1oTNMN+bCcWspKoQEv6NwC4Mxal+VtD4526UDq3Y7FPDoMWx+6iKQCCUWrmu
         Gvug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-type:content-disposition:user-agent;
        bh=VhPj+DTslZQ0Lo6M/YfopbFcdUl2ZmaQfdJCaW/gBpk=;
        b=T/3LCTi/LOO3gJ5ACHAJ6aZnVjG51PZYWzsyRT+ojQ3GwUw5DXIasRCx4oiuI+pvQE
         Vw6AgOBsBKdY4bQmP/dYZ7dRhnjJqmY43eVJNWbbhu7FT6RwGeett+fvZ6TdBB7yvcCw
         8RqJT+Iaoga4/abHgULMQCTGnbj4G95gCAUqxegB1bKrqqKLXdW5rvSYsg9oZahUbp/o
         5cP/It2nI29/z9ZVZD/FFilRJ0s9fhnjEKHF2vytKw1QDRKcoHe5B9pi8NUOsxUY57RY
         YBwIvo1rnkJWjBkX0lEwM2bpcjRVqhn3uc37IqIFfPYBN/xNI/737Ns/86ok+v3mXMxB
         6xLg==
X-Gm-Message-State: AG10YOSZ4rIwaxZwlATt0NBQ2MRjx1sNlsG7844DTqHvOEslZERqzZ4kUh8NSCYHs2EQFw==
X-Received: by 10.66.119.71 with SMTP id ks7mr2134324pab.151.1453750540349;
        Mon, 25 Jan 2016 11:35:40 -0800 (PST)
Sender: Aaron Patterson <aaron@tenderlovemaking.com>
Date: Mon, 25 Jan 2016 11:35:37 -0800
From: Aaron Patterson <tenderlove@ruby-lang.org>
To: security@suse.de, rubyonrails-security@googlegroups.com,
	oss-security@lists.openwall.com, ruby-security-ann@googlegroups.com
Message-ID: <20160125193537.GE14069@TC.local>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="HSQ3hISbU3Um6hch"
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [oss-security] [CVE-2015-7579] XSS vulnerability in rails-html-sanitizer

--HSQ3hISbU3Um6hch
Content-Type: multipart/mixed; boundary="tctmm6wHVGT/P6vA"
Content-Disposition: inline


--tctmm6wHVGT/P6vA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

XSS vulnerability in rails-html-sanitizer

There is a XSS vulnerability in `Rails::Html::FullSanitizer` used by Action=
 View's `strip_tags`.
This vulnerability has been assigned the CVE identifier CVE-2015-7579.

Versions Affected:  1.0.2
Not affected:       1.0.0, 1.0.1
Fixed Versions:     1.0.3

Impact
------
Due to the way that `Rails::Html::FullSanitizer` is implemented, if an atta=
cker
passes an already escaped HTML entity to the input of Action View's `strip_=
tags`
these entities will be unescaped what may cause a XSS attack if used in com=
bination
with `raw` or `html_safe`.

For example:

    strip_tags("&lt;script&gt;alert('XSS')&lt;/script&gt;")

Would generate:

    <script>alert('XSS')</script>

After the fix it will generate:

    &lt;script&gt;alert('XSS')&lt;/script&gt;

All users running an affected release should either upgrade or use one of t=
he
workarounds immediately.

Releases
--------
The FIXED releases are available at the normal locations.

Workarounds
-----------
If you can't upgrade, please use the following monkey patch in an initializ=
er
that is loaded before your application:

```
$ cat config/initializers/strip_tags_fix.rb
class ActionView::Base
  def strip_tags(html)
    self.class.full_sanitizer.sanitize(html)
  end
end
```

Patches
-------
To aid users who aren't able to upgrade immediately we have provided patches
for the two supported release series. They are in git-am format and consist
of a single changeset.

* Do-not-unescape-already-escaped-HTML-entities.patch

Credits
-------
Thank you to Arthur Neves from GitHub and Spyros Livathinos from Zendesk for
reporting the problem and working with us to fix it.

--=20
Aaron Patterson
http://tenderlovemaking.com/

--tctmm6wHVGT/P6vA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="Do-not-unescape-already-escaped-HTML-entities.patch"
Content-Transfer-Encoding: quoted-printable

=46rom b1bc872f92f079c9d0f6b79d32d6b0bc6cfcc3dc Mon Sep 17 00:00:00 2001
From: =3D?UTF-8?q?Rafael=3D20Mendon=3DC3=3DA7a=3D20Fran=3DC3=3DA7a?=3D
 <rafaelmfranca@gmail.com>
Date: Mon, 10 Aug 2015 16:22:15 -0300
Subject: [PATCH] Do not unescape already escaped HTML entities

The full sanitizer was using Loofah's #text method that automatically
escapes HTML entities. That behavior caused some problems where strings
that were not escaped in the older sanitizer started to be escaped. To
fix these problems we used the #text's `encode_special_chars` option as
`false` that not just skipped the HTML entities escaping but unescaped
already escaped entities.

This introduced a security bug because an attacker can pass escaped HTML
tags that will not be sanitized and will be returned as unescaped HTML
tags.

To fix it properly we introduced a new scrubber that will remove all
tags and keep just the text nodes of these tags without changing how
to escape the string.

CVE-2015-7579
---
 lib/rails/html/sanitizer.rb | 17 ++++++++++-------
 lib/rails/html/scrubbers.rb | 20 ++++++++++++++++++++
 test/sanitizer_test.rb      |  7 +++++--
 test/scrubbers_test.rb      | 16 +++++++++++++++-
 4 files changed, 50 insertions(+), 10 deletions(-)

diff --git a/lib/rails/html/sanitizer.rb b/lib/rails/html/sanitizer.rb
index 8be10d5..8b9c7c8 100644
--- a/lib/rails/html/sanitizer.rb
+++ b/lib/rails/html/sanitizer.rb
@@ -13,6 +13,10 @@ module Rails
         node.xpath(*xpaths).remove
         node
       end
+
+      def properly_encode(fragment, options)
+        fragment.xml? ? fragment.to_xml(options) : fragment.to_html(option=
s)
+      end
     end
=20
     # =3D=3D=3D Rails::Html::FullSanitizer
@@ -26,9 +30,12 @@ module Rails
         return unless html
         return html if html.empty?
=20
-        Loofah.fragment(html).tap do |fragment|
-          remove_xpaths(fragment, XPATHS_TO_REMOVE)
-        end.text(options)
+        loofah_fragment =3D Loofah.fragment(html)
+
+        remove_xpaths(loofah_fragment, XPATHS_TO_REMOVE)
+        loofah_fragment.scrub!(TextOnlyScrubber.new)
+
+        properly_encode(loofah_fragment, encoding: 'UTF-8')
       end
     end
=20
@@ -136,10 +143,6 @@ module Rails
       def allowed_attributes(options)
         options[:attributes] || self.class.allowed_attributes
       end
-
-      def properly_encode(fragment, options)
-        fragment.xml? ? fragment.to_xml(options) : fragment.to_html(option=
s)
-      end
     end
   end
 end
diff --git a/lib/rails/html/scrubbers.rb b/lib/rails/html/scrubbers.rb
index 1384a2f..de497f9 100644
--- a/lib/rails/html/scrubbers.rb
+++ b/lib/rails/html/scrubbers.rb
@@ -144,5 +144,25 @@ module Rails
         !super
       end
     end
+
+    # =3D=3D=3D Rails::Html::TextOnlyScrubber
+    #
+    # Rails::Html::TextOnlyScrubber allows you to permit text nodes.
+    #
+    # Unallowed elements will be stripped, i.e. element is removed but its=
 subtree kept.
+    class TextOnlyScrubber < Loofah::Scrubber
+      def initialize
+        @direction =3D :bottom_up
+      end
+
+      def scrub(node)
+        if node.text?
+          CONTINUE
+        else
+          node.before node.children
+          node.remove
+        end
+      end
+    end
   end
 end
diff --git a/test/sanitizer_test.rb b/test/sanitizer_test.rb
index 06d70e4..d6ab7cd 100644
--- a/test/sanitizer_test.rb
+++ b/test/sanitizer_test.rb
@@ -104,9 +104,12 @@ class SanitizersTest < Minitest::Test
     assert_equal "Frozen string with no tags", full_sanitize("Frozen strin=
g with no tags".freeze)
   end
=20
-  def test_full_sanitize_allows_turning_off_encoding_special_chars
+  def test_full_sanitize_respect_html_escaping_of_the_given_string
+    assert_equal 'test\r\nstring', full_sanitize('test\r\nstring')
     assert_equal '&amp;', full_sanitize('&')
-    assert_equal '&', full_sanitize('&', encode_special_chars: false)
+    assert_equal '&amp;', full_sanitize('&amp;')
+    assert_equal '&amp;amp;', full_sanitize('&amp;amp;')
+    assert_equal 'omg &lt;script&gt;BOM&lt;/script&gt;', full_sanitize('om=
g &lt;script&gt;BOM&lt;/script&gt;')
   end
=20
   def test_strip_links_with_tags_in_tags
diff --git a/test/scrubbers_test.rb b/test/scrubbers_test.rb
index 2a2838a..4b84263 100644
--- a/test/scrubbers_test.rb
+++ b/test/scrubbers_test.rb
@@ -143,6 +143,20 @@ class TargetScrubberTest < ScrubberTest
   end
 end
=20
+class TextOnlyScrubberTest < ScrubberTest
+  def setup
+    @scrubber =3D Rails::Html::TextOnlyScrubber.new
+  end
+
+  def test_removes_all_tags_and_keep_the_content
+    assert_scrubbed '<tag>hello</tag>', 'hello'
+  end
+
+  def test_skips_text_nodes
+    assert_node_skipped('some text')
+  end
+end
+
 class ReturningStopFromScrubNodeTest < ScrubberTest
   class ScrubStopper < Rails::Html::PermitScrubber
     def scrub_node(node)
@@ -157,4 +171,4 @@ class ReturningStopFromScrubNodeTest < ScrubberTest
   def test_returns_stop_from_scrub_if_scrub_node_does
     assert_scrub_stopped '<script>remove me</script>'
   end
-end
\ No newline at end of file
+end
--=20
2.6.3


--tctmm6wHVGT/P6vA--

--HSQ3hISbU3Um6hch
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iQEcBAEBAgAGBQJWpnkJAAoJEJUxcLy0/6/GiBEH/jRM4WkBz47a74keyoWE6Xrl
F1ZQuwx2JX+x5GEGQRPFXQ7z1xrmNecpxRUAJXxNbn12VS3T8D93/jA1JsZbJ4Pd
x8a0eparZvOjOixy2TnWH8gbU9UFS4MowsDrVnO0qElAAwZs1yH0LDdczwztVJEl
8Nv65c3WDEzIRJuCm/AAi6qJBxdQxk3e8FrtWekdNNo7p4W3BwXBUKHA+3+wAJcY
rC9BCbVcvKSP6/Xj6OpFEjowpNlodKXYrh+I7Wzblz5pqMnk5ywQTjq8eJH8qUpE
7XQnSmZ6Pi/JPEgi94OvI/QIjJNziyBfWr53nUy6WPAw5aRLjPLdAI7yn9qNcgU=
=tJjG
-----END PGP SIGNATURE-----

--HSQ3hISbU3Um6hch--
