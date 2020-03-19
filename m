X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8170" "Thursday" "19" "March" "2020" "09:58:40" "-0700" "Aaron Patterson" "tenderlove@ruby-lang.org" "<20200319165840.GA16288@tc-lan-adapter.local>" "256" "[oss-security] [CVE-2020-5267] Possible XSS vulnerability in ActionView" nil nil nil "3" "2020031916:58:40" "[oss-security] [CVE-2020-5267] Possible XSS vulnerability in ActionView" (number mark "U       tenderlove@r Mar 19  256/8170  " thread-indent "\"[oss-security] [CVE-2020-5267] Possible XSS vulnerability in ActionView\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-5267] Possible XSS vulnerability in ActionView" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29833 invoked by uid 550); 19 Mar 2020 16:58:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29813 invoked from network); 19 Mar 2020 16:58:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenderlovemaking-com.20150623.gappssmtp.com; s=20150623;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=0kisjREFT/IbaApNgX31/eCrNx4EeGGOv6nny7lDcSA=;
        b=KRm0rZrEy+UdQYgqaDLo07sYtkqNTp9dbHWj5VFWOGIgIByofmj+g0sFRE1c1hOSAB
         yMH2cFUMDZtl3M3JbMrrTX3PfQBUmHw785LsUw4sseJVyyH3ye3Z6Cb/X3/AnKWral8b
         cjhNwGPB2qx1Q04vafdfbsoV0GeFUWUPinO/IzhuQXaxx32GvjRLE/oTeGuwhyc/8hgf
         /PT7IRp5bz5BEbl7launMS0+ovbKta6dFUkzt9CfSIvaGINN5WlV3jRVNtPg6NoMpYdx
         U1eGD3CvK9Q4Aoz8gyd2vnsbbWRrAyceAutAUEIuXFARHpqdxZMEl+7wWQPxksAUZQBy
         XLWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=0kisjREFT/IbaApNgX31/eCrNx4EeGGOv6nny7lDcSA=;
        b=E/J1oMBgrBkUUXP2loh57uIu9zYRO/U5L4WmNJIs3VtIIJDWkftz0K2sO8dhg3G8jh
         Cf8xSvvSeQ6pELH+KA7+1cWTvTVwohZUxt+ac11nQ5B9xIDcCheUh+0JKPtAKygilHcV
         liTu1hzofCgC7+H4fGb2BJN4D0kW9z0kI5HVJP+rZkgrIj8kh1RNWVlC37CwLy1CIMCo
         wNP6ACDkAENJaxsgXqFfkd7c3Bgv/ABNvx0pWem4sssXgxRN0F/0ix6ReyIekIdOwtN3
         1xC2rkPkjEsmaQfexHXUrlUDhch11Chsr+FuvB8knZDopzpCeuSUx4dvC4xDU2w86eXQ
         YrTg==
X-Gm-Message-State: ANhLgQ3fFa3zQRqPuc8vsibCaNSbiX52U62eFOK+YCLKrHDaWlnfElwF
	BWw1ogFndF2MHujlWrgR0zd2CA==
X-Google-Smtp-Source: ADFU+vtvIfDEn6NM4ZiyfZ+nvGek4tiJhNN5b/0mUagq0JMdsQ5iUXeZL4fPEWdNJtFuRImISqzKVw==
X-Received: by 2002:a62:a119:: with SMTP id b25mr4959741pff.158.1584637123509;
        Thu, 19 Mar 2020 09:58:43 -0700 (PDT)
Sender: Aaron Patterson <aaron@tenderlovemaking.com>
Date: Thu, 19 Mar 2020 09:58:40 -0700
From: Aaron Patterson <tenderlove@ruby-lang.org>
To: security@suse.de, rubyonrails-security@googlegroups.com,
	oss-security@lists.openwall.com, ruby-security-ann@googlegroups.com
Message-ID: <20200319165840.GA16288@tc-lan-adapter.local>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xgyAXRrhYN0wYx8y"
Content-Disposition: inline
User-Agent: Mutt/1.12.2 (2019-09-21)
Subject: [oss-security] [CVE-2020-5267] Possible XSS vulnerability in ActionView

--xgyAXRrhYN0wYx8y
Content-Type: multipart/mixed; boundary="7AUc2qLy4jB3hD7Z"
Content-Disposition: inline


--7AUc2qLy4jB3hD7Z
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

There is a possible XSS vulnerability in ActionView's JavaScript literal
escape helpers.  Views that use the `j` or `escape_javascript` methods
may be susceptible to XSS attacks.

Versions Affected:  All.
Not affected:       None.
Fixed Versions:     6.0.2.2, 5.2.4.2

### Impact

