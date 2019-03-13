X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["23926" "Wednesday" "13" "March" "2019" "10:16:40" "-0700" "Aaron Patterson" "tenderlove@ruby-lang.org" "<20190313171640.GB90773@TC-275.local>" "721" "[oss-security] [CVE-2019-5419] Denial of Service Vulnerability in Action View" nil nil nil "3" "2019031317:16:40" "[oss-security] [CVE-2019-5419] Denial of Service Vulnerability in Action View" (number mark "U       tenderlove@r Mar 13  721/23926 " thread-indent "\"[oss-security] [CVE-2019-5419] Denial of Service Vulnerability in Action View\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-5419] Denial of Service Vulnerability in Action View" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11703 invoked by uid 550); 13 Mar 2019 17:16:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11615 invoked from network); 13 Mar 2019 17:16:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenderlovemaking-com.20150623.gappssmtp.com; s=20150623;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=OBmE7WsCAY8M5lye5wEkk0fa2ygYRbi6MdkM9HdnWJg=;
        b=ywCbq9UZIUxq7OE18g4/WPXc00z8iZSo8DqGeOMim5d5SRBbEHA//Lp9ONV/ZRBYux
         Sh6vAfNzBTvC8VgtheH+19T7Bmmq7sd5Cvqu9FDpWO6vbzOtPY6k6Bfc2rJfmmFqIzzh
         +6pv/Z0/tJ/8TIavDfahBhGw01xVDlx0pKDfr3OfSH2/aV8EdHn0V2CuBXeUrqvGBe7T
         QO9YEhA4bfMsyh1DM5A1VP8bw67WMZfH2w8uCmAvAUGHb8OFkUnyxC1sWnoLPkw5tBwL
         N5+jY7v7NjLysq3sUMNBtE2JOuaHt6LrgP6H9RMm7ZbmJDB39kIIdD0fpbDqFmVph/6y
         J9GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=OBmE7WsCAY8M5lye5wEkk0fa2ygYRbi6MdkM9HdnWJg=;
        b=Lp2csHpHrLL4op4mKcFW8t+UhQTQYJgydMODjnSF257NsFAQ7KbJda869qS3/zrsD2
         q69TwbIrWD5yFv73tALFtOP32Fcg/eC9f6udUqfPVfJmMuPhNbGsUUp+N0jtLKEViQMn
         UGOx2akq+HDaOEy+bdKV8ffZCWCu1kdH374GmvLOEYNugf6KZ2dB8fLE5yXdr/VwoQ59
         7X8ZyxaJS6Qo0Y73SUkXJPT+4nMEsNy24I+8JigCwE3UKjVvL1n24Png+OFIpwwUYEVo
         WAG7MTco/WwG5NtZg2l/PEHdg6LepC1c54z+ee5S+rNTq1TZwtL81+iyyHkXLT1742yZ
         +uHQ==
X-Gm-Message-State: APjAAAVv8kJVrsEqw0BmiElZXwPC9AiqDvWdUbQoNuACa2wRXvwEW1Zw
	CpleXwt1uA3rH9x+uEjOg578UA==
X-Google-Smtp-Source: APXvYqzSE18vAv2P2n+cdF7ByUJ35JzFOR7aPM6xzv5CdoDnvSLT2BUaL3n/3tw7HYKnJLKPUzgj1A==
X-Received: by 2002:a17:902:2947:: with SMTP id g65mr46460050plb.258.1552497403157;
        Wed, 13 Mar 2019 10:16:43 -0700 (PDT)
Sender: Aaron Patterson <aaron@tenderlovemaking.com>
Date: Wed, 13 Mar 2019 10:16:40 -0700
From: Aaron Patterson <tenderlove@ruby-lang.org>
To: security@suse.de, rubyonrails-security@googlegroups.com,
	oss-security@lists.openwall.com, ruby-security-ann@googlegroups.com
