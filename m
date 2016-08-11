X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["11635" "Thursday" "11" "August" "2016" "10:52:10" "-0700" "Aaron Patterson" "tenderlove@ruby-lang.org" "<20160811175209.GA39068@TC.local>" "334" "[oss-security] [CVE-2016-6316] Possible XSS Vulnerability in Action View" nil nil nil "8" "2016081117:52:10" "[oss-security] [CVE-2016-6316] Possible XSS Vulnerability in Action View" (number mark "U       tenderlove@r Aug 11  334/11635 " thread-indent "\"[oss-security] [CVE-2016-6316] Possible XSS Vulnerability in Action View\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17611 invoked by uid 550); 11 Aug 2016 17:52:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17593 invoked from network); 11 Aug 2016 17:52:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenderlovemaking-com.20150623.gappssmtp.com; s=20150623;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=lU85mspv+Yrxnhk369ohpEzgFQMDmVs68jadd7u5cCM=;
        b=P7aCVxhH4WFl4PbFV5K03n5ZCwM51AHQc2P29Bp7NWL5l5mHWixpjDWeITRDLg+4oc
         492BHbEZtC7Wb95q++IKWKeWzLrHjudoxRM6GYmKnG2br2acZKLT+0O2wXWA/rXlHGg6
         orGsRUE2PYm+bJkfj9ayxdcokSRDSDFpU4LSNrcK/uUAsNWpoGy75K0oGNYOTifQFAtd
         LFHNrJhUgARQjIV+kqEtuACKLud7Xx+WzuKCCFjAlj8Mny/1MZP84xVelFAnz3KwK46H
         eWTGMvSxCtYmZOBJxyj1R+Jk1i/EiItbAEI9V6ozQIzVqtozKsmlE8Y67VnP5xb0MvvP
         Ttdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=lU85mspv+Yrxnhk369ohpEzgFQMDmVs68jadd7u5cCM=;
        b=cb1ksDR1v9NmVfZmk9Q5AHm4k2wFnuTPm6ny4UihWYgsIYvTespEFhwHhMEpvgaedI
         0G+yBL7paeaPPVsWkn62E4iGm8szL/hy34Z6pKHiKAlKgD7EhLFO2mHeyLInTw24fYBT
         Aex/rYkoYs7DboWxOeXep1EBAN763m5qIcqkqg8I4Uk5+Y8HXKIfuvLsc6ROsBJLrFEY
         DsiHA8nFdk4JB/D2AKY4kPr6ZIOjFs5JZE5WFUJ4iCh8BTOoJZ/6nGMGZ7PktdmOPTnq
         HM/6C3IEbcdOflhu14IA3WOHoOTUbGFXbwf+rXQ4lwIaS7V+2xhdgw7M4y+jJqoaSJTi
         3HvA==
X-Gm-Message-State: AEkoouvt5jl88GOconUtaOKT61vdmwyc08ZSJzcERpnvYstozjQX8LqsfljLaBV/XYtsZA==
X-Received: by 10.98.92.65 with SMTP id q62mr19383535pfb.70.1470937933384;
        Thu, 11 Aug 2016 10:52:13 -0700 (PDT)
Sender: Aaron Patterson <aaron@tenderlovemaking.com>
Date: Thu, 11 Aug 2016 10:52:10 -0700
From: Aaron Patterson <tenderlove@ruby-lang.org>
To: security@suse.de, rubyonrails-security@googlegroups.com,
	oss-security@lists.openwall.com, ruby-security-ann@googlegroups.com
Message-ID: <20160811175209.GA39068@TC.local>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="DBIVS5p969aUjpLe"
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [oss-security] [CVE-2016-6316] Possible XSS Vulnerability in Action View

--DBIVS5p969aUjpLe
Content-Type: multipart/mixed; boundary="uAKRQypu60I7Lcqm"
Content-Disposition: inline


--uAKRQypu60I7Lcqm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

# Possible XSS Vulnerability in Action View

There is a possible XSS vulnerability in Action View.  Text declared as "HT=
ML
safe" will not have quotes escaped when used as attribute values in tag
helpers.  This vulnerability has been assigned the CVE identifier
CVE-2016-6316.

Versions Affected:  >=3D 3.0.0.
Not affected:       < 3.0.0
Fixed Versions:     5.0.0.1, 4.2.7.1, 3.2.22.3

Impact
------
Text declared as "HTML safe" when passed as an attribute value to a tag hel=
per
will not have quotes escaped which can lead to an XSS attack.  Impacted code
looks something like this:

```
content_tag(:div, "hi", title: user_input.html_safe)
```

Some helpers like the `sanitize` helper will automatically mark strings as
"HTML safe", so impacted code could also look something like this:

```
content_tag(:div, "hi", title: sanitize(user_input))
```

All users running an affected release should either upgrade or use one of t=
he
workarounds immediately.

Releases
--------
The FIXED releases are available at the normal locations.

Workarounds
-----------
You can work around this issue by either *not* marking arbitrary user input=
 as
safe, or by manually escaping quotes like this:

```
def escape_quotes(value)
  value.gsub(/"/, '&quot;'.freeze)
end

content_tag(:div, "hi", title: escape_quotes(sanitize(user_input)))
```

Patches
-------
To aid users who aren't able to upgrade immediately we have provided patche=
s for
the two supported release series. They are in git-am format and consist of a
single changeset.

* 3-2-attribute-xss.patch - Patch for 3.2 series
* 4-2-attribute-xss.patch - Patch for 4.2 series
* 5-0-attribute-xss.patch - Patch for 5.0 series

Please note that only the 5.0.x and 4.2.x series are supported at present. =
Users
of earlier unsupported releases are advised to upgrade as soon as possible =
as we
cannot guarantee the continued availability of security fixes for unsupport=
ed
releases.

Credits
-------

Thanks to Andrew Carpenter of Critical Juncture for reporting this issue and
sending a patch to fix it!

--=20
Aaron Patterson
http://tenderlovemaking.com/

--uAKRQypu60I7Lcqm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="3-2-attribute-xss.patch"
Content-Transfer-Encoding: quoted-printable

=46rom cbdb7d367c4f15ecb85c308a0d78f61d629a74c1 Mon Sep 17 00:00:00 2001
From: Andrew Carpenter <andrew@criticaljuncture.org>
Date: Thu, 28 Jul 2016 16:12:21 -0700
Subject: [PATCH] ensure tag/content_tag escapes " in attribute vals

Many helpers mark content as HTML-safe without escaping double quotes -- in=
cluding `sanitize`. Regardless of whether or not the attribute values are H=
TML-escaped, we want to be sure they don't include double quotes, as that c=
an cause XSS issues. For example: `content_tag(:div, "foo", title: sanitize=
('" onmouseover=3D"alert(1);//'))`

CVE-2016-6316
---
 actionpack/lib/action_view/helpers/tag_helper.rb | 15 +++++++++++----
 actionpack/test/template/tag_helper_test.rb      | 10 ++++++++++
 2 files changed, 21 insertions(+), 4 deletions(-)

diff --git a/actionpack/lib/action_view/helpers/tag_helper.rb b/actionpack/=
lib/action_view/helpers/tag_helper.rb
index 7f58a27..34741b8 100644
--- a/actionpack/lib/action_view/helpers/tag_helper.rb
+++ b/actionpack/lib/action_view/helpers/tag_helper.rb
@@ -141,20 +141,27 @@ module ActionView
                   unless v.is_a?(String) || v.is_a?(Symbol) || v.is_a?(Big=
Decimal)
                     v =3D v.to_json
                   end
-                  v =3D ERB::Util.html_escape(v) if escape
-                  attrs << %(data-#{k.to_s.dasherize}=3D"#{v}")
+                  attrs << tag_option("data-#{k.to_s.dasherize}", v, escap=
e)
                 end
               elsif BOOLEAN_ATTRIBUTES.include?(key)
                 attrs << %(#{key}=3D"#{key}") if value
               elsif !value.nil?
                 final_value =3D value.is_a?(Array) ? value.join(" ") : val=
ue
-                final_value =3D ERB::Util.html_escape(final_value) if esca=
pe
-                attrs << %(#{key}=3D"#{final_value}")
+                attrs << tag_option(key, value, escape)
               end
             end
             " #{attrs.sort * ' '}".html_safe unless attrs.empty?
           end
         end
+
+        def tag_option(key, value, escape)
+          if value.is_a?(Array)
+            value =3D escape ? safe_join(value, " ") : value.join(" ")
+          else
+            value =3D escape ? ERB::Util.html_escape(value) : value
+          end
+          %(#{key}=3D"#{value.gsub(/"/, '&quot;'.freeze)}")
+        end
     end
   end
 end
diff --git a/actionpack/test/template/tag_helper_test.rb b/actionpack/test/=
template/tag_helper_test.rb
index e362955..9c3d636 100644
--- a/actionpack/test/template/tag_helper_test.rb
+++ b/actionpack/test/template/tag_helper_test.rb
@@ -101,6 +101,16 @@ class TagHelperTest < ActionView::TestCase
     end
   end
=20
+  def test_tag_does_not_honor_html_safe_double_quotes_as_attributes
+    assert_dom_equal '<p title=3D"&quot;">content</p>',
+      content_tag('p', "content", title: '"'.html_safe)
+  end
+
+  def test_data_tag_does_not_honor_html_safe_double_quotes_as_attributes
+    assert_dom_equal '<p data-title=3D"&quot;">content</p>',
+      content_tag('p', "content", data: { title: '"'.html_safe })
+  end
+
   def test_skip_invalid_escaped_attributes
     ['&1;', '&#1dfa3;', '& #123;'].each do |escaped|
       assert_equal %(<a href=3D"#{escaped.gsub(/&/, '&amp;')}" />), tag('a=
', :href =3D> escaped)
--=20
2.8.1


--uAKRQypu60I7Lcqm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="4-2-attribute-xss.patch"
Content-Transfer-Encoding: quoted-printable

=46rom e4abbc8636e1300d14b1fd7e3f05e4e25bc8289e Mon Sep 17 00:00:00 2001
From: Andrew Carpenter <andrew@criticaljuncture.org>
Date: Thu, 28 Jul 2016 16:12:21 -0700
Subject: [PATCH 1/2] ensure tag/content_tag escapes " in attribute vals

Many helpers mark content as HTML-safe without escaping double quotes -- in=
cluding `sanitize`. Regardless of whether or not the attribute values are H=
TML-escaped, we want to be sure they don't include double quotes, as that c=
an cause XSS issues. For example: `content_tag(:div, "foo", title: sanitize=
('" onmouseover=3D"alert(1);//'))`

CVE-2016-6316
---
 actionview/lib/action_view/helpers/tag_helper.rb |  2 +-
 actionview/test/template/tag_helper_test.rb      | 10 ++++++++++
 2 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/actionview/lib/action_view/helpers/tag_helper.rb b/actionview/=
lib/action_view/helpers/tag_helper.rb
index b203857..f09595d 100644
--- a/actionview/lib/action_view/helpers/tag_helper.rb
+++ b/actionview/lib/action_view/helpers/tag_helper.rb
@@ -181,7 +181,7 @@ module ActionView
           else
             value =3D escape ? ERB::Util.unwrapped_html_escape(value) : va=
lue
           end
-          %(#{key}=3D"#{value}")
+          %(#{key}=3D"#{value.gsub(/"/, '&quot;'.freeze)}")
         end
     end
   end
diff --git a/actionview/test/template/tag_helper_test.rb b/actionview/test/=
template/tag_helper_test.rb
index ce89d57..8332dd0 100644
--- a/actionview/test/template/tag_helper_test.rb
+++ b/actionview/test/template/tag_helper_test.rb
@@ -140,6 +140,16 @@ class TagHelperTest < ActionView::TestCase
     assert_equal '<p class=3D"song> play&gt;" />', str
   end
=20
+  def test_tag_does_not_honor_html_safe_double_quotes_as_attributes
+    assert_dom_equal '<p title=3D"&quot;">content</p>',
+      content_tag('p', "content", title: '"'.html_safe)
+  end
+
+  def test_data_tag_does_not_honor_html_safe_double_quotes_as_attributes
+    assert_dom_equal '<p data-title=3D"&quot;">content</p>',
+      content_tag('p', "content", data: { title: '"'.html_safe })
+  end
+
   def test_skip_invalid_escaped_attributes
     ['&1;', '&#1dfa3;', '& #123;'].each do |escaped|
       assert_equal %(<a href=3D"#{escaped.gsub(/&/, '&amp;')}" />), tag('a=
', :href =3D> escaped)
--=20
2.8.1


--uAKRQypu60I7Lcqm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="5-0-attribute-xss.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 0a3487c7a06a60569817266ffdd39ef0409839d4 Mon Sep 17 00:00:00 2001
From: Andrew Carpenter <andrew@criticaljuncture.org>
Date: Thu, 28 Jul 2016 16:12:21 -0700
Subject: [PATCH] ensure tag/content_tag escapes " in attribute vals

Many helpers mark content as HTML-safe without escaping double quotes -- in=
cluding `sanitize`. Regardless of whether or not the attribute values are H=
TML-escaped, we want to be sure they don't include double quotes, as that c=
an cause XSS issues. For example: `content_tag(:div, "foo", title: sanitize=
('" onmouseover=3D"alert(1);//'))`

CVE-2016-6316
---
 actionview/lib/action_view/helpers/tag_helper.rb |  2 +-
 actionview/test/template/tag_helper_test.rb      | 12 +++++++++++-
 2 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/actionview/lib/action_view/helpers/tag_helper.rb b/actionview/=
lib/action_view/helpers/tag_helper.rb
index 42e7358..ac26c29 100644
--- a/actionview/lib/action_view/helpers/tag_helper.rb
+++ b/actionview/lib/action_view/helpers/tag_helper.rb
@@ -189,7 +189,7 @@ def tag_option(key, value, escape)
           else
             value =3D escape ? ERB::Util.unwrapped_html_escape(value) : va=
lue
           end
-          %(#{key}=3D"#{value}")
+          %(#{key}=3D"#{value.gsub(/"/, '&quot;'.freeze)}")
         end
     end
   end
diff --git a/actionview/test/template/tag_helper_test.rb b/actionview/test/=
template/tag_helper_test.rb
index f3956a3..fe5ec03 100644
--- a/actionview/test/template/tag_helper_test.rb
+++ b/actionview/test/template/tag_helper_test.rb
@@ -150,6 +150,16 @@ def test_tag_honors_html_safe_with_escaped_array_class
     assert_equal '<p class=3D"song> play&gt;" />', str
   end
=20
+  def test_tag_does_not_honor_html_safe_double_quotes_as_attributes
+    assert_dom_equal '<p title=3D"&quot;">content</p>',
+      content_tag('p', "content", title: '"'.html_safe)
+  end
+
+  def test_data_tag_does_not_honor_html_safe_double_quotes_as_attributes
+    assert_dom_equal '<p data-title=3D"&quot;">content</p>',
+      content_tag('p', "content", data: { title: '"'.html_safe })
+  end
+
   def test_skip_invalid_escaped_attributes
     ['&1;', '&#1dfa3;', '& #123;'].each do |escaped|
       assert_equal %(<a href=3D"#{escaped.gsub(/&/, '&amp;')}" />), tag('a=
', :href =3D> escaped)
@@ -177,6 +187,6 @@ def test_aria_attributes
   def test_link_to_data_nil_equal
     div_type1 =3D content_tag(:div, 'test', { 'data-tooltip' =3D> nil })
     div_type2 =3D content_tag(:div, 'test', { data: {tooltip: nil} })
-    assert_dom_equal div_type1, div_type2=20
+    assert_dom_equal div_type1, div_type2
   end
 end
--=20
2.8.1


--uAKRQypu60I7Lcqm--

--DBIVS5p969aUjpLe
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iQEcBAEBAgAGBQJXrLtJAAoJEJUxcLy0/6/G64gH/3j3AybU6Yh3zG5ptvlYoYXt
YHMs6TZXPIRwRih9g9pHiM5dltP4wbbFHvh0r8Yo8QnaqMxFwaIzkONZ+KA7fxVi
CJK4Dp7it6HykjtA6/uBfo6meLkJkV8xBAvaQtSMhl0NKN+6CASfg1RNThIBXjlj
tuAUKxoS6g5H0UwN87jF65ZQP9050HWC1qzQvxjzqSbxRchpMAH83MBXGRGhBwPV
6KMpX+yzYiZHhnvA2IxE+ZTJdZvb+yNwGXILpSmPpV+V2yYpoHWCOrAM8Fez7tls
qpbLJ6s1D90gLtmox5wjCMzvxucoS0oSxAdFVMumRlN368l4ZFp48G61NqQ70vg=
=jbz2
-----END PGP SIGNATURE-----

--DBIVS5p969aUjpLe--
