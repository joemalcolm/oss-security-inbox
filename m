X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6477" "Monday" "25" "January" "2016" "11:40:08" "-0800" "Aaron Patterson" "tenderlove@ruby-lang.org" "<20160125194008.GI14069@TC.local>" "199" "[oss-security] [CVE-2015-7581] Object leak vulnerability for wildcard controller routes in Action Pack" "^Date:" nil nil "1" "2016012519:40:08" "[oss-security] [CVE-2015-7581] Object leak vulnerability for wildcard controller routes in Action Pack" (number mark "U       tenderlove@r Jan 25  199/6477  " thread-indent "\"[oss-security] [CVE-2015-7581] Object leak vulnerability for wildcard controller routes in Action Pack\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17505 invoked by uid 550); 25 Jan 2016 19:40:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17449 invoked from network); 25 Jan 2016 19:40:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenderlovemaking-com.20150623.gappssmtp.com; s=20150623;
        h=sender:date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=r/FR4fU3vxQFhMiLOuHkKL5h14aOx38MG5QM9k6RgN8=;
        b=ix9L7/oMJMimDgobUd+sm3RQUytdCle8ccz8ECVUL7RI9k4pG+2KeAMhRtGn6PeS0O
         /9vrdEhwTJ5KrmM0+UI7tWLWYOrigTtMFLGrVMCjzDBKY6E5H6unp1k/7ay4DYZKoJ7T
         afIl0piDRBqrkSV9r3zecTWjBFwuO++6fLCq3e7xH9uLLCqH3T28cRYQk8vNPiHsgKw7
         /kPGtlXrH4jM5BTgwwatoKxtEFBMmoWUrDGZBOXHX6G2bmsZVzg1OPcqNwFfxObZqXeQ
         meArAJ3rYxHdSTclgoYAeznafhN40UwhT8eudkJZdH0MUJv8H6xi9ulmXRNAHaZHL+zk
         xUTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-type:content-disposition:user-agent;
        bh=r/FR4fU3vxQFhMiLOuHkKL5h14aOx38MG5QM9k6RgN8=;
        b=PuvzXu0aWjNhZnZ5dC3w/Qovbj+mKEod9kI2RlTv/mPbzK6xY6eAneOx6qCpm1HB04
         T1bXXL2QBg29XS+YPMSTivSPiP17nqWlb0JDa1E+ufkkT/RNYKa2mEOVyGGI6exXwKDd
         c3sOPHHox2emG7TTJP1B47M3K2x8ntb+ydBBOWrV42ZDfoq8hdpLzEeP8+vDa8InsABV
         Y0JJnaoV1oeBXrLdtWVSYlTCZ3NI6Ac1ulqS3/NhsrAtBMSYzUwCUZwExJ4Uj5tc/7yZ
         wBI5CCDDIdOGLBvPOaWqxpTiZcJBQFBt9GxU5HxyWPOhgCQWe2ZXMui83yB/5nrTE4tL
         ELKw==
X-Gm-Message-State: AG10YOT2EvVxlm8C20cDII+Q0mbtnIyYNXuu983MEzqZVLT9ILKmQytHx4Lj1SnuA3Qh7w==
X-Received: by 10.98.69.209 with SMTP id n78mr27829984pfi.81.1453750810960;
        Mon, 25 Jan 2016 11:40:10 -0800 (PST)
Message-ID: <20160125194008.GI14069@TC.local>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="Kuk/n493crKO4rgR"
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Date: Mon, 25 Jan 2016 11:40:08 -0800
From: Aaron Patterson <tenderlove@ruby-lang.org>
Reply-To: oss-security@lists.openwall.com
Sender: Aaron Patterson <aaron@tenderlovemaking.com>
Subject: [oss-security] [CVE-2015-7581] Object leak vulnerability for wildcard controller
 routes in Action Pack
To: security@suse.de, rubyonrails-security@googlegroups.com,
	oss-security@lists.openwall.com, ruby-security-ann@googlegroups.com

--Kuk/n493crKO4rgR
Content-Type: multipart/mixed; boundary="Mh8CTEa8Ax54aLHp"
Content-Disposition: inline


--Mh8CTEa8Ax54aLHp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Object leak vulnerability for wildcard controller routes in Action Pack

There is an object leak vulnerability for wildcard controllers in Action Pa=
ck.
This vulnerability has been assigned the CVE identifier CVE-2015-7581.

Versions Affected:  >=3D 4.0.0 and < 5.0.0.beta1
Not affected:       < 4.0.0, 5.0.0.beta1 and newer
Fixed Versions:     4.2.5.1, 4.1.14.1

Impact
------
Users that have a route that contains the string ":controller" are suscepti=
ble
to objects being leaked globally which can lead to unbounded memory growth.
To identify if your application is vulnerable, look for routes that contain
":controller".

Internally, Action Pack keeps a map of "url controller name" to "controller
class name".  This map is cached globally, and is populated even if the
controller class doesn't actually exist.

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
s for the two supported release series.  They are in git-am format and cons=
ist of a single changeset.

* 4-1-wildcard_route.patch - Patch for 4.1 series
* 4-2-wildcard_route.patch - Patch for 4.2 series

Please note that only the 4.1.x and 4.2.x series are supported at present. =
 Users of earlier unsupported releases are advised to upgrade as soon as po=
ssible as we cannot guarantee the continued availability of security fixes =
for unsupported releases.

Credits
-------

