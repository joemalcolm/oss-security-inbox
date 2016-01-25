X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4733" "Monday" "25" "January" "2016" "11:38:45" "-0800" "Aaron Patterson" "tenderlove@ruby-lang.org" "<20160125193845.GH14069@TC.local>" "170" "[oss-security] [CVE-2015-7580] Possible XSS vulnerability in rails-html-sanitizer" nil nil nil "1" "2016012519:38:45" "[oss-security] [CVE-2015-7580] Possible XSS vulnerability in rails-html-sanitizer" (number mark "U       tenderlove@r Jan 25  170/4733  " thread-indent "\"[oss-security] [CVE-2015-7580] Possible XSS vulnerability in rails-html-sanitizer\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10081 invoked by uid 550); 25 Jan 2016 19:39:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10020 invoked from network); 25 Jan 2016 19:39:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenderlovemaking-com.20150623.gappssmtp.com; s=20150623;
        h=sender:date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=PqmXpSJCwVdb6RpQ13LLHLN2+l949/N8PkP0kZfSm2A=;
        b=eg/aLqYK3POfu0vCRQdNl1WNKtmZm3dt2LPl1ucUYZk+4gHlun1HcWdpdKBpayuT6C
         KAeuEua8cuaS+T18uBTykQQVz2gMDZnFCvZSa0D31hkKd48MMfyPhFsak8ot3qYx0FOh
         TdTJRJOY6jUK9OCpy5Ne1qvMKnlolpnk7/dB1S7JQrck4mBecr+FAnnSRAP8uEAZ1gJ7
         ZSjTinV1Sqgz5Q1AfkCXp5pk3sZctf/3gaxbWl/S3KZKTroWF0iHHatJBA3e3+u13l7Y
         EoQkZPmfAzSTRzwllCZCSgxBdHUHI2KfaQLii4oHL1TbxjUORvSA27dKGJAz28GJYCH9
         LzlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-type:content-disposition:user-agent;
        bh=PqmXpSJCwVdb6RpQ13LLHLN2+l949/N8PkP0kZfSm2A=;
        b=YP21uKdJxffAyYSZei5oMZoiFTuuEMEWpp6GkUYQS/FXsS8KImv37NaGXk0aX5jGJu
         O/VVIJYGI7DOpRx0HBZjW4jG0dDwdth7kySmK+3l6Po+J0vGo2kkOD1srMD3Y14ShGTf
         CavVCYYTooLACmvSpw608avi4y8QQoGozIfEd4OPJj+9KnA9J7T13YSNeqc8lpaJZbd4
         ZIDn8Kc5/rSq97ZWuMS95ega1exczQi1oRhZfbIQcAObxcQKkZF7FQ8a7pc9Ftnc5+J4
         lcmgF6EMCXX24BV7ThfP7WYwHKAMhPv9MFqn+W6UZr4PNCja+tjhFfRKE0+RHvQfzR2x
         /W6Q==
X-Gm-Message-State: AG10YOR73MXG98vLgBg2cRnCTYVGT+ZWtMkqc0K8LSd3mFRxppvaqCvBKNNyOEA6KAt/Zw==
X-Received: by 10.66.142.73 with SMTP id ru9mr28426218pab.121.1453750728402;
        Mon, 25 Jan 2016 11:38:48 -0800 (PST)
Sender: Aaron Patterson <aaron@tenderlovemaking.com>
Date: Mon, 25 Jan 2016 11:38:45 -0800
From: Aaron Patterson <tenderlove@ruby-lang.org>
To: security@suse.de, rubyonrails-security@googlegroups.com,
	oss-security@lists.openwall.com, ruby-security-ann@googlegroups.com
Message-ID: <20160125193845.GH14069@TC.local>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="xXygN3QAmJYWdGtb"
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [oss-security] [CVE-2015-7580] Possible XSS vulnerability in rails-html-sanitizer

--xXygN3QAmJYWdGtb
Content-Type: multipart/mixed; boundary="yLaBmHMi4cq+C/u4"
Content-Disposition: inline


--yLaBmHMi4cq+C/u4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Possible XSS vulnerability in rails-html-sanitizer

There is a possible XSS vulnerability in the white list sanitizer in the
rails-html-sanitizer gem. This vulnerability has been assigned the CVE
identifier CVE-2015-7580.

Versions Affected:  All.
Not affected:       None.
Fixed Versions:     v1.0.3

Impact
------
Carefully crafted strings can cause user input to bypass the sanitization in
the white list sanitizer which will can lead to an XSS attack.

Vulnerable code will look something like this:

  <%=3D sanitize user_input, tags: %w(em) %>

All users running an affected release should either upgrade or use one of t=
he
workarounds immediately.

Releases
--------
The FIXED releases are available at the normal locations.