Message-ID: <20190313171640.GB90773@TC-275.local>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fOHHtNG4YXGJ0yqR"
Content-Disposition: inline
User-Agent: Mutt/1.9.5 (2018-04-13)
Subject: [oss-security] [CVE-2019-5419] Denial of Service Vulnerability in Action View

--fOHHtNG4YXGJ0yqR
Content-Type: multipart/mixed; boundary="gr/z0/N6AeWAPJVB"
Content-Disposition: inline


--gr/z0/N6AeWAPJVB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

There is a potential denial of service vulnerability in MODULE / COMPONENT.
This vulnerability has been assigned the CVE identifier CVE-2019-5419.

Versions Affected:  All.
Not affected:       None.
Fixed Versions:     6.0.0.beta3, 5.2.2.1, 5.1.6.2, 5.0.7.2, 4.2.11.1

Impact
------
Specially crafted accept headers can cause the Action View template location
code to consume 100% CPU, causing the server unable to process requests.  T=
his
impacts all Rails applications that render views.

All users running an affected release should either upgrade or use one of t=
he
workarounds immediately.

Releases
--------
The 6.0.0.beta3, 5.2.2.1, 5.1.6.2, 5.0.7.2, and 4.2.11.1 releases are
available at the normal locations.

Workarounds
-----------
This vulnerability can be mitigated by wrapping `render` calls with
`respond_to` blocks.  For example, the following example is vulnerable:

```
class UserController < ApplicationController
  def index
    render "index"
  end
end
```

But the following code is not vulnerable:

```
class UserController < ApplicationController
  def index
    respond_to |format|
      format.html { render "index" }
    end
  end
end
```

Implicit rendering is impacted, so this code is vulnerable:

```
class UserController < ApplicationController
  def index
  end
end
```

But can be changed this this:

```
class UserController < ApplicationController
  def index
    respond_to |format|
      format.html { render "index" }
    end
  end
end
```

Alternatively to specifying the format, the following monkey patch can be
applied in an initializer:

```
$ cat config/initializers/formats_filter.rb
# frozen_string_literal: true

ActionDispatch::Request.prepend(Module.new do
  def formats
    super().select do |format|
      format.symbol || format.ref =3D=3D "*/*"
    end
  end
end)
```

Patches
-------
To aid users who aren't able to upgrade immediately we have provided patche=
s for
the two supported release series. They are in git-am format and consist of a
single changeset.

* 6-0-action-view-dos.patch - Patch for 6.0 series
* 5-2-action-view-dos.patch - Patch for 5.2 series
* 5-1-action-view-dos.patch - Patch for 5.1 series
* 5-0-action-view-dos.patch - Patch for 5.0 series
* 4-2-action-view-dos.patch - Patch for 4.2 series

Please note that only the 5.2.x, 5.1.x, 5.0.x, and 4.2.x series are support=
ed
at present. Users of earlier unsupported releases are advised to upgrade as
soon as possible as we cannot guarantee the continued availability of secur=
ity
fixes for unsupported releases.

Also note that the patches for this vulnerability are the same as CVE-2019-=
5418.

Credits
-------
Thanks to John Hawthorn <john@hawthorn.email> of GitHub

--=20
Aaron Patterson
http://tenderlovemaking.com/

--gr/z0/N6AeWAPJVB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="4-2-action-view-dos.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 58ed245e80a8710fbe31e91417bfd19f9f934cc4 Mon Sep 17 00:00:00 2001
From: John Hawthorn <john@hawthorn.email>
Date: Mon, 4 Mar 2019 18:24:51 -0800
Subject: [PATCH] Only accept formats from registered mime types

[CVE-2019-5418]
[CVE-2019-5419]
---
 .../lib/action_dispatch/http/mime_negotiation.rb |  6 +++++-
 .../test/controller/mime/respond_to_test.rb      | 14 ++++++++------
 .../new_base/content_negotiation_test.rb         | 16 +++++++++++++---
 3 files changed, 26 insertions(+), 10 deletions(-)

