X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7984" "Monday" "5" "November" "2018" "12:08:54" "-0800" "Aaron Patterson" "tenderlove@ruby-lang.org" "<20181105200854.GC25817@TC-275.local>" "298" "[oss-security] [CVE-2018-16471] Possible XSS vulnerability in Rack" nil nil nil "11" "2018110520:08:54" "[oss-security] [CVE-2018-16471] Possible XSS vulnerability in Rack" (number mark "U       tenderlove@r Nov  5  298/7984  " thread-indent "\"[oss-security] [CVE-2018-16471] Possible XSS vulnerability in Rack\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20059 invoked by uid 550); 5 Nov 2018 20:09:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20001 invoked from network); 5 Nov 2018 20:09:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenderlovemaking-com.20150623.gappssmtp.com; s=20150623;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=i90mykU4xko013Bxxrp443LYOUA/CyVthzVowPS4TvE=;
        b=WmuyZ+9LXAeMCE9M53hg6igOBBu6NXhYcZ6DGa+j2aAh1oEAbqUfIDF/M09BKraDma
         w5wojxQsCWuoLwo5YfqwsM5HDYAcefY3UaIi78t9JRGBeVLUrLULhJXTx0rl1OpuYaiw
         mZ463QSvJ/psrbEXh6eo7/OuGFJ4FV0yUcUrhpHAepm44jDDfda4Z+mEsnO9mZjMX8iS
         REDDg59x7vwr6XQik8bxgdLRUWZ5g1BM+YkzlP8CiRQTSUfxDHMj1Eh03LYXGAsAFWFy
         /uoMHIiFd6/QgP6qcEM1DHOMlP3aVCdCrG3hIKoCfyRoldATZElGW0pDhKfBv0GIzBjS
         ZAcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=i90mykU4xko013Bxxrp443LYOUA/CyVthzVowPS4TvE=;
        b=E0XuUEsrVsTRoGuAjO/mhHmBO4EVXW0YwD8lCENJjdzAggsIvMiMm4tsdlCyolwnfQ
         Aname0WHjaLdod9uBs5Oyt8SX1rwPrZId+ehnHkr29T4sMx5gGkAHT5cEfFNAjh4mv2R
         xJaM3NzdazfZpdP6+MF7lNHpJ9EnwAnIQggC/MmMF2Ogyschh2EuTR6Slpr+i0u1PvRb
         uUj21DDVyR1PezMRbpnonYO+L14S9bkP1qSStrVZznGhP8qY/SDILAte6qLBz7ovyuQ+
         1uVUiHqC99Yc9wrif8aZmQPNgq6vjq3xccJ7PVc1+ET2xmE+PsD4h/bnYDKLEevVnLTq
         YOpQ==
X-Gm-Message-State: AGRZ1gLKyoqL8g/+lW583pmPUvf5f+olagSodRlogNT0LxUVrXJ41hlf
	drsp7xyQosgFKNxbszhJlqMZCQ==
X-Google-Smtp-Source: AJdET5d295Z3r2P5Qs3hAGRg4gx9MSk3jfODCRL6pxWJk2oBwD8k5qmBd6Fpg+Ld4LYnx1stlH+k8Q==
X-Received: by 2002:a63:7d0f:: with SMTP id y15-v6mr11623184pgc.171.1541448536924;
        Mon, 05 Nov 2018 12:08:56 -0800 (PST)
Sender: Aaron Patterson <aaron@tenderlovemaking.com>
Date: Mon, 5 Nov 2018 12:08:54 -0800
From: Aaron Patterson <tenderlove@ruby-lang.org>
To: security@suse.de, rubyonrails-security@googlegroups.com,
	oss-security@lists.openwall.com, ruby-security-ann@googlegroups.com
Message-ID: <20181105200854.GC25817@TC-275.local>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="VdOwlNaOFKGAtAAV"
Content-Disposition: inline
User-Agent: Mutt/1.9.5 (2018-04-13)
Subject: [oss-security] [CVE-2018-16471] Possible XSS vulnerability in Rack

--VdOwlNaOFKGAtAAV
Content-Type: multipart/mixed; boundary="mSxgbZZZvrAyzONB"
Content-Disposition: inline


--mSxgbZZZvrAyzONB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

There is a possible vulnerability in Rack. This vulnerability has been
assigned the CVE identifier CVE-2018-16471.

Versions Affected:  All.
Not affected:       None.
Fixed Versions:     2.0.6, 1.6.11

Impact
------
There is a possible XSS vulnerability in Rack.  Carefully crafted requests =
can
impact the data returned by the `scheme` method on `Rack::Request`.
Applications that expect the scheme to be limited to "http" or "https" and =
do
not escape the return value could be vulnerable to an XSS attack.