--=20
Aaron Patterson
http://tenderlovemaking.com/

--Mh8CTEa8Ax54aLHp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="4-1-wildcard_route.patch"
Content-Transfer-Encoding: quoted-printable

=46rom fb790341d0ea25ad91116c283d49a2c83a8ea299 Mon Sep 17 00:00:00 2001
From: eileencodes <eileencodes@gmail.com>
Date: Fri, 21 Aug 2015 11:26:19 -0400
Subject: [PATCH] Remove unnecessary caching

`ActiveSupport::Dependencies.constantize(const_name)` calls
`Reference.new` which is defined as
`ActiveSupport::Dependencies.constantize(const_name)` meaning this call
is already cached and we're doing caching that isn't necessary.

Conflicts:
	actionpack/lib/action_dispatch/routing/route_set.rb

Conflicts:
	actionpack/lib/action_dispatch/routing/route_set.rb

CVE-2015-7581
---
 actionpack/lib/action_dispatch/routing/route_set.rb | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/actionpack/lib/action_dispatch/routing/route_set.rb b/actionpa=
ck/lib/action_dispatch/routing/route_set.rb
index 51dd607..5f727fd 100644
--- a/actionpack/lib/action_dispatch/routing/route_set.rb
+++ b/actionpack/lib/action_dispatch/routing/route_set.rb
@@ -1,6 +1,5 @@
 require 'action_dispatch/journey'
 require 'forwardable'
-require 'thread_safe'
 require 'active_support/concern'
 require 'active_support/core_ext/object/to_query'
 require 'active_support/core_ext/hash/slice'
@@ -24,7 +23,6 @@ module ActionDispatch
         def initialize(options=3D{})
           @defaults =3D options[:defaults]
           @glob_param =3D options.delete(:glob)
-          @controller_class_names =3D ThreadSafe::Cache.new
         end
=20
         def call(env)
@@ -74,7 +72,7 @@ module ActionDispatch
       private
=20
         def controller_reference(controller_param)
-          const_name =3D @controller_class_names[controller_param] ||=3D "=
#{controller_param.camelize}Controller"
+          const_name =3D "#{controller_param.camelize}Controller"
           ActiveSupport::Dependencies.constantize(const_name)
         end
=20
--=20
2.2.1


--Mh8CTEa8Ax54aLHp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="4-2-wildcard_route.patch"
Content-Transfer-Encoding: quoted-printable

=46rom a32c6b06f1f4367e541db2f096e1426d80155329 Mon Sep 17 00:00:00 2001
From: eileencodes <eileencodes@gmail.com>
Date: Fri, 21 Aug 2015 11:26:19 -0400
Subject: [PATCH] Remove unnecessary caching

`ActiveSupport::Dependencies.constantize(const_name)` calls
`Reference.new` which is defined as
`ActiveSupport::Dependencies.constantize(const_name)` meaning this call
is already cached and we're doing caching that isn't necessary.

Conflicts:
	actionpack/lib/action_dispatch/routing/route_set.rb

CVE-2015-7581
---
 actionpack/lib/action_dispatch/routing/route_set.rb | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/actionpack/lib/action_dispatch/routing/route_set.rb b/actionpa=
ck/lib/action_dispatch/routing/route_set.rb
index 7ef9c0a..2834dd4 100644
--- a/actionpack/lib/action_dispatch/routing/route_set.rb
+++ b/actionpack/lib/action_dispatch/routing/route_set.rb
@@ -1,6 +1,5 @@
 require 'action_dispatch/journey'
 require 'forwardable'
-require 'thread_safe'
 require 'active_support/concern'
 require 'active_support/core_ext/object/to_query'
 require 'active_support/core_ext/hash/slice'
@@ -26,7 +25,6 @@ module ActionDispatch
       class Dispatcher < Routing::Endpoint
         def initialize(defaults)
           @defaults =3D defaults
-          @controller_class_names =3D ThreadSafe::Cache.new
         end
=20
         def dispatcher?; true; end
@@ -68,7 +66,7 @@ module ActionDispatch
       private
=20
         def controller_reference(controller_param)
-          const_name =3D @controller_class_names[controller_param] ||=3D "=
#{controller_param.camelize}Controller"
+          const_name =3D "#{controller_param.camelize}Controller"
           ActiveSupport::Dependencies.constantize(const_name)
         end
=20
--=20
2.2.1


--Mh8CTEa8Ax54aLHp--

--Kuk/n493crKO4rgR
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iQEcBAEBAgAGBQJWpnoYAAoJEJUxcLy0/6/GpcYH/Akf4zf/+CPp+ITQIOfd2tTI
UIRjcgkRwXwIOEY55JdhnvDyKB9ey1dSNZgjro4z0MILsGAlCg052wcaO8WX7aW8
G0X8i9YZLrPn/kUa4y3p5TyXjrkk/Frw1Bn0f84MUEn3NohjCOK2L+WJAOrepOXQ
+QgFwJK7++cplzUShma7CTMQJYLqdy4BewB6qDgLkADfVltLsTz9TWXZ++wtRGyM
T3VHEbwntSU1Gh3B754U7+HOahRMqRrHIiYi+blEzxNYa6OsiLZCSP5vUMAnMgPH
UElK1wU3kGiTkgPmtnplqF5ZayNnUvSzAPLQzjUNEumSh2Q4CRt/E5fJd6lFS2g=
=AnZG
-----END PGP SIGNATURE-----

--Kuk/n493crKO4rgR--
