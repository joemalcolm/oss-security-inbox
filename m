X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7271" "Tuesday" "16" "June" "2015" "11:07:15" "-0700" "Aaron Patterson" "tenderlove@ruby-lang.org" "<20150616180715.GD28496@TC.local>" "235" "[oss-security] [CVE-2015-3226] XSS Vulnerability in ActiveSupport::JSON.encode" nil nil nil "6" "2015061618:07:15" "[oss-security] [CVE-2015-3226] XSS Vulnerability in ActiveSupport::JSON.encode" (number mark "U       tenderlove@r Jun 16  235/7271  " thread-indent "\"[oss-security] [CVE-2015-3226] XSS Vulnerability in ActiveSupport::JSON.encode\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25973 invoked by uid 550); 16 Jun 2015 18:07:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24413 invoked from network); 16 Jun 2015 18:07:31 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-type:content-disposition:user-agent;
        bh=UWC0+qGy43eQJGWjS1nj2cPk/EAZKSeAEdZAdRgfp5Y=;
        b=eOCDk/xIkTrrxz9PlMVzD3bPdc/NQWmW4S5tSjUQkyQLSgcUR3lVY0QgPLgplyWAPP
         2+IaHP69aM9YPh5eJhtmAMlWSJSm7gREu8PsBTmsjhlW70Zhy1d1Cfhbhm+dcI5BRtpX
         Vz73Xy1Z6rg1Rn0yYD55PtfmorDJkw4oZeQEKAalXV8jHqmFbBd0orc81aHLl6dKTzpd
         k4OPtKlhf0VfS1MaozYrItF5ZB4Bf9FqFhOHb+0WA3C4DkBA5l7oxKiv3oZ9M/ZTDrRs
         u7D7mq7PhvONMKFfsnbkzXzGP8hIBi3i2Ri8cNtuhT8GBTNBMpihEHiVLQiCPg0KAsbH
         Hb2Q==
X-Gm-Message-State: ALoCoQlzgqDOMxx+Cc0GXIv+9o9hN9GRNu4b+5p3n1KZj6k6ZLQQVLWFPQm/9NVFMZL78z6o3aG2
X-Received: by 10.68.65.7 with SMTP id t7mr2753110pbs.133.1434478039466;
        Tue, 16 Jun 2015 11:07:19 -0700 (PDT)
Sender: Aaron Patterson <aaron@tenderlovemaking.com>
Date: Tue, 16 Jun 2015 11:07:15 -0700
From: Aaron Patterson <tenderlove@ruby-lang.org>
To: security@suse.de, rubyonrails-security@googlegroups.com,
	oss-security@lists.openwall.com, ruby-security-ann@googlegroups.com
Message-ID: <20150616180715.GD28496@TC.local>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="bpVaumkpfGNUagdU"
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [oss-security] [CVE-2015-3226] XSS Vulnerability in ActiveSupport::JSON.encode

--bpVaumkpfGNUagdU
Content-Type: multipart/mixed; boundary="Zrag5V6pnZGjLKiw"
Content-Disposition: inline


--Zrag5V6pnZGjLKiw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

XSS Vulnerability in ActiveSupport::JSON.encode

There is an XSS vulnerability in the ActiveSupport::JSON.encode method in R=
uby on Rails.
This vulnerability has been assigned the CVE identifier CVE-2015-3226.

Versions Affected:  3.0.x, 3.1.x, 3.2.x, 4.1.x, 4.2.x.
Not affected:       4.0.x.
Fixed Versions:     4.2.2, 4.1.11

Impact
------
When a `Hash` containing user-controlled data is encode as JSON (either thr=
ough
`Hash#to_json` or `ActiveSupport::JSON.encode`), Rails does not perform ade=
quate
escaping that matches the guarantee implied by the `escape_html_entities_in=
_json`
option (which is enabled by default). If this resulting JSON string is subs=
equently
inserted directly into an HTML page, the page will be vulnerable to XSS att=
acks.