Vulnerable code looks something like this:

```
  <%=3D request.scheme.html_safe %>
```

Note that applications using the normal escaping mechanisms provided by Rai=
ls
may not impacted, but applications that bypass the escaping mechanisms, or =
do
not use them may be vulnerable.

All users running an affected release should either upgrade or use one of t=
he
workarounds immediately.

Releases
--------
The 2.0.6 and 1.6.11 releases are available at the normal locations.

Workarounds
-----------
The following monkey patch can be applied to work around this issue:

```
require "rack"
require "rack/request"

class Rack::Request
  SCHEME_WHITELIST =3D %w(https http).freeze

  def scheme
    if get_header(Rack::HTTPS) =3D=3D 'on'
      'https'
    elsif get_header(HTTP_X_FORWARDED_SSL) =3D=3D 'on'
      'https'
    elsif forwarded_scheme
      forwarded_scheme
    else
      get_header(Rack::RACK_URL_SCHEME)
    end
  end

  def forwarded_scheme
    scheme_headers =3D [
      get_header(HTTP_X_FORWARDED_SCHEME),
      get_header(HTTP_X_FORWARDED_PROTO).to_s.split(',')[0]
    ]

    scheme_headers.each do |header|
      return header if SCHEME_WHITELIST.include?(header)
    end

    nil
  end
end
```

Patches
-------
To aid users who aren't able to upgrade immediately we have provided patche=
s for
the supported release series. They are in git-am format and consist of a
single changeset.

* 2-0-scheme-xss.patch - Patch for 2.0 series
* 1-6-scheme-xss.patch - Patch for 1.6 series

Please note that only the 1.6.x and 2.0.x series are supported at present. =
Users
of earlier unsupported releases are advised to upgrade as soon as possible =
as we
cannot guarantee the continued availability of security fixes for unsupport=
ed
releases.

Credits
-------

* Patrick Tulskie <patricktulskie@gmail.com>

Thank you!

--=20
Aaron Patterson
http://tenderlovemaking.com/

--mSxgbZZZvrAyzONB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="1-6-scheme-xss.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 97ca63d87d88b4088fb1995b14103d4fe6a5e594 Mon Sep 17 00:00:00 2001
From: Patrick Tulskie <patricktulskie@gmail.com>
Date: Wed, 22 Aug 2018 12:45:30 -0400
Subject: [PATCH] Whitelist http/https schemes

[CVE-2018-16471]
---
 lib/rack/request.rb  | 21 +++++++++++++++++----
 test/spec_request.rb |  5 +++++
 2 files changed, 22 insertions(+), 4 deletions(-)

diff --git a/lib/rack/request.rb b/lib/rack/request.rb
index ac95b1c..3c35671 100644
--- a/lib/rack/request.rb
+++ b/lib/rack/request.rb
@@ -13,6 +13,8 @@ module Rack
     # The environment of the request.
     attr_reader :env
=20
+    SCHEME_WHITELIST =3D %w(https http).freeze
+
     def initialize(env)
       @env =3D env
     end
@@ -68,10 +70,8 @@ module Rack
         'https'
       elsif @env['HTTP_X_FORWARDED_SSL'] =3D=3D 'on'
         'https'
-      elsif @env['HTTP_X_FORWARDED_SCHEME']
-        @env['HTTP_X_FORWARDED_SCHEME']
-      elsif @env['HTTP_X_FORWARDED_PROTO']
-        @env['HTTP_X_FORWARDED_PROTO'].split(',')[0]
+      elsif forwarded_scheme
+        forwarded_scheme
       else
         @env["rack.url_scheme"]
       end
@@ -394,5 +394,18 @@ module Rack
         s
       end
     end
+
+    def forwarded_scheme
+      scheme_headers =3D [
+        @env['HTTP_X_FORWARDED_SCHEME'],
+        @env['HTTP_X_FORWARDED_PROTO'].to_s.split(',')[0]
+      ]
+
+      scheme_headers.each do |header|
+        return header if SCHEME_WHITELIST.include?(header)
+      end
+
+      nil
+    end
   end
 end
diff --git a/test/spec_request.rb b/test/spec_request.rb
index a44e0a7..8025613 100644
--- a/test/spec_request.rb
+++ b/test/spec_request.rb
@@ -425,6 +425,11 @@ describe Rack::Request do
     request.should.be.ssl?
   end
