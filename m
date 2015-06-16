X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["9167" "Tuesday" "16" "June" "2015" "11:03:35" "-0700" "Aaron Patterson" "tenderlove@ruby-lang.org" "<20150616180335.GA28496@TC.local>" "285" "[oss-security] [CVE-2015-3225] Potential Denial of Service Vulnerability in Rack" nil nil nil "6" "2015061618:03:35" "[oss-security] [CVE-2015-3225] Potential Denial of Service Vulnerability in Rack" (number mark "U       tenderlove@r Jun 16  285/9167  " thread-indent "\"[oss-security] [CVE-2015-3225] Potential Denial of Service Vulnerability in Rack\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 4088 invoked by uid 550); 16 Jun 2015 18:04:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3970 invoked from network); 16 Jun 2015 18:03:51 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-type:content-disposition:user-agent;
        bh=I1LBvUY8vogmY0VudQQs6taedr72HwQsHqfY2iASJNM=;
        b=eTzlIWO8H8V61oaq6WGGRrKFBB7uiZjpMLcKe9Bd9G/HmRY+A5137QcF1yuH0i4nSN
         8rGr1VRW9vJqcmm/3d2XJL5q/ZUd+Noik50hwJb+T2F0Oo2lRV3IB3GDLRvspG1uyDVy
         1iqxXUVPr4xU+VgK5JsiPUMke7/jCKADzwLgfWpWaWS5jvUGmJBF+nKZE9Y8TRqoi9r6
         hAx1b/pKfLZzUe2WE8LXu685eAVWTkmJXrwACr+Fv2kQYiJ7Uz5HFSiAAwVAdQ4ekhMw
         UiPI10uH0GYXqRReLED4TJMnMY+kTLW2LLV4ZVR6jtzWC05drl2QM4z+FYmHHKLoVfpS
         fwFQ==
X-Gm-Message-State: ALoCoQklpmNqqeARv15kRjQLbbfIdpogjup2Mot3xdy31HTyBvIrjwK7jcYCas4TLtNOySLK6eQK
X-Received: by 10.66.66.173 with SMTP id g13mr2730200pat.155.1434477819686;
        Tue, 16 Jun 2015 11:03:39 -0700 (PDT)
Sender: Aaron Patterson <aaron@tenderlovemaking.com>
Date: Tue, 16 Jun 2015 11:03:35 -0700
From: Aaron Patterson <tenderlove@ruby-lang.org>
To: security@suse.de, rubyonrails-security@googlegroups.com,
	oss-security@lists.openwall.com, ruby-security-ann@googlegroups.com
Message-ID: <20150616180335.GA28496@TC.local>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="Pd0ReVV5GZGQvF3a"
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [oss-security] [CVE-2015-3225] Potential Denial of Service Vulnerability in Rack

--Pd0ReVV5GZGQvF3a
Content-Type: multipart/mixed; boundary="6c2NcOVqGQ03X4Wi"
Content-Disposition: inline


--6c2NcOVqGQ03X4Wi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Potential Denial of Service Vulnerability in Rack

There is a potential denial of service vulnerability in Rack. This
vulnerability has been assigned the CVE identifier CVE-2015-3225.

Versions Affected:  All.
Not affected:       None.
Fixed Versions:     1.6.2, 1.5.4

Impact=20
------=20
Carefully crafted requests can cause a `SystemStackError` and potentially
cause a denial of service attack.

All users running an affected release should either upgrade or use one of t=
he workarounds immediately.=20

Releases=20
--------=20
The FIXED releases are available at the normal locations.=20

Workarounds=20
-----------=20
There are no feasible workarounds for this issue.=20


Patches=20
-------=20
To aid users who aren't able to upgrade immediately we have provided patche=
s for the two supported release series.  They are in git-am format and cons=
ist of a single changeset.=20

* 1-6-deep_params.patch - Patch for 1.6 series=20
* 1-5-deep_params.patch - Patch for 1.5 series=20

Please note that only the 1.6.x and 1.5.x series are supported at present. =
 Users of earlier unsupported releases are advised to upgrade as soon as po=
ssible as we cannot guarantee the continued availability of security fixes =
for unsupported releases.

Credits=20
-------=20

Special thanks to Tomek Rabczak from the NCC Group for reporting this!

--=20
Aaron Patterson
http://tenderlovemaking.com/

--6c2NcOVqGQ03X4Wi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="1-5-deep_params.patch"
Content-Transfer-Encoding: quoted-printable

=46rom fa15479e232663b2b5b048155b8e74228ab75d7e Mon Sep 17 00:00:00 2001
From: Aaron Patterson <aaron.patterson@gmail.com>
Date: Tue, 20 Jan 2015 14:30:13 -0800
Subject: [PATCH] raise an exception if the parameters are too deep

CVE-2015-3225

Conflicts:
	lib/rack/utils.rb
	test/spec_utils.rb
---
 lib/rack/utils.rb  | 15 +++++++++++----
 test/spec_utils.rb | 12 ++++++++++++
 2 files changed, 23 insertions(+), 4 deletions(-)

diff --git a/lib/rack/utils.rb b/lib/rack/utils.rb
index 561e46e..a163c49 100644
--- a/lib/rack/utils.rb
+++ b/lib/rack/utils.rb
@@ -52,12 +52,17 @@ module Rack
=20
     class << self
       attr_accessor :key_space_limit
+      attr_accessor :param_depth_limit
     end
=20
     # The default number of bytes to allow parameter keys to take up.
     # This helps prevent a rogue client from flooding a Request.
     self.key_space_limit =3D 65536
=20
+    # Default depth at which the parameter parser will raise an exception =
for
+    # being too deep.  This helps prevent SystemStackErrors
+    self.param_depth_limit =3D 100
+
     # Stolen from Mongrel, with some small modifications:
     # Parses a query string by breaking it up at the '&'
     # and ';' characters.  You can also use this to parse
@@ -100,7 +105,9 @@ module Rack
     end
     module_function :parse_nested_query
=20
-    def normalize_params(params, name, v =3D nil)
+    def normalize_params(params, name, v =3D nil, depth =3D Utils.param_de=
pth_limit)
+      raise RangeError if depth <=3D 0
+
       name =3D~ %r(\A[\[\]]*([^\[\]]+)\]*)
       k =3D $1 || ''
       after =3D $' || ''
@@ -118,14 +125,14 @@ module Rack
         params[k] ||=3D []
         raise TypeError, "expected Array (got #{params[k].class.name}) for=
 param `#{k}'" unless params[k].is_a?(Array)
         if params_hash_type?(params[k].last) && !params[k].last.key?(child=
_key)
-          normalize_params(params[k].last, child_key, v)
+          normalize_params(params[k].last, child_key, v, depth - 1)
         else
-          params[k] << normalize_params(params.class.new, child_key, v)
+          params[k] << normalize_params(params.class.new, child_key, v, de=
pth - 1)
         end
       else
         params[k] ||=3D params.class.new
         raise TypeError, "expected Hash (got #{params[k].class.name}) for =
param `#{k}'" unless params_hash_type?(params[k])
-        params[k] =3D normalize_params(params[k], after, v)
+        params[k] =3D normalize_params(params[k], after, v, depth - 1)
       end
=20
       return params
diff --git a/test/spec_utils.rb b/test/spec_utils.rb
index 622b8ff..c1a2207 100644
--- a/test/spec_utils.rb
+++ b/test/spec_utils.rb
@@ -123,6 +123,18 @@ describe Rack::Utils do
     Rack::Utils.parse_query(",foo=3Dbar;,", ";,").should.equal "foo" =3D> =
"bar"
   end
=20
+  should "raise an exception if the params are too deep" do
+    len =3D Rack::Utils.param_depth_limit
+
+    lambda {
+      Rack::Utils.parse_nested_query("foo#{"[a]" * len}=3Dbar")
+    }.should.raise(RangeError)
+
+    lambda {
+      Rack::Utils.parse_nested_query("foo#{"[a]" * (len - 1)}=3Dbar")
+    }.should.not.raise
+  end
+
   should "parse nested query strings correctly" do
     Rack::Utils.parse_nested_query("foo").
       should.equal "foo" =3D> nil
--=20
2.2.1


--6c2NcOVqGQ03X4Wi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="1-6-deep_params.patch"
Content-Transfer-Encoding: quoted-printable

=46rom bbac5d0d8b6a20487070dc6a298fbb8d9906a538 Mon Sep 17 00:00:00 2001
From: Aaron Patterson <aaron.patterson@gmail.com>
Date: Tue, 9 Jun 2015 17:07:31 -0700
Subject: [PATCH] raise an exception if the parameters are too deep

CVE-2015-3225
---
 lib/rack/utils.rb  | 15 +++++++++++----
 test/spec_utils.rb | 12 ++++++++++++
 2 files changed, 23 insertions(+), 4 deletions(-)

diff --git a/lib/rack/utils.rb b/lib/rack/utils.rb
index eea8c87..3b6f69f 100644
--- a/lib/rack/utils.rb
+++ b/lib/rack/utils.rb
@@ -61,6 +61,7 @@ module Rack
=20
     class << self
       attr_accessor :key_space_limit
+      attr_accessor :param_depth_limit
       attr_accessor :multipart_part_limit
     end
=20
@@ -68,6 +69,10 @@ module Rack
     # This helps prevent a rogue client from flooding a Request.
     self.key_space_limit =3D 65536
=20
+    # Default depth at which the parameter parser will raise an exception =
for
+    # being too deep.  This helps prevent SystemStackErrors
+    self.param_depth_limit =3D 100
+
     # The maximum number of parts a request can contain. Accepting too man=
y part
     # can lead to the server running out of file handles.
     # Set to `0` for no limit.
@@ -126,7 +131,9 @@ module Rack
     # normalize_params recursively expands parameters into structural type=
s. If
     # the structural types represented by two different parameter names ar=
e in
     # conflict, a ParameterTypeError is raised.
-    def normalize_params(params, name, v =3D nil)
+    def normalize_params(params, name, v =3D nil, depth =3D Utils.param_de=
pth_limit)
+      raise RangeError if depth <=3D 0
+
       name =3D~ %r(\A[\[\]]*([^\[\]]+)\]*)
       k =3D $1 || ''
       after =3D $' || ''
