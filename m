X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["14090" "Wednesday" "13" "March" "2019" "10:14:54" "-0700" "Aaron Patterson" "tenderlove@ruby-lang.org" "<20190313171454.GA90773@TC-275.local>" "391" "[oss-security] [CVE-2019-5420] Possible Remote Code Execution Exploit in Rails Development Mode" nil nil nil "3" "2019031317:14:54" "[oss-security] [CVE-2019-5420] Possible Remote Code Execution Exploit in Rails Development Mode" (number mark "U       tenderlove@r Mar 13  391/14090 " thread-indent "\"[oss-security] [CVE-2019-5420] Possible Remote Code Execution Exploit in Rails Development Mode\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-5420] Possible Remote Code Execution Exploit in Rails Development Mode" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32069 invoked by uid 550); 13 Mar 2019 17:15:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32051 invoked from network); 13 Mar 2019 17:15:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenderlovemaking-com.20150623.gappssmtp.com; s=20150623;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=i02QD0SjzkVkQRI12jShCyL5okf69H/Nxitx+LkR3zs=;
        b=ctGZHJaX6IPUP2WksRigjCsNWIDfq+BeKf2FojqrgBtjtQxBfmdqJwaEW0d3J+31V7
         swFHwqKmIJpgfKodu1Pbi+MqZJhWVCaPnePWxyiDWhuOMrc9QUaQuUN1iFB68axDdEtx
         d+MOXwgBLLiwI53Q9ZOJMC5if3A2u0CZmHmMh/SPHBZte5QXsmsLlz4LCR7sqT7hqPnS
         r3uFoDEiDAjZqwZu/WmTwtlo05jKAvb76cHX5mj8rm1MwvOmQp7OWki69ckvDvVzSoRn
         VPb7Uu57N49Cv/sYK06zCiK8qzkROjfqyE6ejnfSZSNlOzu6RCmtwEPooRlrvZmhKRF9
         68jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=i02QD0SjzkVkQRI12jShCyL5okf69H/Nxitx+LkR3zs=;
        b=neVo43goMDPcVI42BVBJqvBRh23dhZA1Bnz+CwdImJD99pNfuiCh4AvPT9gFyPUhNO
         M/8/5Bve36KBwh0icaJZiaHC0Ds1JsWhAF+o84J315zBLj8j6E2EdYhdz9G3epeDaJY4
         d72AOnx7p64RDL/qu9m9uqBLQ5VLAs6999/Rmj7fRmyKy4+sUArvHb+JbHwC/tmdxAh1
         YvMfk0Hpkqc091LSlg8M/ZqUeQ4k85l80MaRgFHS1WLStCLvooofPcy424uQPBP+2Cy3
         lXmvKs+Yo4uvZmcmZbCkC4j/Y9zgB+7MxM1f1N80GoBnLQdkJ6tCueHZ4UcbI15/kIXb
         TBag==
X-Gm-Message-State: APjAAAWD0XtajG2crQKzmarjdBgPM0qfWixNitCWjdOyDFQ9WBvYoSfL
	B6qbPkfUFlMK7nIZ8E6DKtOraw==
X-Google-Smtp-Source: APXvYqy7hofNrWfSQJ49wE/lOSDs1AUpap/EXmBK2RSjT0s3SEx68Zp5kbSbp48L+E8Jryw9v/aE5A==
X-Received: by 2002:a17:902:9893:: with SMTP id s19mr47114777plp.165.1552497298420;
        Wed, 13 Mar 2019 10:14:58 -0700 (PDT)
Sender: Aaron Patterson <aaron@tenderlovemaking.com>
Date: Wed, 13 Mar 2019 10:14:54 -0700
From: Aaron Patterson <tenderlove@ruby-lang.org>
To: security@suse.de, rubyonrails-security@googlegroups.com,
	oss-security@lists.openwall.com, ruby-security-ann@googlegroups.com