diff --git a/actionpack/lib/action_dispatch/http/mime_negotiation.rb b/acti=
onpack/lib/action_dispatch/http/mime_negotiation.rb
index 53a98c5d0a..00fd3d03df 100644
--- a/actionpack/lib/action_dispatch/http/mime_negotiation.rb
+++ b/actionpack/lib/action_dispatch/http/mime_negotiation.rb
@@ -61,7 +61,7 @@ module ActionDispatch
                               false
                             end
=20
-          if params_readable
+          v =3D if params_readable
             Array(Mime[parameters[:format]])
           elsif use_accept_header && valid_accept_header
             accepts
@@ -70,6 +70,10 @@ module ActionDispatch
           else
             [Mime::HTML]
           end
+
+          v.select do |format|
+            format.symbol || format.ref =3D=3D "*/*"
+          end
         end
       end
=20
diff --git a/actionpack/test/controller/mime/respond_to_test.rb b/actionpac=
k/test/controller/mime/respond_to_test.rb
index 66d2fd7716..07ad0085fc 100644
--- a/actionpack/test/controller/mime/respond_to_test.rb
+++ b/actionpack/test/controller/mime/respond_to_test.rb
@@ -87,9 +87,9 @@ class RespondToController < ActionController::Base
=20
   def custom_type_handling
     respond_to do |type|
