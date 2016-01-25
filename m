X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["16186" "Monday" "25" "January" "2016" "11:30:43" "-0800" "Aaron Patterson" "tenderlove@ruby-lang.org" "<20160125193043.GA14069@TC.local>" "488" "[oss-security] [CVE-2015-7576] Timing attack vulnerability in basic authentication in Action Controller." nil nil nil "1" "2016012519:30:43" "[oss-security] [CVE-2015-7576] Timing attack vulnerability in basic authentication in Action Controller." (number mark "U       tenderlove@r Jan 25  488/16186 " thread-indent "\"[oss-security] [CVE-2015-7576] Timing attack vulnerability in basic authentication in Action Controller.\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22439 invoked by uid 550); 25 Jan 2016 19:30:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22418 invoked from network); 25 Jan 2016 19:30:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenderlovemaking-com.20150623.gappssmtp.com; s=20150623;
        h=sender:date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=N3CiFbIjP87JAHTC1ImGMC/j5myutjsqb/Thpj9hZqA=;
        b=AmwZb9vU52qrFCcgKRyP62r0jOO5wK7BJ9bAsYym+QJYWtCJ0f0IDuHg26+QOV+YN5
         YC5SHJacALRC8xcuNSARTelOY3i4qndRI6dcX2c1GwOq9d6D/p1x+lH7xor6NsMhrFoM
         idwuPE6EfYyAuIWO0F5dFZOzJ9dc7Isoyt7WTGadKJoTMPvXU9S5D2XWlYwNsZLFddel
         2+ZR7zM4pg2dC/uAIYan7BseHNh9afD3pZaHDsdn4Zfa3/pufnJ+NQZ6qUXX8b7xwww/
         qIKxt8Z9N1k6HsKOJilHVuZTTw7T2BE/UdT0eMFJLMjCdPwnpJvwUZ1fhx0icWEgsj4G
         JuzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-type:content-disposition:user-agent;
        bh=N3CiFbIjP87JAHTC1ImGMC/j5myutjsqb/Thpj9hZqA=;
        b=dyVGrFOK7uKg69exm95I0hNl3c8MasQVL5fv0LHW+9QJtjj6dh0fk8OkXwn6N4aPBr
         aclmO3p6t10DjeCEjkaz3iOMbqTPw+eta1duEiB6VGi6nY2ftpr8yrk0ZQKIyASAuVq/
         HqxuNEkDbNQayXqbqG4U+mJb8vpatWhFUVbKY5iRWyV+IOv5/ckx9YNzZknRpyjw5Hua
         QfdNgBIdoG2Kf/sZfXtj07Rkp9QRPBXwxNdth4Zu0xs+12I+ka6/QDzFes/38KULW2lf
         vpk3NEEijIwVAQmdYFoD/frfq2NkpIS1hhmcsUx8Rxk+69j2OR1Js6A2yt9juUGCkhLF
         0pMw==
X-Gm-Message-State: AG10YOS0K3IYd7VV4cu7UOS54jZqTTgDCjiq1T0SWcs6PiTfOwBJTpBbIkZ0xIF2RLqy9A==
X-Received: by 10.98.17.79 with SMTP id z76mr28565924pfi.16.1453750246543;
        Mon, 25 Jan 2016 11:30:46 -0800 (PST)
Sender: Aaron Patterson <aaron@tenderlovemaking.com>
Date: Mon, 25 Jan 2016 11:30:43 -0800
From: Aaron Patterson <tenderlove@ruby-lang.org>
To: security@suse.de, rubyonrails-security@googlegroups.com,
	oss-security@lists.openwall.com, ruby-security-ann@googlegroups.com
Message-ID: <20160125193043.GA14069@TC.local>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="24zk1gE8NUlDmwG9"
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [oss-security] [CVE-2015-7576] Timing attack vulnerability in basic authentication
 in Action Controller.

--24zk1gE8NUlDmwG9
Content-Type: multipart/mixed; boundary="h31gzZEtNLTqOjlF"
Content-Disposition: inline


--h31gzZEtNLTqOjlF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Timing attack vulnerability in basic authentication in Action Controller.

There is a timing attack vulnerability in the basic authentication support
in Action Controller. This vulnerability has been assigned the CVE
identifier CVE-2015-7576.

Versions Affected:  All.
Not affected:       None.
Fixed Versions:     5.0.0.beta1.1, 4.2.5.1, 4.1.14.1, 3.2.22.1

Impact
------
Due to the way that Action Controller compares user names and passwords in
basic authentication authorization code, it is possible for an attacker to
analyze the time taken by a response and intuit the password.

For example, this string comparison:

  "foo" =3D=3D "bar"

is possibly faster than this comparison:

  "foo" =3D=3D "fo1"

Attackers can use this information to attempt to guess the username and
password used in the basic authentication system.

You can tell you application is vulnerable to this attack by looking for
`http_basic_authenticate_with` method calls in your application.

All users running an affected release should either upgrade or use one of
the workarounds immediately.

Releases
--------
The FIXED releases are available at the normal locations.

Workarounds
-----------
If you can't upgrade, please use the following monkey patch in an initializ=
er
that is loaded before your application:

```
$ cat config/initializers/basic_auth_fix.rb
module ActiveSupport
  module SecurityUtils
    def secure_compare(a, b)
      return false unless a.bytesize =3D=3D b.bytesize

      l =3D a.unpack "C#{a.bytesize}"

      res =3D 0
      b.each_byte { |byte| res |=3D byte ^ l.shift }
      res =3D=3D 0
    end
    module_function :secure_compare

    def variable_size_secure_compare(a, b)
      secure_compare(::Digest::SHA256.hexdigest(a), ::Digest::SHA256.hexdig=
est(b))
    end
    module_function :variable_size_secure_compare
  end
end

module ActionController
  class Base
    def self.http_basic_authenticate_with(options =3D {})
      before_action(options.except(:name, :password, :realm)) do
        authenticate_or_request_with_http_basic(options[:realm] || "Applica=
tion") do |name, password|
          # This comparison uses & so that it doesn't short circuit and
          # uses `variable_size_secure_compare` so that length information
          # isn't leaked.
          ActiveSupport::SecurityUtils.variable_size_secure_compare(name, o=
ptions[:name]) &
            ActiveSupport::SecurityUtils.variable_size_secure_compare(passw=
ord, options[:password])
        end
      end
    end
  end
end
```


Patches
-------
To aid users who aren't able to upgrade immediately we have provided patche=
s for
the two supported release series. They are in git-am format and consist of a
single changeset.

* 4-1-basic_auth.patch - Patch for 4.1 series
* 4-2-basic_auth.patch - Patch for 4.2 series
* 5-0-basic_auth.patch - Patch for 5.0 series

Please note that only the 4.1.x and 4.2.x series are supported at present. =
Users
of earlier unsupported releases are advised to upgrade as soon as possible =
as we
cannot guarantee the continued availability of security fixes for unsupport=
ed
releases.

Credits
-------

Thank you to Daniel Waterworth for reporting the problem and working with u=
s to
fix it.

--=20
Aaron Patterson
http://tenderlovemaking.com/

--h31gzZEtNLTqOjlF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="3-2-basic_auth.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 9ffe46fb65dcde8670484403c827182621ac2901 Mon Sep 17 00:00:00 2001
From: Aaron Patterson <aaron.patterson@gmail.com>
Date: Thu, 29 Oct 2015 10:42:44 -0700
Subject: [PATCH] use secure string comparisons for basic auth username /
 password

this will avoid timing attacks against applications that use basic auth.

Conflicts:
	activesupport/lib/active_support/security_utils.rb

Conflicts:
	actionpack/lib/action_controller/metal/http_authentication.rb

CVE-2015-7576
---
 .../action_controller/metal/http_authentication.rb |  7 +++++-
 activesupport/lib/active_support/security_utils.rb | 27 ++++++++++++++++++=
++++
 2 files changed, 33 insertions(+), 1 deletion(-)
 create mode 100644 activesupport/lib/active_support/security_utils.rb

diff --git a/actionpack/lib/action_controller/metal/http_authentication.rb =
b/actionpack/lib/action_controller/metal/http_authentication.rb
index fe4ab65..2ae5160 100644
--- a/actionpack/lib/action_controller/metal/http_authentication.rb
+++ b/actionpack/lib/action_controller/metal/http_authentication.rb
@@ -1,5 +1,6 @@
 require 'active_support/base64'
 require 'active_support/core_ext/object/blank'
+require 'active_support/security_utils'
=20
 module ActionController
   module HttpAuthentication
@@ -111,7 +112,11 @@ module ActionController
           def http_basic_authenticate_with(options =3D {})
             before_filter(options.except(:name, :password, :realm)) do
               authenticate_or_request_with_http_basic(options[:realm] || "=
Application") do |name, password|
-                name =3D=3D options[:name] && password =3D=3D options[:pas=
sword]
+                # This comparison uses & so that it doesn't short circuit =
and
+                # uses `variable_size_secure_compare` so that length infor=
mation
+                # isn't leaked.
+                ActiveSupport::SecurityUtils.variable_size_secure_compare(=
name, options[:name]) &
+                  ActiveSupport::SecurityUtils.variable_size_secure_compar=
e(password, options[:password])
               end
             end
           end
diff --git a/activesupport/lib/active_support/security_utils.rb b/activesup=
port/lib/active_support/security_utils.rb
new file mode 100644
index 0000000..9be8613
--- /dev/null
+++ b/activesupport/lib/active_support/security_utils.rb
@@ -0,0 +1,27 @@
+require 'digest'
+
+module ActiveSupport
+  module SecurityUtils
+    # Constant time string comparison.
+    #
+    # The values compared should be of fixed length, such as strings
+    # that have already been processed by HMAC. This should not be used
+    # on variable length plaintext strings because it could leak length in=
fo
+    # via timing attacks.
+    def secure_compare(a, b)
+      return false unless a.bytesize =3D=3D b.bytesize
+
+      l =3D a.unpack "C#{a.bytesize}"
+
+      res =3D 0
+      b.each_byte { |byte| res |=3D byte ^ l.shift }
+      res =3D=3D 0
+    end
+    module_function :secure_compare
+
+    def variable_size_secure_compare(a, b) # :nodoc:
+      secure_compare(::Digest::SHA256.hexdigest(a), ::Digest::SHA256.hexdi=
gest(b))
+    end
+    module_function :variable_size_secure_compare
+  end
+end
--=20
2.2.1


--h31gzZEtNLTqOjlF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="4-1-basic_auth.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 0de876c53fe9355f1e9a73e923519f2a2241f527 Mon Sep 17 00:00:00 2001
From: Aaron Patterson <aaron.patterson@gmail.com>
Date: Thu, 29 Oct 2015 10:42:44 -0700
Subject: [PATCH] use secure string comparisons for basic auth username /
 password

this will avoid timing attacks against applications that use basic auth.

Conflicts:
	activesupport/lib/active_support/security_utils.rb

CVE-2015-7576
---
 .../action_controller/metal/http_authentication.rb |  7 +++++-
 activesupport/lib/active_support/security_utils.rb | 27 ++++++++++++++++++=
++++
 2 files changed, 33 insertions(+), 1 deletion(-)
 create mode 100644 activesupport/lib/active_support/security_utils.rb

diff --git a/actionpack/lib/action_controller/metal/http_authentication.rb =
b/actionpack/lib/action_controller/metal/http_authentication.rb
index 167df2f..db93e20 100644
--- a/actionpack/lib/action_controller/metal/http_authentication.rb
+++ b/actionpack/lib/action_controller/metal/http_authentication.rb
@@ -1,4 +1,5 @@
 require 'base64'
+require 'active_support/security_utils'
=20
 module ActionController
   # Makes it dead easy to do HTTP Basic, Digest and Token authentication.
@@ -70,7 +71,11 @@ module ActionController
           def http_basic_authenticate_with(options =3D {})
             before_action(options.except(:name, :password, :realm)) do
               authenticate_or_request_with_http_basic(options[:realm] || "=
Application") do |name, password|
-                name =3D=3D options[:name] && password =3D=3D options[:pas=
sword]
+                # This comparison uses & so that it doesn't short circuit =
and
+                # uses `variable_size_secure_compare` so that length infor=
mation
+                # isn't leaked.
+                ActiveSupport::SecurityUtils.variable_size_secure_compare(=
name, options[:name]) &
+                  ActiveSupport::SecurityUtils.variable_size_secure_compar=
e(password, options[:password])
               end
             end
           end
diff --git a/activesupport/lib/active_support/security_utils.rb b/activesup=
port/lib/active_support/security_utils.rb
new file mode 100644
index 0000000..bb22125
--- /dev/null
+++ b/activesupport/lib/active_support/security_utils.rb
@@ -0,0 +1,27 @@
+require 'digest'
+
+module ActiveSupport
+  module SecurityUtils
+    # Constant time string comparison.
+    #
+    # The values compared should be of fixed length, such as strings
+    # that have already been processed by HMAC. This should not be used
+    # on variable length plaintext strings because it could leak length in=
fo
+    # via timing attacks.
+    def secure_compare(a, b)
+      return false unless a.bytesize =3D=3D b.bytesize
+
+      l =3D a.unpack "C#{a.bytesize}"
+
+      res =3D 0
+      b.each_byte { |byte| res |=3D byte ^ l.shift }
+      res =3D=3D 0
+    end
+    module_function :secure_compare
+
+    def variable_size_secure_compare(a, b) # :nodoc:
+      secure_compare(::Digest::SHA256.hexdigest(a), ::Digest::SHA256.hexdi=
gest(b))
+    end
+    module_function :variable_size_secure_compare
+  end
+end
--=20
2.2.1


--h31gzZEtNLTqOjlF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="4-2-basic_auth.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 53b153b90fc2400a8568cf4aa5017c612bf62401 Mon Sep 17 00:00:00 2001
From: Aaron Patterson <aaron.patterson@gmail.com>
Date: Thu, 29 Oct 2015 10:42:44 -0700
Subject: [PATCH] use secure string comparisons for basic auth username /
 password

this will avoid timing attacks against applications that use basic auth.

CVE-2015-7576
---
 actionpack/lib/action_controller/metal/http_authentication.rb | 7 ++++++-
 activesupport/lib/active_support/security_utils.rb            | 7 +++++++
 2 files changed, 13 insertions(+), 1 deletion(-)

diff --git a/actionpack/lib/action_controller/metal/http_authentication.rb =
b/actionpack/lib/action_controller/metal/http_authentication.rb
index a219d35..2777d0f 100644
--- a/actionpack/lib/action_controller/metal/http_authentication.rb
+++ b/actionpack/lib/action_controller/metal/http_authentication.rb
@@ -1,4 +1,5 @@
 require 'base64'
+require 'active_support/security_utils'
=20
 module ActionController
   # Makes it dead easy to do HTTP Basic, Digest and Token authentication.
@@ -68,7 +69,11 @@ module ActionController
           def http_basic_authenticate_with(options =3D {})
             before_action(options.except(:name, :password, :realm)) do
               authenticate_or_request_with_http_basic(options[:realm] || "=
Application") do |name, password|
-                name =3D=3D options[:name] && password =3D=3D options[:pas=
sword]
+                # This comparison uses & so that it doesn't short circuit =
and
+                # uses `variable_size_secure_compare` so that length infor=
mation
+                # isn't leaked.
+                ActiveSupport::SecurityUtils.variable_size_secure_compare(=
name, options[:name]) &
+                  ActiveSupport::SecurityUtils.variable_size_secure_compar=
e(password, options[:password])
               end
             end
           end
diff --git a/activesupport/lib/active_support/security_utils.rb b/activesup=
port/lib/active_support/security_utils.rb
index 64c4801..bb22125 100644
--- a/activesupport/lib/active_support/security_utils.rb
+++ b/activesupport/lib/active_support/security_utils.rb
@@ -1,3 +1,5 @@
+require 'digest'
+
 module ActiveSupport
   module SecurityUtils
     # Constant time string comparison.
@@ -16,5 +18,10 @@ module ActiveSupport
       res =3D=3D 0
     end
     module_function :secure_compare
+
+    def variable_size_secure_compare(a, b) # :nodoc:
+      secure_compare(::Digest::SHA256.hexdigest(a), ::Digest::SHA256.hexdi=
gest(b))
+    end
+    module_function :variable_size_secure_compare
   end
 end
--=20
2.2.1


--h31gzZEtNLTqOjlF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="5-0-basic_auth.patch"
Content-Transfer-Encoding: quoted-printable

=46rom b0b42de5f04100e9672170898cb94584309fdc39 Mon Sep 17 00:00:00 2001
From: Aaron Patterson <aaron.patterson@gmail.com>
Date: Thu, 29 Oct 2015 10:42:44 -0700
Subject: [PATCH] use secure string comparisons for basic auth username /
 password

this will avoid timing attacks against applications that use basic auth.

CVE-2015-7576
---
 actionpack/lib/action_controller/metal/http_authentication.rb | 7 ++++++-
 activesupport/lib/active_support/security_utils.rb            | 7 +++++++
 2 files changed, 13 insertions(+), 1 deletion(-)

diff --git a/actionpack/lib/action_controller/metal/http_authentication.rb =
b/actionpack/lib/action_controller/metal/http_authentication.rb
index 2ac6e37..35be6d9 100644
--- a/actionpack/lib/action_controller/metal/http_authentication.rb
+++ b/actionpack/lib/action_controller/metal/http_authentication.rb
@@ -1,4 +1,5 @@
 require 'base64'
+require 'active_support/security_utils'
=20
 module ActionController
   # Makes it dead easy to do HTTP Basic, Digest and Token authentication.
@@ -68,7 +69,11 @@ module ActionController
           def http_basic_authenticate_with(options =3D {})
             before_action(options.except(:name, :password, :realm)) do
               authenticate_or_request_with_http_basic(options[:realm] || "=
Application") do |name, password|
-                name =3D=3D options[:name] && password =3D=3D options[:pas=
sword]
+                # This comparison uses & so that it doesn't short circuit =
and
+                # uses `variable_size_secure_compare` so that length infor=
mation
+                # isn't leaked.
+                ActiveSupport::SecurityUtils.variable_size_secure_compare(=
name, options[:name]) &
+                  ActiveSupport::SecurityUtils.variable_size_secure_compar=
e(password, options[:password])
               end
             end
           end
diff --git a/activesupport/lib/active_support/security_utils.rb b/activesup=
port/lib/active_support/security_utils.rb
index 64c4801..9be8613 100644
--- a/activesupport/lib/active_support/security_utils.rb
+++ b/activesupport/lib/active_support/security_utils.rb
@@ -1,3 +1,5 @@
+require 'digest'
+
 module ActiveSupport
   module SecurityUtils
     # Constant time string comparison.
@@ -16,5 +18,10 @@ module ActiveSupport
       res =3D=3D 0
     end
     module_function :secure_compare
+
+    def variable_size_secure_compare(a, b) # :nodoc:
+      secure_compare(::Digest::SHA256.hexdigest(a), ::Digest::SHA256.hexdi=
gest(b))
+    end
+    module_function :variable_size_secure_compare
   end
 end
--=20
2.2.1


--h31gzZEtNLTqOjlF--

--24zk1gE8NUlDmwG9
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iQEcBAEBAgAGBQJWpnfjAAoJEJUxcLy0/6/GnUgH+gOKMfxoZZrToz4+kRCa5BIl
LQvrBgXztcwrCsPkFNRn0IgtJZTXOmVom5z+Bhkmcg8oq5okdutv+jFPKKDQRbkE
GF/5ptaq+P/SsQ+e1js7+EYQCVkmdjCw1qwyG5Rqn0XT0Bf4/JjN1emHDPVznAR/
qE5OhUSpk1OXx1dh2NxGgYj67830qhPOsGYlLuYfzpjK75L/9+40Ad/tVzaVA8H9
ZQlMj5U3KgP8P9bZOIYJt+NIsBtnHX5dYa7c9amT18GsQCgdZsNwVjLLJ1P/W0eQ
rVINzpKFpXPue6TbT5l2iiiqiZlfMX7ibmyqOBlQId8BhiX4LnXobMbQq2C57/w=
=UQlY
-----END PGP SIGNATURE-----

--24zk1gE8NUlDmwG9--
