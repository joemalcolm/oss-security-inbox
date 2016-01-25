X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["11673" "Monday" "25" "January" "2016" "11:32:02" "-0800" "Aaron Patterson" "tenderlove@ruby-lang.org" "<20160125193202.GB14069@TC.local>" "431" "[oss-security] [CVE-2016-0751] Possible Object Leak and Denial of Service attack in Action Pack" nil nil nil "1" "2016012519:32:02" "[oss-security] [CVE-2016-0751] Possible Object Leak and Denial of Service attack in Action Pack" (number mark "U       tenderlove@r Jan 25  431/11673 " thread-indent "\"[oss-security] [CVE-2016-0751] Possible Object Leak and Denial of Service attack in Action Pack\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31931 invoked by uid 550); 25 Jan 2016 19:32:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31865 invoked from network); 25 Jan 2016 19:32:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenderlovemaking-com.20150623.gappssmtp.com; s=20150623;
        h=sender:date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=xRpMmXxW2JRUUbMvOab0Dcof4ltOFoPNb0UCTuW3zIc=;
        b=PArNtvTYEI1FcXmRRppL5R9uJAkUaEZl7BERTNLNSXIMEZPblRz63raKGDIIZzIpHy
         +riPAnlMRt7kaLNzJLg0ju6Y+i2BlUmbWz1RMj/Y8ED/oYLQyr8Fy0H+vle4Yn6LB+BV
         QRpJ5cEh7ImOYhI4DePhlULny+ZVb+rjudnfW8e+fQkEiAcmp7MIHk1gANN4EGhaYL0I
         Sa1VF+6UzKcIoHQGl6eircSlbPG/KGJdRgoNWwTVtVu9bGEpbAg9h8Cgl8cKJ/7/bvFT
         ShS2H3ZZwUw0/5qQ7xiQ27rtbqiqyAyl1O6ss0wdfbFemubaMHUzHU2vNOWs/xdNJF2x
         eBtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-type:content-disposition:user-agent;
        bh=xRpMmXxW2JRUUbMvOab0Dcof4ltOFoPNb0UCTuW3zIc=;
        b=Lr4eIDJX8KF2ryoTYXnCNDyZfjRpM69MbInJnjF2/6wSF2gN7MwhdC3siDHKqYHbts
         Kjj+k8UlT8r2qM7Il5HkO0ZvKKf7pqVXQ835nxFN7YzSL669L6cMZP/b1nXNGe3ORc9u
         pOWB8BHHYCAWlcF3j51wYe4bz+t9r2nCkH8mFHVe4G7TqgjbpudQYjWQ9dg/Nm7UxQuf
         e9DjdnxdxYVi0LDeqX2eTZhzYUQfGGipbKKnfKVog0yWf2hu+ojsL0mnuFXCoSmLmmS/
         V7I60Y5oSWCY6U92sranAgLy4jVEO+1nvOz8PFNS3tnlgXNI7Nh/tojT2rVxHbfQF4gl
         BQyQ==
X-Gm-Message-State: AG10YOSPXEtPNXmsodJbOasVTGaiV6/9fA6gMg2+E80VT18ffeXg6r3SzwbpG1JVMb0BLQ==
X-Received: by 10.66.55.39 with SMTP id o7mr27932013pap.13.1453750324908;
        Mon, 25 Jan 2016 11:32:04 -0800 (PST)
Sender: Aaron Patterson <aaron@tenderlovemaking.com>
Date: Mon, 25 Jan 2016 11:32:02 -0800
From: Aaron Patterson <tenderlove@ruby-lang.org>
To: security@suse.de, rubyonrails-security@googlegroups.com,
	oss-security@lists.openwall.com, ruby-security-ann@googlegroups.com
Message-ID: <20160125193202.GB14069@TC.local>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="OaZoDhBhXzo6bW1J"
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [oss-security] [CVE-2016-0751] Possible Object Leak and Denial of Service attack in
 Action Pack

--OaZoDhBhXzo6bW1J
Content-Type: multipart/mixed; boundary="uXxzq0nDebZQVNAZ"
Content-Disposition: inline


--uXxzq0nDebZQVNAZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Possible Object Leak and Denial of Service attack in Action Pack

There is a possible object leak which can lead to a denial of service
vulnerability in Action Pack. This vulnerability has been
assigned the CVE identifier CVE-2016-0751.

Versions Affected:  All.
Not affected:       None.
Fixed Versions:     5.0.0.beta1.1, 4.2.5.1, 4.1.14.1, 3.2.22.1

Impact
------
A carefully crafted accept header can cause a global cache of mime types to
grow indefinitely which can lead to a possible denial of service attack in
Action Pack.

All users running an affected release should either upgrade or use one of t=
he
workarounds immediately.

Releases
--------
The FIXED releases are available at the normal locations.

Workarounds
-----------
This attack can be mitigated by a proxy that only allows known mime types in
the Accept header.

Placing the following code in an initializer will also mitigate the issue:

```ruby
require 'action_dispatch/http/mime_type'

Mime.const_set :LOOKUP, Hash.new { |h,k|
  Mime::Type.new(k) unless k.blank?
}
```

Patches
-------
To aid users who aren't able to upgrade immediately we have provided patche=
s for
the two supported release series. They are in git-am format and consist of a
single changeset.

* 5-0-mime_types_leak.patch - Patch for 5.0 series
* 4-2-mime_types_leak.patch - Patch for 4.2 series
* 4-1-mime_types_leak.patch - Patch for 4.1 series
* 3-2-mime_types_leak.patch - Patch for 3.2 series

Please note that only the 4.1.x and 4.2.x series are supported at present. =
Users
of earlier unsupported releases are advised to upgrade as soon as possible =
as we
cannot guarantee the continued availability of security fixes for unsupport=
ed
releases.

Credits
-------
Aaron Patterson <3<3


--=20
Aaron Patterson
http://tenderlovemaking.com/

--uXxzq0nDebZQVNAZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="3-2-mime_types_leak.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 14036cfc72b14be8e9050cf8b1724d0d8acc3b25 Mon Sep 17 00:00:00 2001
From: Aaron Patterson <aaron.patterson@gmail.com>
Date: Mon, 11 Jan 2016 14:36:49 -0800
Subject: [PATCH] stop caching mime types globally

Unknown mime types should not be cached globally.  This global cache
leads to a memory leak and a denial of service vulnerability.

CVE-2016-0751
---
 actionpack/lib/action_dispatch/http/mime_type.rb | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/actionpack/lib/action_dispatch/http/mime_type.rb b/actionpack/=
lib/action_dispatch/http/mime_type.rb
index 2152351..be0088b 100644
--- a/actionpack/lib/action_dispatch/http/mime_type.rb
+++ b/actionpack/lib/action_dispatch/http/mime_type.rb
@@ -22,7 +22,7 @@ module Mime
=20
   SET              =3D Mimes.new
   EXTENSION_LOOKUP =3D {}
-  LOOKUP           =3D Hash.new { |h, k| h[k] =3D Type.new(k) unless k.bla=
nk? }
+  LOOKUP           =3D {}
=20
   def self.[](type)
     return type if type.is_a?(Type)
@@ -85,7 +85,7 @@ module Mime
       Q_SEPARATOR_REGEXP =3D /;\s*q=3D/
=20
       def lookup(string)
-        LOOKUP[string]
+        LOOKUP[string] || Type.new(string)
       end
=20
       def lookup_by_extension(extension)
@@ -204,9 +204,12 @@ module Mime
       end
     end
=20
+    attr_reader :hash
+
     def initialize(string, symbol =3D nil, synonyms =3D [])
       @symbol, @synonyms =3D symbol, synonyms
       @string =3D string
+      @hash =3D [@string, @synonyms, @symbol].hash
     end
=20
     def to_s
@@ -240,6 +243,13 @@ module Mime
       end
     end
=20
+    def eql?(other)
+      super || (self.class =3D=3D other.class &&
+                @string    =3D=3D other.string &&
+                @synonyms  =3D=3D other.synonyms &&
+                @symbol    =3D=3D other.symbol)
+    end
+
     def =3D~(mime_type)
       return false if mime_type.blank?
       regexp =3D Regexp.new(Regexp.quote(mime_type.to_s))
@@ -262,6 +272,10 @@ module Mime
       super || method.to_s =3D~ /(\w+)\?$/
     end
=20
+    protected
+
+    attr_reader :string, :synonyms
+
     private
       def method_missing(method, *args)
         if method.to_s =3D~ /(\w+)\?$/
--=20
2.2.1


--uXxzq0nDebZQVNAZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="4-1-mime_types_leak.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 5756321cd9e3ca12cb2b8402704c6680b4d7ca2a Mon Sep 17 00:00:00 2001
From: Aaron Patterson <aaron.patterson@gmail.com>
Date: Mon, 11 Jan 2016 14:36:49 -0800
Subject: [PATCH] stop caching mime types globally

Unknown mime types should not be cached globally.  This global cache
leads to a memory leak and a denial of service vulnerability.

CVE-2016-0751
---
 actionpack/lib/action_dispatch/http/mime_type.rb | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/actionpack/lib/action_dispatch/http/mime_type.rb b/actionpack/=
lib/action_dispatch/http/mime_type.rb
index 9450be8..fc986f9 100644
--- a/actionpack/lib/action_dispatch/http/mime_type.rb
+++ b/actionpack/lib/action_dispatch/http/mime_type.rb
@@ -23,7 +23,7 @@ module Mime
=20
   SET              =3D Mimes.new
   EXTENSION_LOOKUP =3D {}
-  LOOKUP           =3D Hash.new { |h, k| h[k] =3D Type.new(k) unless k.bla=
nk? }
+  LOOKUP           =3D {}
=20
   class << self
     def [](type)
@@ -146,7 +146,7 @@ module Mime
       end
=20
       def lookup(string)
-        LOOKUP[string]
+        LOOKUP[string] || Type.new(string)
       end
=20
       def lookup_by_extension(extension)
@@ -225,9 +225,12 @@ module Mime
       end
     end
=20
+    attr_reader :hash
+
     def initialize(string, symbol =3D nil, synonyms =3D [])
       @symbol, @synonyms =3D symbol, synonyms
       @string =3D string
+      @hash =3D [@string, @synonyms, @symbol].hash
     end
=20
     def to_s
@@ -261,6 +264,13 @@ module Mime
       end
     end
=20
+    def eql?(other)
+      super || (self.class =3D=3D other.class &&
+                @string    =3D=3D other.string &&
+                @synonyms  =3D=3D other.synonyms &&
+                @symbol    =3D=3D other.symbol)
+    end
+
     def =3D~(mime_type)
       return false if mime_type.blank?
       regexp =3D Regexp.new(Regexp.quote(mime_type.to_s))
@@ -274,6 +284,10 @@ module Mime
     end
=20
=20
+    protected
+
+    attr_reader :string, :synonyms
+
     private
=20
     def to_ary; end
--=20
2.2.1


--uXxzq0nDebZQVNAZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="4-2-mime_types_leak.patch"
Content-Transfer-Encoding: quoted-printable

=46rom a27bf59659c30333fe37f0305038fa1e40dc3339 Mon Sep 17 00:00:00 2001
From: Aaron Patterson <aaron.patterson@gmail.com>
Date: Mon, 11 Jan 2016 14:36:49 -0800
Subject: [PATCH] stop caching mime types globally

Unknown mime types should not be cached globally.  This global cache
leads to a memory leak and a denial of service vulnerability.

CVE-2016-0751
---
 actionpack/lib/action_dispatch/http/mime_type.rb | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/actionpack/lib/action_dispatch/http/mime_type.rb b/actionpack/=
lib/action_dispatch/http/mime_type.rb
index b9d5009..3257e21 100644
--- a/actionpack/lib/action_dispatch/http/mime_type.rb
+++ b/actionpack/lib/action_dispatch/http/mime_type.rb
@@ -23,7 +23,7 @@ module Mime
=20
   SET              =3D Mimes.new
   EXTENSION_LOOKUP =3D {}
-  LOOKUP           =3D Hash.new { |h, k| h[k] =3D Type.new(k) unless k.bla=
nk? }
+  LOOKUP           =3D {}
=20
   class << self
     def [](type)
@@ -146,7 +146,7 @@ module Mime
       end
=20
       def lookup(string)
-        LOOKUP[string]
+        LOOKUP[string] || Type.new(string)
       end
=20
       def lookup_by_extension(extension)
@@ -225,9 +225,12 @@ module Mime
       end
     end
=20
+    attr_reader :hash
+
     def initialize(string, symbol =3D nil, synonyms =3D [])
       @symbol, @synonyms =3D symbol, synonyms
       @string =3D string
+      @hash =3D [@string, @synonyms, @symbol].hash
     end
=20
     def to_s
@@ -261,6 +264,13 @@ module Mime
       end
     end
=20
+    def eql?(other)
+      super || (self.class =3D=3D other.class &&
+                @string    =3D=3D other.string &&
+                @synonyms  =3D=3D other.synonyms &&
+                @symbol    =3D=3D other.symbol)
+    end
+
     def =3D~(mime_type)
       return false if mime_type.blank?
       regexp =3D Regexp.new(Regexp.quote(mime_type.to_s))
@@ -274,6 +284,10 @@ module Mime
     end
=20
=20
+    protected
+
+    attr_reader :string, :synonyms
+
     private
=20
     def to_ary; end
--=20
2.2.1


--uXxzq0nDebZQVNAZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="5-0-mime_types_leak.patch"
Content-Transfer-Encoding: quoted-printable

=46rom d9037a78e8e85824cbfece9d7f9052673d0fb902 Mon Sep 17 00:00:00 2001
From: Aaron Patterson <aaron.patterson@gmail.com>
Date: Mon, 11 Jan 2016 14:36:49 -0800
Subject: [PATCH] stop caching mime types globally

Unknown mime types should not be cached globally.  This global cache
leads to a memory leak and a denial of service vulnerability.

CVE-2016-0751
---
 actionpack/lib/action_dispatch/http/mime_type.rb | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/actionpack/lib/action_dispatch/http/mime_type.rb b/actionpack/=
lib/action_dispatch/http/mime_type.rb
index b8d3958..6abbf9c 100644
--- a/actionpack/lib/action_dispatch/http/mime_type.rb
+++ b/actionpack/lib/action_dispatch/http/mime_type.rb
@@ -31,7 +31,7 @@ module Mime
=20
   SET              =3D Mimes.new
   EXTENSION_LOOKUP =3D {}
-  LOOKUP           =3D Hash.new { |h, k| h[k] =3D Type.new(k) unless k.bla=
nk? }
+  LOOKUP           =3D {}
=20
   class << self
     def [](type)
@@ -177,7 +177,7 @@ module Mime
       end
=20
       def lookup(string)
-        LOOKUP[string]
+        LOOKUP[string] || Type.new(string)
       end
=20
       def lookup_by_extension(extension)
@@ -255,9 +255,12 @@ module Mime
       end
     end
=20
+    attr_reader :hash
+
     def initialize(string, symbol =3D nil, synonyms =3D [])
       @symbol, @synonyms =3D symbol, synonyms
       @string =3D string
+      @hash =3D [@string, @synonyms, @symbol].hash
     end
=20
     def to_s
@@ -291,6 +294,13 @@ module Mime
       end
     end
=20
+    def eql?(other)
+      super || (self.class =3D=3D other.class &&
+                @string    =3D=3D other.string &&
+                @synonyms  =3D=3D other.synonyms &&
+                @symbol    =3D=3D other.symbol)
+    end
+
     def =3D~(mime_type)
       return false unless mime_type
       regexp =3D Regexp.new(Regexp.quote(mime_type.to_s))
@@ -303,6 +313,10 @@ module Mime
=20
     def all?; false; end
=20
+    protected
+
+    attr_reader :string, :synonyms
+
     private
=20
     def to_ary; end
--=20
2.2.1


--uXxzq0nDebZQVNAZ--

--OaZoDhBhXzo6bW1J
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iQEcBAEBAgAGBQJWpngyAAoJEJUxcLy0/6/GxAEIAKAZ/BSbebG/tP+7pdpdbooX
gxyrebZ7if/H9zfywcJv/YQ0y5+tyrK8NtgaX8yn2dFtBdm8arYVbhvm36w3G/TX
53jPTWa7/kyvZub+adK3uqQULsna56x9fEMGTBhT1yMp3vzbrAULr6EfdIu+CcXQ
dDVX8wjN68ny+b3hDl+SaZtVbjTxqRklueokgh+XPOZPaEvxNywmy1RyAueMe+gm
WsbluhpcJA7GV46L0QI+orOtwWT96jYHquBeJTSSvl6bGlJwktJkEL2suR6d9SCC
2MqAYXwxO1nbvSilfZ40jr15pdCC3BqB8Zx0W8x309ZrEuLfd5i3nSuuknDTzs8=
=Lze6
-----END PGP SIGNATURE-----

--OaZoDhBhXzo6bW1J--