=20
+  should "prevent scheme abuse" do
+    request =3D Rack::Request.new(Rack::MockRequest.env_for("/", 'HTTP_X_F=
ORWARDED_SCHEME' =3D> 'a."><script>alert(1)</script>'))
+    request.scheme.should.not.equal 'a."><script>alert(1)</script>'
+  end
+
   should "parse cookies" do
     req =3D Rack::Request.new \
       Rack::MockRequest.env_for("", "HTTP_COOKIE" =3D> "foo=3Dbar;quux=3Dh=
&m")
--=20
2.17.0


--mSxgbZZZvrAyzONB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="2-0-scheme-xss.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 313dd6a05a5924ed6c82072299c53fed09e39ae7 Mon Sep 17 00:00:00 2001
From: Patrick Tulskie <patricktulskie@gmail.com>
Date: Wed, 22 Aug 2018 12:56:43 -0400
Subject: [PATCH] Whitelist http/https schemes

[CVE-2018-16471]
---
 lib/rack/request.rb  | 21 +++++++++++++++++----
 test/spec_request.rb |  5 +++++
 2 files changed, 22 insertions(+), 4 deletions(-)

diff --git a/lib/rack/request.rb b/lib/rack/request.rb
index 2a00de7..6307b61 100644
--- a/lib/rack/request.rb
+++ b/lib/rack/request.rb
@@ -11,6 +11,8 @@ module Rack
   #   req.params["data"]
=20
   class Request
+    SCHEME_WHITELIST =3D %w(https http).freeze
+
     def initialize(env)
       @params =3D nil
       super(env)
@@ -188,10 +190,8 @@ module Rack
           'https'
         elsif get_header(HTTP_X_FORWARDED_SSL) =3D=3D 'on'
           'https'
-        elsif get_header(HTTP_X_FORWARDED_SCHEME)
-          get_header(HTTP_X_FORWARDED_SCHEME)
-        elsif get_header(HTTP_X_FORWARDED_PROTO)
-          get_header(HTTP_X_FORWARDED_PROTO).split(',')[0]
+        elsif forwarded_scheme
+          forwarded_scheme
         else
           get_header(RACK_URL_SCHEME)
         end
@@ -479,6 +479,19 @@ module Rack
       def reject_trusted_ip_addresses(ip_addresses)
         ip_addresses.reject { |ip| trusted_proxy?(ip) }
       end
+
+      def forwarded_scheme
+        scheme_headers =3D [
+          get_header(HTTP_X_FORWARDED_SCHEME),
+          get_header(HTTP_X_FORWARDED_PROTO).to_s.split(',')[0]
+        ]
+
+        scheme_headers.each do |header|
+          return header if SCHEME_WHITELIST.include?(header)
+        end
+
+        nil
+      end
     end
=20
     include Env
diff --git a/test/spec_request.rb b/test/spec_request.rb
index bdad68f..cfaedbc 100644
--- a/test/spec_request.rb
+++ b/test/spec_request.rb
@@ -572,6 +572,11 @@ class RackRequestTest < Minitest::Spec
     request.must_be :ssl?
   end
=20
+  it "prevents scheme abuse" do
+    request =3D make_request(Rack::MockRequest.env_for("/", 'HTTP_X_FORWAR=
DED_SCHEME' =3D> 'a."><script>alert(1)</script>'))
+    request.scheme.must_equal 'http'
+  end
+
   it "parse cookies" do
     req =3D make_request \
       Rack::MockRequest.env_for("", "HTTP_COOKIE" =3D> "foo=3Dbar;quux=3Dh=
&m")
--=20
2.17.0


--mSxgbZZZvrAyzONB--

--VdOwlNaOFKGAtAAV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEETOkbdaeYKOhrGqi7lTFwvLT/r8YFAlvgo1YACgkQlTFwvLT/
r8bOdAf/X63R8SIC2M8a2oN+F8y37VQtb9eCGHAXq+rsjV9eATmzs4to+RBFI08r
EP8Ds0lOp9pXtsMROuUIR6Pyz5E/b88nkyxK0q4BtCu4mvvlU5H5RDlHi76DXFON
I3wOoPOommE1V9xpxGZd/i89bMUYzeZJXbQLEQRidTnJWekve+MXGQINpgl70N8B
IfCyRIYWFdjtdl65QZu4pryOAwUCVuH+YqChITe+ZsvtPPhBvVnG4UyahGqXi3/Z
vM3agPhgQFxJI0DH1q5szTGG/RNRMmuxzu1oUIjMjIuo++un0tz2AnwEL3d3qnBA
CcU4/9Q/ZLVzU6/enj3ELJUND/D0Aw==
=RgDV
-----END PGP SIGNATURE-----

--VdOwlNaOFKGAtAAV--