Workarounds
-----------
Putting the following monkey patch in an initializer can help to mitigate t=
he
issue:

```
class Rails::Html::PermitScrubber
  alias :old_scrub :scrub
  alias :old_skip_node? :skip_node?

  def scrub(node)
    if node.cdata?
      text =3D node.document.create_text_node node.text
      node.replace text
      return CONTINUE
    end
    old_scrub node
  end

  def skip_node?(node); node.text?; end
end
```

Patches
-------
To aid users who aren't able to upgrade immediately we have provided patche=
s for
the two supported release series. They are in git-am format and consist of a
single changeset.

* 1-0-whitelist_sanitizer_xss.patch - Patch for 1.0 series

Credits
-------
Thanks to Arnaud Germis, Nate Clark, and John Colvin for reporting this iss=
ue.

--=20
Aaron Patterson
http://tenderlovemaking.com/

--yLaBmHMi4cq+C/u4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="1-0-whitelist_sanitizer_xss.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 8c4c58f4e671a2f9f0e1477e47ff943a3b824799 Mon Sep 17 00:00:00 2001
From: Aaron Patterson <aaron.patterson@gmail.com>
Date: Thu, 29 Oct 2015 12:06:26 -0700
Subject: [PATCH] convert CDATA nodes to TEXT nodes to avoid XSS issues

CDATA nodes will not be html escaped.  Users shouldn't be submitting
CDATA nodes in the first place, so we should convert them to text nodes
before escaping

CVE-2015-7580
---
 lib/rails/html/scrubbers.rb |  7 ++++++-
 test/sanitizer_test.rb      | 10 ++++++++++
 2 files changed, 16 insertions(+), 1 deletion(-)

diff --git a/lib/rails/html/scrubbers.rb b/lib/rails/html/scrubbers.rb
index 1384a2f..6d82a20 100644
--- a/lib/rails/html/scrubbers.rb
+++ b/lib/rails/html/scrubbers.rb
@@ -60,6 +60,11 @@ module Rails
       end
=20
       def scrub(node)
+        if node.cdata?
+          text =3D node.document.create_text_node node.text
+          node.replace text
+          return CONTINUE
+        end
         return CONTINUE if skip_node?(node)
=20
         unless keep_node?(node)
@@ -76,7 +81,7 @@ module Rails
       end
=20
       def skip_node?(node)
-        node.text? || node.cdata?
+        node.text?
       end
=20
       def scrub_attribute?(name)
diff --git a/test/sanitizer_test.rb b/test/sanitizer_test.rb
index 06d70e4..3bfc7cb 100644
--- a/test/sanitizer_test.rb
+++ b/test/sanitizer_test.rb
@@ -11,6 +11,16 @@ class SanitizersTest < Minitest::Test
     end
   end
=20
+  def test_sanitize_nested_script
+    sanitizer =3D Rails::Html::WhiteListSanitizer.new
+    assert_equal '&lt;script&gt;alert("XSS");&lt;/script&gt;', sanitizer.s=
anitize('<script><script></script>alert("XSS");<script><</script>/</script>=
<script>script></script>', tags: %w(em))
+  end
+
+  def test_sanitize_nested_script_in_style
+    sanitizer =3D Rails::Html::WhiteListSanitizer.new
+    assert_equal '&lt;script&gt;alert("XSS");&lt;/script&gt;', sanitizer.s=
anitize('<style><script></style>alert("XSS");<style><</style>/</style><styl=
e>script></style>', tags: %w(em))
+  end
+
   class XpathRemovalTestSanitizer < Rails::Html::Sanitizer
     def sanitize(html, options =3D {})
       fragment =3D Loofah.fragment(html)
--=20
2.2.1


--yLaBmHMi4cq+C/u4--

--xXygN3QAmJYWdGtb
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iQEcBAEBAgAGBQJWpnnFAAoJEJUxcLy0/6/GHGkH/2+VTqSVH3C4VNmMvC9hXjeX
3Fky302Mubct7dPNnY3aVVJ7U59rRewctl5NA2T55hdv+0+kdmknbFUKV4+pIn28
oSTrhraX0jtuFkWcwJ9EJvBic4Tq3tPcD4JU9EzQ3UnpmIxerwhn7qulF6eJO4/W
kX9dvq5PaDGtmErn4IAYaJy4mE753UYY9/D8kwEVaaajZdzdybnV3acHByN+JxZP
sXib720lcENKQedqp6vTAZBQ7Sfv8Q4Ra1BhZn/VgUh0Ee5gWej4ek+4avyu//5z
YEl1q1hM6qC2G2R3TbbesF6U5j6QNM7SxFtwS8o3y+vUC2ZPleFdL8nQcAtaijQ=
=rEzW
-----END PGP SIGNATURE-----

--xXygN3QAmJYWdGtb--