Message-ID: <20190313171454.GA90773@TC-275.local>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="IrhDeMKUP4DT/M7F"
Content-Disposition: inline
User-Agent: Mutt/1.9.5 (2018-04-13)
Subject: [oss-security] [CVE-2019-5420] Possible Remote Code Execution Exploit in Rails
 Development Mode

--IrhDeMKUP4DT/M7F
Content-Type: multipart/mixed; boundary="SLDf9lqlvOQaIe6s"
Content-Disposition: inline


--SLDf9lqlvOQaIe6s
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

There is a possible a possible remote code executing exploit in Rails when =
in
development mode. This vulnerability has been assigned the CVE identifier
CVE-2019-5420.

Versions Affected:  6.0.0.X, 5.2.X.
Not affected:       None.
Fixed Versions:     6.0.0.beta3, 5.2.2.1

Impact
------
With some knowledge of a target application it is possible for an attacker =
to
guess the automatically generated development mode secret token.  This secr=
et
token can be used in combination with other Rails internals to escalate to a
remote code execution exploit.

All users running an affected release should either upgrade or use one of t=
he
workarounds immediately.

Releases
--------
The 6.0.0.beta3 and 5.2.2.1 releases are available at the normal locations.

Workarounds
-----------
This issue can be mitigated by specifying a secret key in development mode.
In "config/environments/development.rb" add this:

  config.secret_key_base =3D SecureRandom.hex(64)


Patches
-------
To aid users who aren't able to upgrade immediately we have provided patche=
s for
the two supported release series. They are in git-am format and consist of a
single changeset.

* 6-0-railties-dev-mode-token.patch - Patch for 6.0 series
* 5-2-railties-dev-mode-token.patch - Patch for 5.2 series

Please note that only the 5.2.x, 5.1.x, 5.0.x, and 4.2.x series are support=
ed
at present. Users of earlier unsupported releases are advised to upgrade as
soon as possible as we cannot guarantee the continued availability of secur=
ity
fixes for unsupported releases.

Credits
-------
Thanks to ooooooo_q

--=20
Aaron Patterson
http://tenderlovemaking.com/

--SLDf9lqlvOQaIe6s
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="5-2-railties-dev-mode-token.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 7f5ccda38bfecbe0bf00f15e5b8f5e40d52ab3f1 Mon Sep 17 00:00:00 2001
From: Aaron Patterson <aaron.patterson@gmail.com>
Date: Sun, 10 Mar 2019 16:37:46 -0700
Subject: [PATCH] Fix possible dev mode RCE

If the secret_key_base is nil in dev or test generate a key from random
bytes and store it in a tmp file. This prevents the app developers from
having to share / checkin the secret key for dev / test but also
maintains a key between app restarts in dev/test.

[CVE-2019-5420]

Co-Authored-By: eileencodes <eileencodes@gmail.com>
Co-Authored-By: John Hawthorn <john@hawthorn.email>
---
 .../middleware/session/cookie_store.rb        |  7 +++---
 railties/lib/rails/application.rb             | 19 ++++++++++++++--
 .../test/application/configuration_test.rb    | 22 ++++++++++++++++++-
 railties/test/isolation/abstract_unit.rb      |  1 +
 4 files changed, 43 insertions(+), 6 deletions(-)

diff --git a/actionpack/lib/action_dispatch/middleware/session/cookie_store=
.rb b/actionpack/lib/action_dispatch/middleware/session/cookie_store.rb
index 4ea96196d3..b7475d3682 100644
--- a/actionpack/lib/action_dispatch/middleware/session/cookie_store.rb
+++ b/actionpack/lib/action_dispatch/middleware/session/cookie_store.rb
@@ -29,9 +29,10 @@
     #
     #   Rails.application.config.session_store :cookie_store, key: '_your_=
app_session'
     #
-    # By default, your secret key base is derived from your application na=
me in
-    # the test and development environments. In all other environments, it=
 is stored