-      type.html { render :text =3D> "HTML"    }
-      type.custom("application/crazy-xml")  { render :text =3D> "Crazy XML=
"  }
-      type.all  { render :text =3D> "Nothing" }
+      type.html { render text: "HTML"    }
+      type.custom("application/fancy-xml")  { render text: "Fancy XML"  }
+      type.all  { render text: "Nothing" }
     end
   end
=20
@@ -269,12 +269,14 @@ class RespondToControllerTest < ActionController::Tes=
tCase
     @request.host =3D "www.example.com"
     Mime::Type.register_alias("text/html", :iphone)
     Mime::Type.register("text/x-mobile", :mobile)
+    Mime::Type.register("application/fancy-xml", :fancy_xml)
   end
=20
   def teardown
     super
     Mime::Type.unregister(:iphone)
     Mime::Type.unregister(:mobile)
+    Mime::Type.unregister(:fancy_xml)
   end
=20
   def test_html
@@ -430,10 +432,10 @@ class RespondToControllerTest < ActionController::Tes=
tCase
   end
=20
   def test_custom_types
-    @request.accept =3D "application/crazy-xml"
+    @request.accept =3D "application/fancy-xml"
     get :custom_type_handling
-    assert_equal "application/crazy-xml", @response.content_type
-    assert_equal 'Crazy XML', @response.body
+    assert_equal "application/fancy-xml", @response.content_type
+    assert_equal "Fancy XML", @response.body
=20
     @request.accept =3D "text/html"
     get :custom_type_handling
diff --git a/actionpack/test/controller/new_base/content_negotiation_test.r=
b b/actionpack/test/controller/new_base/content_negotiation_test.rb
index 5fd5946619..57bf16ac9c 100644
--- a/actionpack/test/controller/new_base/content_negotiation_test.rb
+++ b/actionpack/test/controller/new_base/content_negotiation_test.rb
@@ -19,9 +19,19 @@ module ContentNegotiation
       assert_body "Hello world */*!"
     end
=20
-    test "Not all mimes are converted to symbol" do
-      get "/content_negotiation/basic/all", {}, "HTTP_ACCEPT" =3D> "text/p=
lain, mime/another"
-      assert_body '[:text, "mime/another"]'
+    test "A js or */* Accept header will return HTML" do
+      get "/content_negotiation/basic/hello", {}, { "HTTP_ACCEPT" =3D> "te=
xt/javascript, */*" }
+      assert_body "Hello world text/html!"
+    end
+
+    test "A js or */* Accept header on xhr will return HTML" do
+      xhr :get, "/content_negotiation/basic/hello", {}, { "HTTP_ACCEPT" =
=3D> "text/javascript, */*" }
+      assert_body "Hello world text/javascript!"
+    end
+
+    test "Unregistered mimes are ignored" do
+      get "/content_negotiation/basic/all", {}, { "HTTP_ACCEPT" =3D> "text=
/plain, mime/another" }
+      assert_body '[:text]'
     end
   end
 end
--=20
2.21.0


--gr/z0/N6AeWAPJVB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="5-0-action-view-dos.patch"
Content-Transfer-Encoding: quoted-printable

=46rom c79dcbce9bfd20fe7f72ca431c49965ee39bd645 Mon Sep 17 00:00:00 2001
From: John Hawthorn <john@hawthorn.email>
Date: Mon, 4 Mar 2019 18:24:51 -0800
Subject: [PATCH] Only accept formats from registered mime types

[CVE-2019-5418]
[CVE-2019-5419]
---
 .../lib/action_dispatch/http/mime_negotiation.rb   |  5 +++++
 actionpack/test/controller/mime/respond_to_test.rb | 10 ++++++----
 .../new_base/content_negotiation_test.rb           | 14 ++++++++++++--
 3 files changed, 23 insertions(+), 6 deletions(-)

diff --git a/actionpack/lib/action_dispatch/http/mime_negotiation.rb b/acti=
onpack/lib/action_dispatch/http/mime_negotiation.rb
index f17b93fad7..a39052e6f7 100644
--- a/actionpack/lib/action_dispatch/http/mime_negotiation.rb
+++ b/actionpack/lib/action_dispatch/http/mime_negotiation.rb
@@ -76,6 +76,11 @@ def formats
           else
             [Mime[:html]]
           end
+
+          v =3D v.select do |format|
+            format.symbol || format.ref =3D=3D "*/*"
+          end
+
           set_header k, v
         end
       end
diff --git a/actionpack/test/controller/mime/respond_to_test.rb b/actionpac=
k/test/controller/mime/respond_to_test.rb
index 993f4001de..d113db8b76 100644
--- a/actionpack/test/controller/mime/respond_to_test.rb
+++ b/actionpack/test/controller/mime/respond_to_test.rb
@@ -104,7 +104,7 @@ def made_for_content_type
   def custom_type_handling
     respond_to do |type|
       type.html { render body: "HTML"    }
-      type.custom("application/crazy-xml")  { render body: "Crazy XML"  }
+      type.custom("application/fancy-xml")  { render body: "Fancy XML"  }
       type.all  { render body: "Nothing" }
     end
   end
@@ -294,12 +294,14 @@ def setup
     @request.host =3D "www.example.com"
     Mime::Type.register_alias("text/html", :iphone)
     Mime::Type.register("text/x-mobile", :mobile)
+    Mime::Type.register("application/fancy-xml", :fancy_xml)
   end
=20
   def teardown
     super
     Mime::Type.unregister(:iphone)
     Mime::Type.unregister(:mobile)
+    Mime::Type.unregister(:fancy_xml)
   end
=20
   def test_html
@@ -455,10 +457,10 @@ def test_synonyms
   end
=20
   def test_custom_types
-    @request.accept =3D "application/crazy-xml"
+    @request.accept =3D "application/fancy-xml"
     get :custom_type_handling
-    assert_equal "application/crazy-xml", @response.content_type
-    assert_equal 'Crazy XML', @response.body
+    assert_equal "application/fancy-xml", @response.content_type
+    assert_equal "Fancy XML", @response.body
=20
     @request.accept =3D "text/html"
     get :custom_type_handling
diff --git a/actionpack/test/controller/new_base/content_negotiation_test.r=
b b/actionpack/test/controller/new_base/content_negotiation_test.rb
index c0e92b3b05..b867bcd675 100644
--- a/actionpack/test/controller/new_base/content_negotiation_test.rb
+++ b/actionpack/test/controller/new_base/content_negotiation_test.rb
@@ -19,9 +19,19 @@ def all
       assert_body "Hello world */*!"
     end
=20
-    test "Not all mimes are converted to symbol" do
+    test "A js or */* Accept header will return HTML" do
+      get "/content_negotiation/basic/hello", headers: { "HTTP_ACCEPT" =3D=
> "text/javascript, */*" }
+      assert_body "Hello world text/html!"
+    end
+
+    test "A js or */* Accept header on xhr will return HTML" do
+      get "/content_negotiation/basic/hello", headers: { "HTTP_ACCEPT" =3D=
> "text/javascript, */*" }, xhr: true
+      assert_body "Hello world text/javascript!"
+    end
+
+    test "Unregistered mimes are ignored" do
       get "/content_negotiation/basic/all", headers: { "HTTP_ACCEPT" =3D> =
"text/plain, mime/another" }
-      assert_body '[:text, "mime/another"]'
+      assert_body '[:text]'
     end
   end
 end
--=20
2.21.0


--gr/z0/N6AeWAPJVB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="5-1-action-view-dos.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 92c025d7f17ff256ac50f5e3bc014bb1a016d1ec Mon Sep 17 00:00:00 2001
From: John Hawthorn <john@hawthorn.email>
Date: Mon, 4 Mar 2019 18:24:51 -0800
Subject: [PATCH] Only accept formats from registered mime types

[CVE-2019-5418]
[CVE-2019-5419]
---
 .../lib/action_dispatch/http/mime_negotiation.rb   |  5 +++++
 actionpack/test/controller/mime/respond_to_test.rb | 10 ++++++----
 .../new_base/content_negotiation_test.rb           | 14 ++++++++++++--
 3 files changed, 23 insertions(+), 6 deletions(-)

diff --git a/actionpack/lib/action_dispatch/http/mime_negotiation.rb b/acti=
onpack/lib/action_dispatch/http/mime_negotiation.rb
index c4fe3a5c09..9a93a454bc 100644
--- a/actionpack/lib/action_dispatch/http/mime_negotiation.rb
+++ b/actionpack/lib/action_dispatch/http/mime_negotiation.rb
@@ -76,6 +76,11 @@ def formats
           else
             [Mime[:html]]
           end
+
+          v =3D v.select do |format|
+            format.symbol || format.ref =3D=3D "*/*"
+          end
+
           set_header k, v
         end
       end
diff --git a/actionpack/test/controller/mime/respond_to_test.rb b/actionpac=
k/test/controller/mime/respond_to_test.rb
index 61bd5c80c4..0ab3b696c5 100644
--- a/actionpack/test/controller/mime/respond_to_test.rb
+++ b/actionpack/test/controller/mime/respond_to_test.rb
@@ -103,7 +103,7 @@ def made_for_content_type
   def custom_type_handling
     respond_to do |type|
       type.html { render body: "HTML"    }
-      type.custom("application/crazy-xml")  { render body: "Crazy XML"  }
+      type.custom("application/fancy-xml")  { render body: "Fancy XML"  }
       type.all  { render body: "Nothing" }
     end
   end
@@ -292,12 +292,14 @@ def setup
     @request.host =3D "www.example.com"
     Mime::Type.register_alias("text/html", :iphone)
     Mime::Type.register("text/x-mobile", :mobile)
+    Mime::Type.register("application/fancy-xml", :fancy_xml)
   end
=20
   def teardown
     super
     Mime::Type.unregister(:iphone)
     Mime::Type.unregister(:mobile)
+    Mime::Type.unregister(:fancy_xml)
   end
=20
   def test_html
@@ -453,10 +455,10 @@ def test_synonyms
   end
=20
   def test_custom_types
-    @request.accept =3D "application/crazy-xml"
+    @request.accept =3D "application/fancy-xml"
     get :custom_type_handling
-    assert_equal "application/crazy-xml", @response.content_type
-    assert_equal "Crazy XML", @response.body
+    assert_equal "application/fancy-xml", @response.content_type
+    assert_equal "Fancy XML", @response.body
=20
     @request.accept =3D "text/html"
     get :custom_type_handling
diff --git a/actionpack/test/controller/new_base/content_negotiation_test.r=
b b/actionpack/test/controller/new_base/content_negotiation_test.rb
index b870745031..edf3545782 100644
--- a/actionpack/test/controller/new_base/content_negotiation_test.rb
+++ b/actionpack/test/controller/new_base/content_negotiation_test.rb
@@ -18,9 +18,19 @@ def all
       assert_body "Hello world */*!"
     end
=20
-    test "Not all mimes are converted to symbol" do
+    test "A js or */* Accept header will return HTML" do
+      get "/content_negotiation/basic/hello", headers: { "HTTP_ACCEPT" =3D=
> "text/javascript, */*" }
+      assert_body "Hello world text/html!"
+    end
+
+    test "A js or */* Accept header on xhr will return HTML" do
+      get "/content_negotiation/basic/hello", headers: { "HTTP_ACCEPT" =3D=
> "text/javascript, */*" }, xhr: true
+      assert_body "Hello world text/javascript!"
+    end
+
+    test "Unregistered mimes are ignored" do
       get "/content_negotiation/basic/all", headers: { "HTTP_ACCEPT" =3D> =
"text/plain, mime/another" }
-      assert_body '[:text, "mime/another"]'
+      assert_body '[:text]'
     end
   end
 end
--=20
2.21.0


--gr/z0/N6AeWAPJVB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="5-2-action-view-dos.patch"
Content-Transfer-Encoding: quoted-printable

=46rom d7fac9c09a535ec7f11bb9aa8addb4af37b7d4b5 Mon Sep 17 00:00:00 2001
From: John Hawthorn <john@hawthorn.email>
Date: Mon, 4 Mar 2019 18:24:51 -0800
Subject: [PATCH] Only accept formats from registered mime types

[CVE-2019-5418]
[CVE-2019-5419]
---
 .../lib/action_dispatch/http/mime_negotiation.rb   |  5 +++++
 actionpack/test/controller/mime/respond_to_test.rb | 10 ++++++----
 .../new_base/content_negotiation_test.rb           | 14 ++++++++++++--
 3 files changed, 23 insertions(+), 6 deletions(-)

diff --git a/actionpack/lib/action_dispatch/http/mime_negotiation.rb b/acti=
onpack/lib/action_dispatch/http/mime_negotiation.rb
index d7435fa8df..ada52adfeb 100644
--- a/actionpack/lib/action_dispatch/http/mime_negotiation.rb
+++ b/actionpack/lib/action_dispatch/http/mime_negotiation.rb
@@ -74,6 +74,11 @@ def formats
           else
             [Mime[:html]]
           end
+
+          v =3D v.select do |format|
+            format.symbol || format.ref =3D=3D "*/*"
+          end
+
           set_header k, v
         end
       end
diff --git a/actionpack/test/controller/mime/respond_to_test.rb b/actionpac=
k/test/controller/mime/respond_to_test.rb
index f9ffd5f54c..a80cef83b7 100644
--- a/actionpack/test/controller/mime/respond_to_test.rb
+++ b/actionpack/test/controller/mime/respond_to_test.rb
@@ -105,7 +105,7 @@ def made_for_content_type
   def custom_type_handling
     respond_to do |type|
       type.html { render body: "HTML"    }
-      type.custom("application/crazy-xml")  { render body: "Crazy XML"  }
+      type.custom("application/fancy-xml")  { render body: "Fancy XML"  }
       type.all  { render body: "Nothing" }
     end
   end
@@ -294,12 +294,14 @@ def setup
     @request.host =3D "www.example.com"
     Mime::Type.register_alias("text/html", :iphone)
     Mime::Type.register("text/x-mobile", :mobile)
+    Mime::Type.register("application/fancy-xml", :fancy_xml)
   end
=20
   def teardown
     super
     Mime::Type.unregister(:iphone)
     Mime::Type.unregister(:mobile)
+    Mime::Type.unregister(:fancy_xml)
   end
=20
   def test_html
@@ -455,10 +457,10 @@ def test_synonyms
   end
=20
   def test_custom_types
-    @request.accept =3D "application/crazy-xml"
+    @request.accept =3D "application/fancy-xml"
     get :custom_type_handling
-    assert_equal "application/crazy-xml", @response.content_type
-    assert_equal "Crazy XML", @response.body
+    assert_equal "application/fancy-xml", @response.content_type
+    assert_equal "Fancy XML", @response.body
=20
     @request.accept =3D "text/html"
     get :custom_type_handling
diff --git a/actionpack/test/controller/new_base/content_negotiation_test.r=
b b/actionpack/test/controller/new_base/content_negotiation_test.rb
index 7205e90176..6de91c57b7 100644
--- a/actionpack/test/controller/new_base/content_negotiation_test.rb
+++ b/actionpack/test/controller/new_base/content_negotiation_test.rb
@@ -20,9 +20,19 @@ def all
       assert_body "Hello world */*!"
     end
=20
-    test "Not all mimes are converted to symbol" do
+    test "A js or */* Accept header will return HTML" do
+      get "/content_negotiation/basic/hello", headers: { "HTTP_ACCEPT" =3D=
> "text/javascript, */*" }
+      assert_body "Hello world text/html!"
+    end
+
+    test "A js or */* Accept header on xhr will return HTML" do
+      get "/content_negotiation/basic/hello", headers: { "HTTP_ACCEPT" =3D=
> "text/javascript, */*" }, xhr: true
+      assert_body "Hello world text/javascript!"
+    end
+
+    test "Unregistered mimes are ignored" do
       get "/content_negotiation/basic/all", headers: { "HTTP_ACCEPT" =3D> =
"text/plain, mime/another" }
-      assert_body '[:text, "mime/another"]'
+      assert_body '[:text]'
     end
   end
 end
--=20
2.21.0


--gr/z0/N6AeWAPJVB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="6-0-action-view-dos.patch"
Content-Transfer-Encoding: quoted-printable

=46rom f4c70c2222180b8d9d924f00af0c7fd632e26715 Mon Sep 17 00:00:00 2001
From: John Hawthorn <john@hawthorn.email>
Date: Mon, 4 Mar 2019 18:24:51 -0800
Subject: [PATCH] Only accept formats from registered mime types

[CVE-2019-5418]
[CVE-2019-5419]
---
 .../lib/action_dispatch/http/mime_negotiation.rb   |  5 +++++
 actionpack/test/controller/mime/respond_to_test.rb | 10 ++++++----
 .../new_base/content_negotiation_test.rb           | 14 ++++++++++++--
 3 files changed, 23 insertions(+), 6 deletions(-)

diff --git a/actionpack/lib/action_dispatch/http/mime_negotiation.rb b/acti=
onpack/lib/action_dispatch/http/mime_negotiation.rb
index 498b1e6695..4e81ba12a5 100644
--- a/actionpack/lib/action_dispatch/http/mime_negotiation.rb
+++ b/actionpack/lib/action_dispatch/http/mime_negotiation.rb
@@ -79,6 +79,11 @@ def formats
           else
             [Mime[:html]]
           end
+
+          v =3D v.select do |format|
+            format.symbol || format.ref =3D=3D "*/*"
+          end
+
           set_header k, v
         end
       end
diff --git a/actionpack/test/controller/mime/respond_to_test.rb b/actionpac=
k/test/controller/mime/respond_to_test.rb
index 00e1d5f3b3..21de05b323 100644
--- a/actionpack/test/controller/mime/respond_to_test.rb
+++ b/actionpack/test/controller/mime/respond_to_test.rb
@@ -125,7 +125,7 @@ def using_non_conflicting_nested_js_then_js
   def custom_type_handling
     respond_to do |type|
       type.html { render body: "HTML"    }
-      type.custom("application/crazy-xml")  { render body: "Crazy XML"  }
+      type.custom("application/fancy-xml")  { render body: "Fancy XML"  }
       type.all  { render body: "Nothing" }
     end
   end
@@ -314,12 +314,14 @@ def setup
     @request.host =3D "www.example.com"
     Mime::Type.register_alias("text/html", :iphone)
     Mime::Type.register("text/x-mobile", :mobile)
+    Mime::Type.register("application/fancy-xml", :fancy_xml)
   end
=20
   def teardown
     super
     Mime::Type.unregister(:iphone)
     Mime::Type.unregister(:mobile)
+    Mime::Type.unregister(:fancy_xml)
   end
=20
   def test_html
@@ -489,10 +491,10 @@ def test_synonyms
   end
=20
   def test_custom_types
-    @request.accept =3D "application/crazy-xml"
+    @request.accept =3D "application/fancy-xml"
     get :custom_type_handling
-    assert_equal "application/crazy-xml", @response.content_type
-    assert_equal "Crazy XML", @response.body
+    assert_equal "application/fancy-xml", @response.content_type
+    assert_equal "Fancy XML", @response.body
=20
     @request.accept =3D "text/html"
     get :custom_type_handling
diff --git a/actionpack/test/controller/new_base/content_negotiation_test.r=
b b/actionpack/test/controller/new_base/content_negotiation_test.rb
index 7205e90176..6de91c57b7 100644
--- a/actionpack/test/controller/new_base/content_negotiation_test.rb
+++ b/actionpack/test/controller/new_base/content_negotiation_test.rb
@@ -20,9 +20,19 @@ def all
       assert_body "Hello world */*!"
     end
=20
-    test "Not all mimes are converted to symbol" do
+    test "A js or */* Accept header will return HTML" do
+      get "/content_negotiation/basic/hello", headers: { "HTTP_ACCEPT" =3D=
> "text/javascript, */*" }
+      assert_body "Hello world text/html!"
+    end
+
+    test "A js or */* Accept header on xhr will return HTML" do
+      get "/content_negotiation/basic/hello", headers: { "HTTP_ACCEPT" =3D=
> "text/javascript, */*" }, xhr: true
+      assert_body "Hello world text/javascript!"
+    end
+
+    test "Unregistered mimes are ignored" do
       get "/content_negotiation/basic/all", headers: { "HTTP_ACCEPT" =3D> =
"text/plain, mime/another" }
-      assert_body '[:text, "mime/another"]'
+      assert_body '[:text]'
     end
   end
 end
--=20
2.21.0


--gr/z0/N6AeWAPJVB--

--fOHHtNG4YXGJ0yqR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEETOkbdaeYKOhrGqi7lTFwvLT/r8YFAlyJOvgACgkQlTFwvLT/
r8YupQf/WTk5lpQcC/BflqQ9XFTykgRaDlSmQbb8jYDoLwIxJfTbbztlbCEIq9WO
kGwhZ1xK+5QzItHR3fra1g2SwCrLc92pR1XultwXNCla2H0+qHiWIHUmGhKn8wP+
yBh6FAdK3y1iZ9LZfFUVk8RfQmHvyLLG1a1z/CK9d/MHuHimSBKo7vwpd+cVCXVJ
8QtPbae0n7ql8ymKuFWCV3MBdU0iAgczzWk1PW00amFjhZLXpJIcIKmWntBQh8UP
0K5zroUtRyLR4E/AghSaMyKhZex6Ck8WHc00nBJv41CWn+AUfhZOGJ7bKq9EuQ35
XnIjDBluNgVI9va67OMtppao78aP/w==
=Iveu
-----END PGP SIGNATURE-----

--fOHHtNG4YXGJ0yqR--