There is a possible XSS vulnerability in the `j` and `escape_javascript`
methods in ActionView.  These methods are used for escaping JavaScript stri=
ng
literals.  Impacted code will look something like this:

```erb
<script>let a =3D `<%=3D j unknown_input %>`</script>
```

or

```erb
<script>let a =3D `<%=3D escape_javascript unknown_input %>`</script>
```

### Releases

The 6.0.2.2 and 5.2.4.2 releases are available at the normal locations.

### Workarounds

For those that can't upgrade, the following monkey patch may be used:

```ruby
ActionView::Helpers::JavaScriptHelper::JS_ESCAPE_MAP.merge!(
  {
    "`" =3D> "\\`",
    "$" =3D> "\\$"
  }
)

module ActionView::Helpers::JavaScriptHelper
  alias :old_ej :escape_javascript
  alias :old_j :j

  def escape_javascript(javascript)
    javascript =3D javascript.to_s
    if javascript.empty?
      result =3D ""
    else
      result =3D javascript.gsub(/(\\|<\/|\r\n|\342\200\250|\342\200\251|[\=
n\r"']|[`]|[$])/u, JS_ESCAPE_MAP)
    end
    javascript.html_safe? ? result.html_safe : result
  end

  alias :j :escape_javascript
end
```

### Patches

To aid users who aren't able to upgrade immediately we have provided patche=
s for
the two supported release series. They are in git-am format and consist of a
single changeset.

* 5-2-js-helper-xss.patch - Patch for 5.2 series
* 6-0-js-helper-xss.patch - Patch for 6.0 series

Please note that only the 5.2 and 6.0 series are supported at present. Users
of earlier unsupported releases are advised to upgrade as soon as possible =
as we
cannot guarantee the continued availability of security fixes for unsupport=
ed
releases.

### Credits

Thanks to Jesse Campos from Chef Secure

--=20
Aaron Patterson
http://tenderlovemaking.com/

--7AUc2qLy4jB3hD7Z
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="5-2-js-helper-xss.patch"
Content-Transfer-Encoding: quoted-printable

=46rom b5aeef5703dab7da9ebb47cc20e4c8b64f7f5866 Mon Sep 17 00:00:00 2001
From: Aaron Patterson <aaron.patterson@gmail.com>
Date: Thu, 12 Mar 2020 10:25:48 -0700
Subject: [PATCH] Fix possible XSS vector in JS escape helper

This commit escapes dollar signs and backticks to prevent JS XSS issues
when using the `j` or `javascript_escape` helper

CVE-2020-5267
---
 actionview/lib/action_view/helpers/javascript_helper.rb | 6 ++++--
 actionview/test/template/javascript_helper_test.rb      | 8 ++++++++
 2 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/actionview/lib/action_view/helpers/javascript_helper.rb b/acti=
onview/lib/action_view/helpers/javascript_helper.rb
index acc50f8a62..5d966ba3aa 100644
--- a/actionview/lib/action_view/helpers/javascript_helper.rb
+++ b/actionview/lib/action_view/helpers/javascript_helper.rb
@@ -12,7 +12,9 @@ module JavaScriptHelper
         "\n"    =3D> '\n',
         "\r"    =3D> '\n',
         '"'     =3D> '\\"',
-        "'"     =3D> "\\'"
+        "'"     =3D> "\\'",
+        "`"     =3D> "\\`",
+        "$"     =3D> "\\$"
       }
=20
       JS_ESCAPE_MAP["\342\200\250".dup.force_encoding(Encoding::UTF_8).enc=
ode!] =3D "&#x2028;"
@@ -26,7 +28,7 @@ module JavaScriptHelper
       #   $('some_element').replaceWith('<%=3D j render 'some/element_temp=
late' %>');
       def escape_javascript(javascript)
         if javascript
-          result =3D javascript.gsub(/(\\|<\/|\r\n|\342\200\250|\342\200\2=
51|[\n\r"'])/u) { |match| JS_ESCAPE_MAP[match] }
+          result =3D javascript.gsub(/(\\|<\/|\r\n|\342\200\250|\342\200\2=
51|[\n\r"']|[`]|[$])/u) { |match| JS_ESCAPE_MAP[match] }
           javascript.html_safe? ? result.html_safe : result
         else
           ""
diff --git a/actionview/test/template/javascript_helper_test.rb b/actionvie=
w/test/template/javascript_helper_test.rb
index a72bc6c2fe..de24245e51 100644
--- a/actionview/test/template/javascript_helper_test.rb
+++ b/actionview/test/template/javascript_helper_test.rb
@@ -32,6 +32,14 @@ def test_escape_javascript
     assert_equal %(dont <\\/close> tags), j(%(dont </close> tags))
   end
