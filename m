X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["9088" "Monday" "9" "October" "2017" "20:04:37" "-0700" "Aaron Patterson" "tenderlove@ruby-lang.org" "<20171010030437.GA4002@TC.local>" "311" "[oss-security] [CVE-2017-0903] Unsafe Object Deserialization Vulnerability in RubyGems" nil nil nil "10" "2017101003:04:37" "[oss-security] [CVE-2017-0903] Unsafe Object Deserialization Vulnerability in RubyGems" (number mark "U       tenderlove@r Oct  9  311/9088  " thread-indent "\"[oss-security] [CVE-2017-0903] Unsafe Object Deserialization Vulnerability in RubyGems\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23574 invoked by uid 550); 10 Oct 2017 03:05:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22522 invoked from network); 10 Oct 2017 03:05:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenderlovemaking-com.20150623.gappssmtp.com; s=20150623;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=IM90klr8YUi1Xqo8HXdkd14kg6DUh8kl//xxIf8fryU=;
        b=R4Q80e/gFBMmipyVm7+J+CgYv/DlzTO2EkEK9GVgzjuigA/jYI+/1Xy3DwLgHBa2zs
         txVbyzUQ4JpMxgrEE3QmyBq6IEpG+Yp879tKJgdO6XT3kUoV15zIHLuaV1X91jo2HuFT
         LXDBZ+tlMrBPHxeaZphIEO+AS0JrpHlc5wbk96UGH56OuKeMtqQhfJsKt4rV2QXeP+5r
         u/+QU+dvS8HrOjEw+XQdk2fewurFufgVvdIHO5avbyCSKs8GkgyTTtxaWerDFvizxOe/
         Kv6D4LIPV0BX8nrlCPEe+BDCmLlBYSjPzPd1OSZDHt6GSP8xHGTBP3vUHmCU9Q85QQ/v
         1q0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=IM90klr8YUi1Xqo8HXdkd14kg6DUh8kl//xxIf8fryU=;
        b=QH6rqiOPYh3cMvf9tQWWgNf3MctGidGcvbPk7TcZC5KOUfF1TBi0lnFbJ8tlAn8h5O
         Gm4XsbHh0lQi5rFiO1iUWVCT9UZ11+XwxJiLTpjGTLD+ohEpQksllsYn/lFZrOq+NcMr
         lfmmcqWiXcvHO4f246PeQSsvqAKXu2gbWBfjeYq91oWKnzEDo2czYhmPiIQs/hBcaI8U
         77P8XwbeOgbO4VhuaDMX/zvEpsNdxuHhX493340oyLQrlkPVX4cVKLSSLRp/2XPf2b/c
         CISKNNrMDre4W6QebjCrCHybX/eyHeM0ujWOvExQKqdtVq5nk1Cr/XbdjYVJw8JneTVu
         qaUQ==
X-Gm-Message-State: AMCzsaXpiIYZKmeajAOagd+R8UOviPTRJ9/8mhhDSbPw45EaasLntsvy
	gtbygFqv1Rh/GnSmz0sThoOB9g==
X-Google-Smtp-Source: AOwi7QBSmIVS91KH1BQTMSprTY1raLsbeoXrwsr1UWhnKXXX+yMWTZu1Iy8k5cwn5GBDED0e5oJbaQ==
X-Received: by 10.36.160.136 with SMTP id o130mr3829536ite.36.1507604711091;
        Mon, 09 Oct 2017 20:05:11 -0700 (PDT)
Sender: Aaron Patterson <aaron@tenderlovemaking.com>
Date: Mon, 9 Oct 2017 20:04:37 -0700
From: Aaron Patterson <tenderlove@ruby-lang.org>
To: security@suse.de, oss-security@lists.openwall.com,
	ruby-security-ann@googlegroups.com
Message-ID: <20171010030437.GA4002@TC.local>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="s2ZSL+KKDSLx8OML"
Content-Disposition: inline
User-Agent: Mutt/1.7.1 (2016-10-04)
Subject: [oss-security] [CVE-2017-0903] Unsafe Object Deserialization Vulnerability in
 RubyGems

--s2ZSL+KKDSLx8OML
Content-Type: multipart/mixed; boundary="X1bOJ3K7DJ5YkBrT"
Content-Disposition: inline


--X1bOJ3K7DJ5YkBrT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

# Unsafe Object Deserialization Vulnerability in RubyGems

There is a possible unsafe object desrialization vulnerability in RubyGems.
It is possible for YAML deserialization of gem specifications to bypass cla=
ss
white lists.  Specially crafted serialized objects can possibly be used to
escalate to remote code execution. This vulnerability has been assigned the
CVE identifier CVE-2017-0903.

Versions Affected:  >=3D 2.0.0.
Not affected:       < 2.0.0
Fixed Versions:     2.6.14

Impact
------
When packaging a Gem, RubyGems will store information about the gem (the
"specification") inside the Gem package, and formatted as YAML.  When readi=
ng
Gem information, RubyGems will parse that YAML.  Without safeguards, YAML c=
an
be used to instantiate objects in a target system.  If an attacker knows ab=
out
the target system, they can use these instantiated objects as a way to
escalate to an RCE via other means like `Marshal.load`.

Normally, a remote code execution flaw isn't a problem in RubyGems because
RubyGems is designed to execute arbitrary code any time a Gem is installed.
However, services that process Gems like RubyGems.org can be impacted by th=
is.
In other words, when used as a client, RubyGems is not impacted.  Applicati=
ons
that process Gems on the server are impacted.

Releases
--------
The FIXED releases are available at the normal locations.

Workarounds
-----------
For users that can't patch or upgrade, the following monkey patch will
mitigate this risk:

```
module Gem
  class Specification
    WHITELISTED_CLASSES =3D %w(
      Symbol
      Time
      Date
      Gem::Dependency
      Gem::Platform
      Gem::Requirement
      Gem::Specification
      Gem::Version
      Gem::Version::Requirement
    )

    WHITELISTED_SYMBOLS =3D %w(
      development
      runtime
    )

    def self.from_yaml(input)
      input =3D normalize_yaml_input input
      spec =3D Psych.safe_load(input, WHITELISTED_CLASSES, WHITELISTED_SYMB=
OLS, true)

      fail Gem::EndOfYAMLException if spec && spec.class =3D=3D FalseClass

      unless Gem::Specification =3D=3D=3D spec
        fail Gem::Exception, "YAML data doesn't evaluate to gem specificati=
on"
      end

      spec.specification_version ||=3D NONEXISTENT_SPECIFICATION_VERSION
      spec.reset_nil_attributes_to_default

      spec
    end
  end

  class Package
    def read_checksums gem
      Gem.load_yaml

      @checksums =3D gem.seek 'checksums.yaml.gz' do |entry|
        Zlib::GzipReader.wrap entry do |gz_io|
          Psych.safe_load(gz_io.read, Gem::Specification::WHITELISTED_CLASS=
ES, Gem::Specification::WHITELISTED_SYMBOLS, true)
        end
      end
    end
  end
end

Patches
-------
To aid users who aren't able to upgrade immediately we have provided patche=
s for
the two supported release series. They are in git-am format and consist of a
single changeset.

* 2-6-whitelist-bypass.patch - Patch for 2.6 series

Please note that only the 2.6.x series is supported at present. Users
of earlier unsupported releases are advised to upgrade as soon as possible =
as we
cannot guarantee the continued availability of security fixes for unsupport=
ed
releases.

Credits
-------
Thanks to Max Justicz ( https://mastodon.mit.edu/@maxj ) for reporting this!

--=20
Aaron Patterson
http://tenderlovemaking.com/

--X1bOJ3K7DJ5YkBrT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="2-6-whitelist-bypass.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 4e206183021b2463e25b2495d3986e9ccc3fb08e Mon Sep 17 00:00:00 2001
From: Aaron Patterson <aaron.patterson@gmail.com>
Date: Fri, 6 Oct 2017 11:11:40 -0700
Subject: [PATCH] Whitelist classes and symbols that are in Gem spec YAML

This patch adds a method for loading YAML specs from a gem and
whitelists classes and symbols that are allowed in the spec.  Then it
changes calls to YAML.load to call the whitelisted "safe" loader
instead.

[CVE-2017-0903]
---
 lib/rubygems.rb               |  3 ++-
 lib/rubygems/config_file.rb   |  2 +-
 lib/rubygems/package.rb       |  2 +-
 lib/rubygems/package/old.rb   |  2 +-
 lib/rubygems/safe_yaml.rb     | 48 +++++++++++++++++++++++++++++++++++++++=
++++
 lib/rubygems/specification.rb |  2 +-
 6 files changed, 54 insertions(+), 5 deletions(-)
 create mode 100644 lib/rubygems/safe_yaml.rb

diff --git a/lib/rubygems.rb b/lib/rubygems.rb
index d819bdee..ab004e8e 100644
--- a/lib/rubygems.rb
+++ b/lib/rubygems.rb
@@ -690,7 +690,7 @@ An Array (#{env.inspect}) was passed in from #{caller[3=
]}
=20
     unless test_syck
       begin
-        gem 'psych', '>=3D 1.2.1'
+        gem 'psych', '>=3D 2.0.0'
       rescue Gem::LoadError
         # It's OK if the user does not have the psych gem installed.  We w=
ill
         # attempt to require the stdlib version
@@ -714,6 +714,7 @@ An Array (#{env.inspect}) was passed in from #{caller[3=
]}
     end
=20
     require 'yaml'
+    require 'rubygems/safe_yaml'
=20
     # If we're supposed to be using syck, then we may have to force
     # activate it via the YAML::ENGINE API.
diff --git a/lib/rubygems/config_file.rb b/lib/rubygems/config_file.rb
index b98d30cc..a4efed0f 100644
--- a/lib/rubygems/config_file.rb
+++ b/lib/rubygems/config_file.rb
@@ -354,7 +354,7 @@ if you believe they were disclosed to a third party.
     return {} unless filename and File.exist? filename
=20
     begin
-      content =3D YAML.load(File.read(filename))
+      content =3D Gem::SafeYAML.load(File.read(filename))
       unless content.kind_of? Hash
         warn "Failed to load #{filename} because it doesn't contain valid =
YAML hash"
         return {}
diff --git a/lib/rubygems/package.rb b/lib/rubygems/package.rb
index c36e71d8..77811ed5 100644
--- a/lib/rubygems/package.rb
+++ b/lib/rubygems/package.rb
@@ -468,7 +468,7 @@ EOM
=20
     @checksums =3D gem.seek 'checksums.yaml.gz' do |entry|
       Zlib::GzipReader.wrap entry do |gz_io|
-        YAML.load gz_io.read
+        Gem::SafeYAML.safe_load gz_io.read
       end
     end
   end
diff --git a/lib/rubygems/package/old.rb b/lib/rubygems/package/old.rb
index 88193b98..f6e6e67c 100644
--- a/lib/rubygems/package/old.rb
+++ b/lib/rubygems/package/old.rb
@@ -101,7 +101,7 @@ class Gem::Package::Old < Gem::Package
       header << line
     end
=20
-    YAML.load header
+    Gem::SafeYAML.safe_load header
   end
=20
   ##
diff --git a/lib/rubygems/safe_yaml.rb b/lib/rubygems/safe_yaml.rb
new file mode 100644
index 00000000..b98cfaa5
--- /dev/null
+++ b/lib/rubygems/safe_yaml.rb
@@ -0,0 +1,48 @@
+module Gem
+
+  ###
+  # This module is used for safely loading YAML specs from a gem.  The
+  # `safe_load` method defined on this module is specifically designed for
+  # loading Gem specifications.  For loading other YAML safely, please see
+  # Psych.safe_load
+
+  module SafeYAML
+    WHITELISTED_CLASSES =3D %w(
+      Symbol
+      Time
+      Date
+      Gem::Dependency
+      Gem::Platform
+      Gem::Requirement
+      Gem::Specification
+      Gem::Version
+      Gem::Version::Requirement
+      YAML::Syck::DefaultKey
+      Syck::DefaultKey
+    )
+
+    WHITELISTED_SYMBOLS =3D %w(
+      development
+      runtime
+    )
+
+    if ::YAML.respond_to? :safe_load
+      def self.safe_load input
+        ::YAML.safe_load(input, WHITELISTED_CLASSES, WHITELISTED_SYMBOLS, =
true)
+      end
+
+      def self.load input
+        ::YAML.safe_load(input, [::Symbol])
+      end
+    else
+      warn "YAML safe loading is not available. Please upgrade psych to a =
version that supports safe loading (>=3D 2.0)."
+      def self.safe_load input, *args
+        ::YAML.load input
+      end
+
+      def self.load input
+        ::YAML.load input
+      end
+    end
+  end
+end
diff --git a/lib/rubygems/specification.rb b/lib/rubygems/specification.rb
index a23ffa22..2d71d184 100644
--- a/lib/rubygems/specification.rb
+++ b/lib/rubygems/specification.rb
@@ -1124,7 +1124,7 @@ class Gem::Specification < Gem::BasicSpecification
     Gem.load_yaml
=20
     input =3D normalize_yaml_input input
-    spec =3D YAML.load input
+    spec =3D Gem::SafeYAML.safe_load input
=20
     if spec && spec.class =3D=3D FalseClass then
       raise Gem::EndOfYAMLException
--=20
2.11.0


--X1bOJ3K7DJ5YkBrT--

--s2ZSL+KKDSLx8OML
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEETOkbdaeYKOhrGqi7lTFwvLT/r8YFAlncOMUACgkQlTFwvLT/
r8YG1Af+JEibRzWST7kJWlBui+JDJS24Se3YmyoM4mCDdPt3eDVV0d+4bK3oEoHE
gHmcdj5NUkepjNmPqTqF2xOkRlt4kwfpnkoqjELWT8LleIARaj8H4bWbKOawOk9j
2O6mhydfdlPAMWNTeGfxYUtTe8Ok0P88zzq2LXuAMBul1PB8BRbkaKhU2ZZupDwE
vYHoM+pGXcA31RFAqENU3ZtkezMROI47U6mM2GYvPlndZpYgbHcHCdr2cWDwFBd0
7vABOSpwW2LCjNKs/gsVJxNFEZe5XEj1W1St17jd/sL4icMPyohhAPkBAPJ+lebg
kzZLTAprJfYNj1flubJR+Pa8rGhvTA==
=NDUS
-----END PGP SIGNATURE-----

--s2ZSL+KKDSLx8OML--