For example, the following code snippet is vulnerable to this attack:

    <%=3D javascript_tag "var data =3D #{user_supplied_data.to_json};" %>

Similarly, the following is also vulnerable:

    <script>
      var data =3D <%=3D ActiveSupport::JSON.encode(user_supplied_data).htm=
l_safe %>;
    </script>

All applications that renders JSON-encoded strings that contains user-contr=
olled
data in their views should either upgrade to one of the FIXED versions or u=
se
the suggested workaround immediately.

Releases
--------
The FIXED releases are available at the normal locations.

Workarounds
-----------
To work around this problem add an initializer with the following code:

    module ActiveSupport
      module JSON
        module Encoding
          private
          class EscapedString
            def to_s
              self
            end
          end
        end
      end
    end

Patches
-------
To aid users who aren't able to upgrade immediately we have provided patche=
s for the two
supported release series.  They are in git-am format and consist of a singl=
e changeset.

* 4-1-to_json_xss.patch - Patch for 4.1 series
* 4-2-to_json_xss.patch - Patch for 4.2 series

Please note that only the 4.1.x and 4.2.x series are supported at present.
Users of earlier unsupported releases are advised to upgrade as soon as pos=
sible as we cannot
guarantee the continued availability of security fixes for unsupported rele=
ases.

Credits
-------

Thanks to Francois Chagnon of Shopify for reporting the vulnerability to us=
, and working
with us on a fix.

--=20
Aaron Patterson
http://tenderlovemaking.com/

--Zrag5V6pnZGjLKiw
Content-Type: text/plain; charset=utf-8
Content-Disposition: attachment; filename="4-1-to_json_xss.patch"
Content-Transfer-Encoding: quoted-printable

=46rom bfbf16749a754ab1fd58274a951d3a013182a635 Mon Sep 17 00:00:00 2001
From: =3D?UTF-8?q?Rafael=3D20Mendon=3DC3=3DA7a=3D20Fran=3DC3=3DA7a?=3D
 <rafaelmfranca@gmail.com>
Date: Mon, 15 Jun 2015 15:23:01 -0300
Subject: [PATCH] Escape HTML entities in JSON keys

Fixes CVE-2015-3226
---
 activesupport/lib/active_support/json/encoding.rb | 4 ++++
 activesupport/test/json/encoding_test.rb          | 7 +++++++
 2 files changed, 11 insertions(+)

diff --git a/activesupport/lib/active_support/json/encoding.rb b/activesupp=
ort/lib/active_support/json/encoding.rb
index f29d422..d0f67b1 100644
--- a/activesupport/lib/active_support/json/encoding.rb
+++ b/activesupport/lib/active_support/json/encoding.rb
@@ -58,6 +58,10 @@ module ActiveSupport
                 super.gsub ESCAPE_REGEX_WITHOUT_HTML_ENTITIES, ESCAPED_CHA=
RS
               end
             end
+
+            def to_s
+              self
+            end
           end
=20
           # Mark these as private so we don't leak encoding-specific const=