=20
+  def test_escape_backtick
+    assert_equal "\\`", escape_javascript("`")
+  end
+
+  def test_escape_dollar_sign
+    assert_equal "\\$", escape_javascript("$")
+  end
+
   def test_escape_javascript_with_safebuffer
     given =3D %('quoted' "double-quoted" new-line:\n </closed>)
     expect =3D %(\\'quoted\\' \\"double-quoted\\" new-line:\\n <\\/closed>)
--=20
2.21.0


--7AUc2qLy4jB3hD7Z
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="6-0-js-helper-xss.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 1251d8817264744163fb12a3dba05ce61be5371b Mon Sep 17 00:00:00 2001
From: Aaron Patterson <aaron.patterson@gmail.com>
Date: Thu, 12 Mar 2020 10:25:48 -0700
Subject: [PATCH] Fix possible XSS vector in JS escape helper

This commit escapes dollar signs and backticks to prevent JS XSS issues
when using the `j` or `javascript_escape` helper

CVE-2020-5267
---
 actionview/lib/action_view/helpers/javascript_helper.rb | 6 ++++--
 actionview/test/template/javascript_helper_test.rb      | 8 ++++++++
 2 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/actionview/lib/action_view/helpers/javascript_helper.rb b/acti=
onview/lib/action_view/helpers/javascript_helper.rb
index b680cb1bd3..b04b1cb43e 100644
--- a/actionview/lib/action_view/helpers/javascript_helper.rb
+++ b/actionview/lib/action_view/helpers/javascript_helper.rb
@@ -12,7 +12,9 @@ module JavaScriptHelper
         "\n"    =3D> '\n',
         "\r"    =3D> '\n',
         '"'     =3D> '\\"',
-        "'"     =3D> "\\'"
+        "'"     =3D> "\\'",
+        "`"     =3D> "\\`",
+        "$"     =3D> "\\$"
       }
=20
       JS_ESCAPE_MAP[(+"\342\200\250").force_encoding(Encoding::UTF_8).enco=
de!] =3D "&#x2028;"
@@ -29,7 +31,7 @@ def escape_javascript(javascript)
         if javascript.empty?
           result =3D ""
         else
-          result =3D javascript.gsub(/(\\|<\/|\r\n|\342\200\250|\342\200\2=
51|[\n\r"'])/u) { |match| JS_ESCAPE_MAP[match] }
+          result =3D javascript.gsub(/(\\|<\/|\r\n|\342\200\250|\342\200\2=
51|[\n\r"']|[`]|[$])/u) { |match| JS_ESCAPE_MAP[match] }
         end
         javascript.html_safe? ? result.html_safe : result
       end
diff --git a/actionview/test/template/javascript_helper_test.rb b/actionvie=
w/test/template/javascript_helper_test.rb
index f974e5ae0c..4b7284d15b 100644
--- a/actionview/test/template/javascript_helper_test.rb
+++ b/actionview/test/template/javascript_helper_test.rb
@@ -36,6 +36,14 @@ def test_escape_javascript
     assert_equal %(dont <\\/close> tags), j(%(dont </close> tags))
   end
=20
+  def test_escape_backtick
+    assert_equal "\\`", escape_javascript("`")
+  end
+
+  def test_escape_dollar_sign
+    assert_equal "\\$", escape_javascript("$")
+  end
+
   def test_escape_javascript_with_safebuffer
     given =3D %('quoted' "double-quoted" new-line:\n </closed>)
     expect =3D %(\\'quoted\\' \\"double-quoted\\" new-line:\\n <\\/closed>)
--=20
2.21.0


--7AUc2qLy4jB3hD7Z--

--xgyAXRrhYN0wYx8y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEETOkbdaeYKOhrGqi7lTFwvLT/r8YFAl5zpL8ACgkQlTFwvLT/
r8aMKQf/eMjeFCub3ZZ7Kjr3JUFrjAjHqnnSTMYk4FNmHEVrUVNMpf4MDfGcrN9q
v2/wlCmRM297dCrURWXfKUpZ+DN6HV+VrHN4sAeW7DJnXRJ7abF2FAYR/2nVwCgc
p1/YEM6V1x7z5aXi/MWw14EfXCSVvsGwVR6t/02op78gSAuM/qmNfVmjJf1nTBlY
MBVme9CXd/FVZYwon/BI9iL0yxa8cYfMZNNXwEgrXSXj+9Xu5xYARhtd3l1iYBuX
+cLn8wYI5CM1y4rAxjN8kx3boZto7WP+SY1y/JtGvpUpVXuSMDflCOndn+UAwoTl
HYn/VM6bqvJluqSuT+K6mbxrGsWVkQ==
=tXI0
-----END PGP SIGNATURE-----

--xgyAXRrhYN0wYx8y--