-    # encrypted in the <tt>config/credentials.yml.enc</tt> file.
+    # In the development and test environments your application's secret k=
ey base is
+    # generated by Rails and stored in a temporary file in <tt>tmp/develop=
ment_secret.txt</tt>.
+    # In all other environments, it is stored encrypted in the
+    # <tt>config/credentials.yml.enc</tt> file.
     #
     # If your application was not updated to Rails 5.2 defaults, the secre=
t_key_base
     # will be found in the old <tt>config/secrets.yml</tt> file.
diff --git a/railties/lib/rails/application.rb b/railties/lib/rails/applica=
tion.rb
index e346d5cc3a..6a30e8cfa0 100644
--- a/railties/lib/rails/application.rb
+++ b/railties/lib/rails/application.rb
@@ -426,8 +426,8 @@ def secrets=3D(secrets) #:nodoc:
     # then credentials.secret_key_base, and finally secrets.secret_key_bas=
e. For most applications,
     # the correct place to store it is in the encrypted credentials file.
     def secret_key_base
-      if Rails.env.test? || Rails.env.development?
-        secrets.secret_key_base || Digest::MD5.hexdigest(self.class.name)
+      if Rails.env.development? || Rails.env.test?
+        secrets.secret_key_base ||=3D generate_development_secret
       else
         validate_secret_key_base(
           ENV["SECRET_KEY_BASE"] || credentials.secret_key_base || secrets=
.secret_key_base
@@ -588,6 +588,21 @@ def validate_secret_key_base(secret_key_base)
=20
     private
=20
+      def generate_development_secret
+        if secrets.secret_key_base.nil?
+          key_file =3D Rails.root.join("tmp/development_secret.txt")
+
+          if !File.exist?(key_file)
+            random_key =3D SecureRandom.hex(64)
+            File.binwrite(key_file, random_key)
+          end
+
+          secrets.secret_key_base =3D File.binread(key_file)
+        end
+
+        secrets.secret_key_base
+      end
+
       def build_request(env)
         req =3D super
         env["ORIGINAL_FULLPATH"] =3D req.fullpath
diff --git a/railties/test/application/configuration_test.rb b/railties/tes=
t/application/configuration_test.rb
index 293a1a7dbd..68c2199aba 100644
--- a/railties/test/application/configuration_test.rb
+++ b/railties/test/application/configuration_test.rb
@@ -513,6 +513,27 @@ def index
     end
=20
=20
+    test "application will generate secret_key_base in tmp file if blank i=
n development" do
+      app_file "config/initializers/secret_token.rb", <<-RUBY
+        Rails.application.credentials.secret_key_base =3D nil
+      RUBY
+
+      app "development"
+
+      assert_not_nil app.secrets.secret_key_base
+      assert File.exist?(app_path("tmp/development_secret.txt"))
+    end
+
+    test "application will not generate secret_key_base in tmp file if bla=
nk in production" do
+      app_file "config/initializers/secret_token.rb", <<-RUBY
+        Rails.application.credentials.secret_key_base =3D nil
+      RUBY
+
+      assert_raises ArgumentError do
+        app "production"
+      end
+    end
+
     test "raises when secret_key_base is blank" do
       app_file "config/initializers/secret_token.rb", <<-RUBY
         Rails.application.credentials.secret_key_base =3D nil
@@ -550,7 +571,6 @@ def index
=20
     test "application verifier can build different verifiers" do
       make_basic_app do |application|
-        application.credentials.secret_key_base =3D "b3c631c314c0bbca50c1b=
2843150fe33"
         application.config.session_store :disabled
       end
=20
diff --git a/railties/test/isolation/abstract_unit.rb b/railties/test/isola=
tion/abstract_unit.rb
index 6568a356d6..fe850d45ec 100644
--- a/railties/test/isolation/abstract_unit.rb
+++ b/railties/test/isolation/abstract_unit.rb
@@ -155,6 +155,7 @@ def self.name; "RailtiesTestApp"; end
       @app.config.active_support.deprecation =3D :log
       @app.config.active_support.test_order =3D :random
       @app.config.log_level =3D :info
+      @app.secrets.secret_key_base =3D "b3c631c314c0bbca50c1b2843150fe33"
=20
       yield @app if block_given?
       @app.initialize!
--=20
2.21.0


--SLDf9lqlvOQaIe6s
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="6-0-railties-dev-mode-token.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 4c743587ad6a31908503ab317e37d70361d49e66 Mon Sep 17 00:00:00 2001
From: Aaron Patterson <aaron.patterson@gmail.com>
Date: Sun, 10 Mar 2019 16:37:46 -0700
Subject: [PATCH] Fix possible dev mode RCE

If the secret_key_base is nil in dev or test generate a key from random
bytes and store it in a tmp file. This prevents the app developers from
having to share / checkin the secret key for dev / test but also
maintains a key between app restarts in dev/test.

[CVE-2019-5420]

Co-Authored-By: eileencodes <eileencodes@gmail.com>
Co-Authored-By: John Hawthorn <john@hawthorn.email>
---
 .../middleware/session/cookie_store.rb        |  7 +++---
 railties/lib/rails/application.rb             | 19 ++++++++++++++--
 .../test/application/configuration_test.rb    | 22 ++++++++++++++++++-
 railties/test/isolation/abstract_unit.rb      |  1 +
 4 files changed, 43 insertions(+), 6 deletions(-)

diff --git a/actionpack/lib/action_dispatch/middleware/session/cookie_store=
.rb b/actionpack/lib/action_dispatch/middleware/session/cookie_store.rb
index 02ccfbc81a..7c43c781c7 100644
--- a/actionpack/lib/action_dispatch/middleware/session/cookie_store.rb
+++ b/actionpack/lib/action_dispatch/middleware/session/cookie_store.rb
@@ -24,9 +24,10 @@
     #
     #   Rails.application.config.session_store :cookie_store, key: '_your_=
app_session'
     #
-    # By default, your secret key base is derived from your application na=
me in
-    # the test and development environments. In all other environments, it=
 is stored
-    # encrypted in the <tt>config/credentials.yml.enc</tt> file.
+    # In the development and test environments your application's secret k=
ey base is
+    # generated by Rails and stored in a temporary file in <tt>tmp/develop=
ment_secret.txt</tt>.
+    # In all other environments, it is stored encrypted in the
+    # <tt>config/credentials.yml.enc</tt> file.
     #
     # If your application was not updated to Rails 5.2 defaults, the secre=
t_key_base
     # will be found in the old <tt>config/secrets.yml</tt> file.
diff --git a/railties/lib/rails/application.rb b/railties/lib/rails/applica=
tion.rb
index fbad3e5db3..558a4d1f57 100644
--- a/railties/lib/rails/application.rb
+++ b/railties/lib/rails/application.rb
@@ -415,8 +415,8 @@ def secrets
     # then credentials.secret_key_base, and finally secrets.secret_key_bas=
e. For most applications,
     # the correct place to store it is in the encrypted credentials file.
     def secret_key_base
-      if Rails.env.test? || Rails.env.development?
-        secrets.secret_key_base || Digest::MD5.hexdigest(self.class.name)
+      if Rails.env.development? || Rails.env.test?
+        secrets.secret_key_base ||=3D generate_development_secret
       else
         validate_secret_key_base(
           ENV["SECRET_KEY_BASE"] || credentials.secret_key_base || secrets=
.secret_key_base
@@ -581,6 +581,21 @@ def validate_secret_key_base(secret_key_base)
=20
     private
=20
+      def generate_development_secret
+        if secrets.secret_key_base.nil?
+          key_file =3D Rails.root.join("tmp/development_secret.txt")
+
+          if !File.exist?(key_file)
+            random_key =3D SecureRandom.hex(64)
+            File.binwrite(key_file, random_key)
+          end
+
+          secrets.secret_key_base =3D File.binread(key_file)
+        end
+
+        secrets.secret_key_base
+      end
+
       def build_request(env)
         req =3D super
         env["ORIGINAL_FULLPATH"] =3D req.fullpath
diff --git a/railties/test/application/configuration_test.rb b/railties/tes=
t/application/configuration_test.rb
index 73773602a3..377dab1a13 100644
--- a/railties/test/application/configuration_test.rb
+++ b/railties/test/application/configuration_test.rb
@@ -596,6 +596,27 @@ def index
       assert_equal "some_value", verifier.verify(message)
     end
=20
+    test "application will generate secret_key_base in tmp file if blank i=
n development" do
+      app_file "config/initializers/secret_token.rb", <<-RUBY
+        Rails.application.credentials.secret_key_base =3D nil
+      RUBY
+
+      app "development"
+
+      assert_not_nil app.secrets.secret_key_base
+      assert File.exist?(app_path("tmp/development_secret.txt"))
+    end
+
+    test "application will not generate secret_key_base in tmp file if bla=
nk in production" do
+      app_file "config/initializers/secret_token.rb", <<-RUBY
+        Rails.application.credentials.secret_key_base =3D nil
+      RUBY
+
+      assert_raises ArgumentError do
+        app "production"
+      end
+    end
+
     test "raises when secret_key_base is blank" do
       app_file "config/initializers/secret_token.rb", <<-RUBY
         Rails.application.credentials.secret_key_base =3D nil
@@ -619,7 +640,6 @@ def index
=20
     test "application verifier can build different verifiers" do
       make_basic_app do |application|
-        application.credentials.secret_key_base =3D "b3c631c314c0bbca50c1b=
2843150fe33"
         application.config.session_store :disabled
       end
=20
diff --git a/railties/test/isolation/abstract_unit.rb b/railties/test/isola=
tion/abstract_unit.rb
index 3f1638a516..b10701aa55 100644
--- a/railties/test/isolation/abstract_unit.rb
+++ b/railties/test/isolation/abstract_unit.rb
@@ -226,6 +226,7 @@ def self.name; "RailtiesTestApp"; end
       @app.config.session_store :cookie_store, key: "_myapp_session"
       @app.config.active_support.deprecation =3D :log
       @app.config.log_level =3D :info
+      @app.secrets.secret_key_base =3D "b3c631c314c0bbca50c1b2843150fe33"
=20
       yield @app if block_given?
       @app.initialize!
--=20
2.21.0


--SLDf9lqlvOQaIe6s--

--IrhDeMKUP4DT/M7F
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEETOkbdaeYKOhrGqi7lTFwvLT/r8YFAlyJOo4ACgkQlTFwvLT/
r8azVAgAj3Ibng4TXQ8eWjG8k38CoWvCz2c6FxxEPB3tvNffXwFKYm/Yfycd9OiA
4pgLH5anA2GmQdKqxDUOLSuV1aVNpyQESIn+zSDy20xlV+4dEuUg9/HYjEmG4PSR
iDFljoYr6cR+Cv4TRoJjaUYdoQPSZJJxt4sWCaBxlr23tIW3UbNHA6ohTwUU8Tmm
k2kQfrQBSMuzEWgtHYTKQWQj8zwQBYnYGSNWR0AqXQu3CdQNmvvFnFkJ/nQtFDJJ
sBTpmPjccUGl0PJexWoR4izYO7HqmmL+yIxWBvv2y9r76A0ZtXXgbBMt18tdiitk
Lh5G1MNHKd4+ZgaymNw/iG1euwjF/A==
=7F7O
-----END PGP SIGNATURE-----

--IrhDeMKUP4DT/M7F--