ructs
diff --git a/activesupport/test/json/encoding_test.rb b/activesupport/test/=
json/encoding_test.rb
index c4283ee..b75c67c 100644
--- a/activesupport/test/json/encoding_test.rb
+++ b/activesupport/test/json/encoding_test.rb
@@ -143,6 +143,13 @@ class TestJSONEncoding < ActiveSupport::TestCase
     assert_equal %({\"a\":\"b\",\"c\":\"d\"}), sorted_json(ActiveSupport::=
JSON.encode(:a =3D> :b, :c =3D> :d))
   end
=20
+  def test_hash_keys_encoding
+    ActiveSupport.escape_html_entities_in_json =3D true
+    assert_equal "{\"\\u003c\\u003e\":\"\\u003c\\u003e\"}", ActiveSupport:=
:JSON.encode("<>" =3D> "<>")
+  ensure
+    ActiveSupport.escape_html_entities_in_json =3D false
+  end
+
   def test_utf8_string_encoded_properly
     result =3D ActiveSupport::JSON.encode('=E2=82=AC2.99')
     assert_equal '"=E2=82=AC2.99"', result
--=20
2.4.0


--Zrag5V6pnZGjLKiw
Content-Type: text/plain; charset=utf-8
Content-Disposition: attachment; filename="4-2-to_json_xss.patch"
Content-Transfer-Encoding: quoted-printable

=46rom ca91e927557906592f39ad5c07da25eefa9d8e61 Mon Sep 17 00:00:00 2001
From: =3D?UTF-8?q?Rafael=3D20Mendon=3DC3=3DA7a=3D20Fran=3DC3=3DA7a?=3D
 <rafaelmfranca@gmail.com>
Date: Mon, 15 Jun 2015 15:23:01 -0300
Subject: [PATCH] Escape HTML entities in JSON keys

Fixes CVE-2015-3226
---
 activesupport/lib/active_support/json/encoding.rb | 4 ++++
 activesupport/test/json/encoding_test.rb          | 7 +++++++
 2 files changed, 11 insertions(+)

diff --git a/activesupport/lib/active_support/json/encoding.rb b/activesupp=
ort/lib/active_support/json/encoding.rb
index c0ac5af..fdd63d9 100644
--- a/activesupport/lib/active_support/json/encoding.rb
+++ b/activesupport/lib/active_support/json/encoding.rb
@@ -58,6 +58,10 @@ module ActiveSupport
                 super.gsub ESCAPE_REGEX_WITHOUT_HTML_ENTITIES, ESCAPED_CHA=
RS
               end
             end
+
+            def to_s
+              self
+            end
           end
=20
           # Mark these as private so we don't leak encoding-specific const=
ructs
diff --git a/activesupport/test/json/encoding_test.rb b/activesupport/test/=
json/encoding_test.rb
index 7e976aa..0cbe2da 100644
--- a/activesupport/test/json/encoding_test.rb
+++ b/activesupport/test/json/encoding_test.rb
@@ -146,6 +146,13 @@ class TestJSONEncoding < ActiveSupport::TestCase
     assert_equal %({\"a\":\"b\",\"c\":\"d\"}), sorted_json(ActiveSupport::=
JSON.encode(:a =3D> :b, :c =3D> :d))
   end
=20
+  def test_hash_keys_encoding
+    ActiveSupport.escape_html_entities_in_json =3D true
+    assert_equal "{\"\\u003c\\u003e\":\"\\u003c\\u003e\"}", ActiveSupport:=
:JSON.encode("<>" =3D> "<>")
+  ensure
+    ActiveSupport.escape_html_entities_in_json =3D false
+  end
+
   def test_utf8_string_encoded_properly
     result =3D ActiveSupport::JSON.encode('=E2=82=AC2.99')
     assert_equal '"=E2=82=AC2.99"', result
--=20
2.4.0


--Zrag5V6pnZGjLKiw--

--bpVaumkpfGNUagdU
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iQEcBAEBAgAGBQJVgGXTAAoJEJUxcLy0/6/G44sIAJrgKCNa6WUOnfEsWDfo/phz
429/woomOLCtDPkg6M+4OvxxpNISZBOGju4rzb7BEfsC8zajwNecEIBpHSyAZvIt
tVVOnFKvYhXzQlw5QhL33YrWX8SS2z3zXliKI7gqsUiGtaeuV6w7qPSMsYCWff0L
p3o+h3ZRO20RybS6ebgqCZ8roHsApc4L6i7ZxVOItJ6w9fVJ4/L0MWn26ayFtcpp
2xZfC/+drriPEjjYlVsLoy8MhWJ/o0MbgWkJArkvxfZkyVskw7644LirdDFbv5mW
6nfSXyRZTgCxg/zJWGP94DisPmSnqz/FW+fN1rtxRDqwM2zgxS1vS/Uk7naTspc=
=5kme
-----END PGP SIGNATURE-----

--bpVaumkpfGNUagdU--