@@ -146,14 +153,14 @@ module Rack
         params[k] ||=3D []
         raise ParameterTypeError, "expected Array (got #{params[k].class.n=
ame}) for param `#{k}'" unless params[k].is_a?(Array)
         if params_hash_type?(params[k].last) && !params[k].last.key?(child=
_key)
-          normalize_params(params[k].last, child_key, v)
+          normalize_params(params[k].last, child_key, v, depth - 1)
         else
-          params[k] << normalize_params(params.class.new, child_key, v)
+          params[k] << normalize_params(params.class.new, child_key, v, de=
pth - 1)
         end
       else
         params[k] ||=3D params.class.new
         raise ParameterTypeError, "expected Hash (got #{params[k].class.na=
me}) for param `#{k}'" unless params_hash_type?(params[k])
-        params[k] =3D normalize_params(params[k], after, v)
+        params[k] =3D normalize_params(params[k], after, v, depth - 1)
       end
=20
       return params
diff --git a/test/spec_utils.rb b/test/spec_utils.rb
index 06ed563..c2d479f 100644
--- a/test/spec_utils.rb
+++ b/test/spec_utils.rb
@@ -134,6 +134,18 @@ describe Rack::Utils do
     }.should.not.raise
   end
=20
+  should "raise an exception if the params are too deep" do
+    len =3D Rack::Utils.param_depth_limit
+
+    lambda {
+      Rack::Utils.parse_nested_query("foo#{"[a]" * len}=3Dbar")
+    }.should.raise(RangeError)
+
+    lambda {
+      Rack::Utils.parse_nested_query("foo#{"[a]" * (len - 1)}=3Dbar")
+    }.should.not.raise
+  end
+
   should "parse nested query strings correctly" do
     Rack::Utils.parse_nested_query("foo").
       should.equal "foo" =3D> nil
--=20
2.2.1


--6c2NcOVqGQ03X4Wi--

--Pd0ReVV5GZGQvF3a
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iQEcBAEBAgAGBQJVgGT3AAoJEJUxcLy0/6/GmeMH/juedQaEH10W3Fzu+EcZKN0V
xbedyiYfTbZbxaWFK/ZhNBBJeVVNleYcJ5iJuN1k/Dz1z4cfTmEoxwKKQJCo0+eq
7H7AmLsWngRF7vtWScwgj9zGZsjjhTZEuHjyKB29XKB2rpgF3rFzGpOI/hVsHsJP
C0Hh2Hljw0KIpOzTMNByjG3hy/tNzz1uoa7XvupiEVcUYgFNTD/bQcM9Me3gX0q0
GpllDYn620ZGL2YyzKNu6EBPGjBK/XJf7yit7lBsBxqKwSlMChcnh7M6Efv6oveX
kQbd4qLvn/RDOAwlWL5Zz66ArrkDRtDquNlcae6eJNT/t8BWrllKtGztinTcoKI=
=zfcK
-----END PGP SIGNATURE-----

--Pd0ReVV5GZGQvF3a--
