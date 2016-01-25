X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["16688" "Monday" "25" "January" "2016" "11:37:57" "-0800" "Aaron Patterson" "tenderlove@ruby-lang.org" "<20160125193757.GG14069@TC.local>" "464" "[oss-security] [CVE-2016-0753] Possible Input Validation Circumvention in Active Model" nil nil nil "1" "2016012519:37:57" "[oss-security] [CVE-2016-0753] Possible Input Validation Circumvention in Active Model" (number mark "U       tenderlove@r Jan 25  464/16688 " thread-indent "\"[oss-security] [CVE-2016-0753] Possible Input Validation Circumvention in Active Model\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5973 invoked by uid 550); 25 Jan 2016 19:38:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5914 invoked from network); 25 Jan 2016 19:38:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenderlovemaking-com.20150623.gappssmtp.com; s=20150623;
        h=sender:date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=6DJLSMhWOlJyqEoa4EBRQFqfoTV1jFMqzjuC5A/BpQo=;
        b=aaKF+lFRgaCTgBiARGbgG0eVdkzi/VcG+wIqELVK7T7ihhGfhubOUhB9hQ5vUycJnx
         +BARUD53ud6tp8/9E7VB/V+XNG2Tq3/QB2iYYsLx8uBA9MgBvNVIjMJ2J9b/Fum9D1ve
         DB/2I66OXbAyKsFoP07GwruFa6orEmI/0Y9unuxH8GLoDZK9hmfoa62HGGx/dhtcvixL
         s/kHBGMzCBTTC2M0sSRyZYHAnF2OcNG2VYAteAAYkXrcObvQegGYWI2bad5/lR8n04Wm
         DU84FN5PGeFk1JvV29zvfOZpICt/SFDoqodKHfmEK34hPt/Vtl1Jb07ykuwmHRF5jxVW
         iGeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-type:content-disposition:user-agent;
        bh=6DJLSMhWOlJyqEoa4EBRQFqfoTV1jFMqzjuC5A/BpQo=;
        b=ZcAViZ83CzAOTdGUqrl/UXWPhpJmetJvZ4NuFl+vghscI+VSVFgQPYtQp91+M5ZlXx
         +1zsE0W6poJi4x++i2M4Wp+RwUrSsuP8lJIuE6TF/BI2JnffDIxABrb/RHONFNr3kA9r
         KMeyOPVTiEDZap+QIeURQRzmpQZDfjNwyK8PwzJI3KBii6vWWQ0nZRk0whrZnoJhP/ID
         /GAXzBibQQdPI2FMKDXK3ZsNcVfz2q6nMZY8NEeS46OhpVwjmjfzPFkQusqZc1bhHBq2
         +UOLC063o747Z1MNDskjFanxYAbS/RjtUqMnGoIT2R8zNCEtz8+AamVjIiq1QaJZojiY
         2+XA==
X-Gm-Message-State: AG10YOQprH/wRCimNtSo0618Gc/hK1nh5ZHbjxEfowKmleJVK/Q8lfx1Kdd69+pgbMNQpQ==
X-Received: by 10.66.252.42 with SMTP id zp10mr28322060pac.29.1453750680143;
        Mon, 25 Jan 2016 11:38:00 -0800 (PST)
Sender: Aaron Patterson <aaron@tenderlovemaking.com>
Date: Mon, 25 Jan 2016 11:37:57 -0800
From: Aaron Patterson <tenderlove@ruby-lang.org>
To: security@suse.de, rubyonrails-security@googlegroups.com,
	oss-security@lists.openwall.com, ruby-security-ann@googlegroups.com
Message-ID: <20160125193757.GG14069@TC.local>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="qYrsQHciA3Wqs7Iv"
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [oss-security] [CVE-2016-0753] Possible Input Validation Circumvention in Active
 Model

--qYrsQHciA3Wqs7Iv
Content-Type: multipart/mixed; boundary="S66JdqtemGhvbcZP"
Content-Disposition: inline


--S66JdqtemGhvbcZP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Possible Input Validation Circumvention in Active Model

There is a possible input validation circumvention vulnerability in Active
Model. This vulnerability has been assigned the CVE identifier CVE-2016-075=
3.

Versions Affected:  4.1.0 and newer
Not affected:       4.0.13 and older
Fixed Versions:     5.0.0.beta1.1, 4.2.5.1, 4.1.14.1

Impact
------
Code that uses Active Model based models (including Active Record models) a=
nd
does not validate user input before passing it to the model can be subject =
to
an attack where specially crafted input will cause the model to skip
validations.

Vulnerable code will look something like this:

```ruby
SomeModel.new(unverified_user_input)
```

Rails users using Strong Parameters are generally not impacted by this issue
as they are encouraged to whitelist parameters and must specifically opt-out
of input verification using the `permit!` method to allow mass assignment.

For example, a vulnerable Rails application will have code that looks like
this:

```ruby
def create
  params.permit! # allow all parameters
  @user =3D User.new params[:users]
end
```

Active Model and Active Record objects are not equipped to handle arbitrary
user input.  It is up to the application to verify input before passing it =
to
Active Model models.  Rails users already have Strong Parameters in place to
handle white listing, but applications using Active Model and Active Record
outside of a Rails environment may be impacted.

All users running an affected release should either upgrade or use one of t=
he
workarounds immediately.

Releases
--------
The FIXED releases are available at the normal locations.

Workarounds
-----------
There are several workarounds depending on the application.  Inside a Rails
application, stop using `permit!`.  Outside a Rails application, either use
Hash#slice to select the parameters you need, or integrate Strong Parameters
with your application.

Patches
-------
To aid users who aren't able to upgrade immediately we have provided patche=
s for
the two supported release series. They are in git-am format and consist of a
single changeset.

* 4-1-validation_skip.patch - Patch for 4.1 series
* 4-2-validation_skip.patch - Patch for 4.2 series
* 5-0-validation_skip.patch - Patch for 5.0 series

Please note that only the 4.1.x and 4.2.x series are supported at present. =
Users
of earlier unsupported releases are advised to upgrade as soon as possible =
as we
cannot guarantee the continued availability of security fixes for unsupport=
ed
releases.

Credits
-------
Thanks to:

[John Backus](https://github.com/backus) from BlockScore for reporting this!

--=20
Aaron Patterson
http://tenderlovemaking.com/

--S66JdqtemGhvbcZP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="4-1-validation_skip.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 7a01874b75fdd62ab3626490cdf1c65c0ba659d0 Mon Sep 17 00:00:00 2001
From: Aaron Patterson <aaron.patterson@gmail.com>
Date: Mon, 18 Jan 2016 13:51:02 -0800
Subject: [PATCH] Eliminate instance level writers for class accessors

Instance level writers can have an impact on how the Active Model /
Record objects are saved.  Specifically, they can be used to bypass
validations.  This is a problem if mass assignment protection is
disabled and specific attributes are passed to the constructor.

Conflicts:
	activerecord/lib/active_record/scoping/default.rb
	activesupport/lib/active_support/callbacks.rb

CVE-2016-0753
---
 activemodel/lib/active_model/serializers/json.rb | 2 +-
 activemodel/lib/active_model/validations.rb      | 3 ++-
 activerecord/lib/active_record/enum.rb           | 2 +-
 activerecord/lib/active_record/reflection.rb     | 4 ++--
 activesupport/lib/active_support/callbacks.rb    | 2 +-
 5 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/activemodel/lib/active_model/serializers/json.rb b/activemodel=
/lib/active_model/serializers/json.rb
index c58e73f..fd405ff 100644
--- a/activemodel/lib/active_model/serializers/json.rb
+++ b/activemodel/lib/active_model/serializers/json.rb
@@ -10,7 +10,7 @@ module ActiveModel
       included do
         extend ActiveModel::Naming
=20
-        class_attribute :include_root_in_json
+        class_attribute :include_root_in_json, instance_writer: false
         self.include_root_in_json =3D false
       end
=20
diff --git a/activemodel/lib/active_model/validations.rb b/activemodel/lib/=
active_model/validations.rb
index e9674d5..7451da0 100644
--- a/activemodel/lib/active_model/validations.rb
+++ b/activemodel/lib/active_model/validations.rb
@@ -46,9 +46,10 @@ module ActiveModel
       include HelperMethods
=20
       attr_accessor :validation_context
+      private :validation_context=3D
       define_callbacks :validate, scope: :name
=20
-      class_attribute :_validators
+      class_attribute :_validators, instance_writer: false
       self._validators =3D Hash.new { |h,k| h[k] =3D [] }
     end
=20
diff --git a/activerecord/lib/active_record/enum.rb b/activerecord/lib/acti=
ve_record/enum.rb
index fba7747..c99941e 100644
--- a/activerecord/lib/active_record/enum.rb
+++ b/activerecord/lib/active_record/enum.rb
@@ -68,7 +68,7 @@ module ActiveRecord
   # Where conditions on an enum attribute must use the ordinal value of an=
 enum.
   module Enum
     def self.extended(base) # :nodoc:
-      base.class_attribute(:defined_enums)
+      base.class_attribute(:defined_enums, instance_writer: false)
       base.defined_enums =3D {}
     end
=20
diff --git a/activerecord/lib/active_record/reflection.rb b/activerecord/li=
b/active_record/reflection.rb
index 824e005..82b0123 100644
--- a/activerecord/lib/active_record/reflection.rb
+++ b/activerecord/lib/active_record/reflection.rb
@@ -4,8 +4,8 @@ module ActiveRecord
     extend ActiveSupport::Concern
=20
     included do
-      class_attribute :_reflections
-      class_attribute :aggregate_reflections
+      class_attribute :_reflections, instance_writer: false
+      class_attribute :aggregate_reflections, instance_writer: false
       self._reflections =3D {}
       self.aggregate_reflections =3D {}
     end
diff --git a/activesupport/lib/active_support/callbacks.rb b/activesupport/=
lib/active_support/callbacks.rb
index 3265d11..3ba690b 100644
--- a/activesupport/lib/active_support/callbacks.rb
+++ b/activesupport/lib/active_support/callbacks.rb
@@ -768,7 +768,7 @@ module ActiveSupport
         end
=20
         names.each do |name|
-          class_attribute "_#{name}_callbacks"
+          class_attribute "_#{name}_callbacks", instance_writer: false
           set_callbacks name, CallbackChain.new(name, options)
         end
       end
--=20
2.2.1


--S66JdqtemGhvbcZP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="4-2-validation_skip.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 4b6ca16fa865ce614beda503d7ff2a9a33a792ce Mon Sep 17 00:00:00 2001
From: Aaron Patterson <aaron.patterson@gmail.com>
Date: Mon, 18 Jan 2016 13:51:02 -0800
Subject: [PATCH] Eliminate instance level writers for class accessors

Instance level writers can have an impact on how the Active Model /
Record objects are saved.  Specifically, they can be used to bypass
validations.  This is a problem if mass assignment protection is
disabled and specific attributes are passed to the constructor.

Conflicts:
	activerecord/lib/active_record/scoping/default.rb
	activesupport/lib/active_support/callbacks.rb

CVE-2016-0753
---
 activemodel/lib/active_model/serializers/json.rb | 2 +-
 activemodel/lib/active_model/validations.rb      | 3 ++-
 activerecord/lib/active_record/enum.rb           | 2 +-
 activerecord/lib/active_record/reflection.rb     | 4 ++--
 activesupport/lib/active_support/callbacks.rb    | 2 +-
 5 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/activemodel/lib/active_model/serializers/json.rb b/activemodel=
/lib/active_model/serializers/json.rb
index b66dbf1..b64a829 100644
--- a/activemodel/lib/active_model/serializers/json.rb
+++ b/activemodel/lib/active_model/serializers/json.rb
@@ -10,7 +10,7 @@ module ActiveModel
       included do
         extend ActiveModel::Naming
=20
-        class_attribute :include_root_in_json
+        class_attribute :include_root_in_json, instance_writer: false
         self.include_root_in_json =3D false
       end
=20
diff --git a/activemodel/lib/active_model/validations.rb b/activemodel/lib/=
active_model/validations.rb
index e23b305..8185154 100644
--- a/activemodel/lib/active_model/validations.rb
+++ b/activemodel/lib/active_model/validations.rb
@@ -47,9 +47,10 @@ module ActiveModel
       include HelperMethods
=20
       attr_accessor :validation_context
+      private :validation_context=3D
       define_callbacks :validate, scope: :name
=20
-      class_attribute :_validators
+      class_attribute :_validators, instance_writer: false
       self._validators =3D Hash.new { |h,k| h[k] =3D [] }
     end
=20
diff --git a/activerecord/lib/active_record/enum.rb b/activerecord/lib/acti=
ve_record/enum.rb
index 1df779e..7887991 100644
--- a/activerecord/lib/active_record/enum.rb
+++ b/activerecord/lib/active_record/enum.rb
@@ -69,7 +69,7 @@ module ActiveRecord
   # Where conditions on an enum attribute must use the ordinal value of an=
 enum.
   module Enum
     def self.extended(base) # :nodoc:
-      base.class_attribute(:defined_enums)
+      base.class_attribute(:defined_enums, instance_writer: false)
       base.defined_enums =3D {}
     end
=20
diff --git a/activerecord/lib/active_record/reflection.rb b/activerecord/li=
b/active_record/reflection.rb
index 590bd6c..b46df26 100644
--- a/activerecord/lib/active_record/reflection.rb
+++ b/activerecord/lib/active_record/reflection.rb
@@ -7,8 +7,8 @@ module ActiveRecord
     extend ActiveSupport::Concern
=20
     included do
-      class_attribute :_reflections
-      class_attribute :aggregate_reflections
+      class_attribute :_reflections, instance_writer: false
+      class_attribute :aggregate_reflections, instance_writer: false
       self._reflections =3D {}
       self.aggregate_reflections =3D {}
     end
diff --git a/activesupport/lib/active_support/callbacks.rb b/activesupport/=
lib/active_support/callbacks.rb
index 355cedb..98fd6b5 100644
--- a/activesupport/lib/active_support/callbacks.rb
+++ b/activesupport/lib/active_support/callbacks.rb
@@ -770,7 +770,7 @@ module ActiveSupport
         options =3D names.extract_options!
=20
         names.each do |name|
-          class_attribute "_#{name}_callbacks"
+          class_attribute "_#{name}_callbacks", instance_writer: false
           set_callbacks name, CallbackChain.new(name, options)
=20
           module_eval <<-RUBY, __FILE__, __LINE__ + 1
--=20
2.2.1


--S66JdqtemGhvbcZP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="5-0-validation_skip.patch"
Content-Transfer-Encoding: quoted-printable

=46rom a52175f55fc11a28521e0c4a86d80f545e5b0d68 Mon Sep 17 00:00:00 2001
From: Aaron Patterson <aaron.patterson@gmail.com>
Date: Mon, 18 Jan 2016 13:51:02 -0800
Subject: [PATCH] Eliminate instance level writers for class accessors

Instance level writers can have an impact on how the Active Model /
Record objects are saved.  Specifically, they can be used to bypass
validations.  This is a problem if mass assignment protection is
disabled and specific attributes are passed to the constructor.

CVE-2016-0753
---
 activemodel/lib/active_model/serializers/json.rb  | 2 +-
 activemodel/lib/active_model/validations.rb       | 3 ++-
 activerecord/lib/active_record/enum.rb            | 2 +-
 activerecord/lib/active_record/reflection.rb      | 4 ++--
 activerecord/lib/active_record/scoping/default.rb | 2 +-
 activesupport/lib/active_support/callbacks.rb     | 4 ++--
 6 files changed, 9 insertions(+), 8 deletions(-)

diff --git a/activemodel/lib/active_model/serializers/json.rb b/activemodel=
/lib/active_model/serializers/json.rb
index b66dbf1..b64a829 100644
--- a/activemodel/lib/active_model/serializers/json.rb
+++ b/activemodel/lib/active_model/serializers/json.rb
@@ -10,7 +10,7 @@ module ActiveModel
       included do
         extend ActiveModel::Naming
=20
-        class_attribute :include_root_in_json
+        class_attribute :include_root_in_json, instance_writer: false
         self.include_root_in_json =3D false
       end
=20
diff --git a/activemodel/lib/active_model/validations.rb b/activemodel/lib/=
active_model/validations.rb
index f23c920..8159b9b 100644
--- a/activemodel/lib/active_model/validations.rb
+++ b/activemodel/lib/active_model/validations.rb
@@ -47,9 +47,10 @@ module ActiveModel
       include HelperMethods
=20
       attr_accessor :validation_context
+      private :validation_context=3D
       define_callbacks :validate, scope: :name
=20
-      class_attribute :_validators
+      class_attribute :_validators, instance_writer: false
       self._validators =3D Hash.new { |h,k| h[k] =3D [] }
     end
=20
diff --git a/activerecord/lib/active_record/enum.rb b/activerecord/lib/acti=
ve_record/enum.rb
index 8655f68..311f8e1 100644
--- a/activerecord/lib/active_record/enum.rb
+++ b/activerecord/lib/active_record/enum.rb
@@ -95,7 +95,7 @@ module ActiveRecord
=20
   module Enum
     def self.extended(base) # :nodoc:
-      base.class_attribute(:defined_enums)
+      base.class_attribute(:defined_enums, instance_writer: false)
       base.defined_enums =3D {}
     end
=20
diff --git a/activerecord/lib/active_record/reflection.rb b/activerecord/li=
b/active_record/reflection.rb
index 37e1862..320ced5 100644
--- a/activerecord/lib/active_record/reflection.rb
+++ b/activerecord/lib/active_record/reflection.rb
@@ -7,8 +7,8 @@ module ActiveRecord
     extend ActiveSupport::Concern
=20
     included do
-      class_attribute :_reflections
-      class_attribute :aggregate_reflections
+      class_attribute :_reflections, instance_writer: false
+      class_attribute :aggregate_reflections, instance_writer: false
       self._reflections =3D {}
       self.aggregate_reflections =3D {}
     end
diff --git a/activerecord/lib/active_record/scoping/default.rb b/activereco=
rd/lib/active_record/scoping/default.rb
index 8baf3b8..f6b6768 100644
--- a/activerecord/lib/active_record/scoping/default.rb
+++ b/activerecord/lib/active_record/scoping/default.rb
@@ -6,7 +6,7 @@ module ActiveRecord
       included do
         # Stores the default scope for the class.
         class_attribute :default_scopes, instance_writer: false, instance_=
predicate: false
-        class_attribute :default_scope_override, instance_predicate: false
+        class_attribute :default_scope_override, instance_writer: false, i=
nstance_predicate: false
=20
         self.default_scopes =3D []
         self.default_scope_override =3D nil
diff --git a/activesupport/lib/active_support/callbacks.rb b/activesupport/=
lib/active_support/callbacks.rb
index bf560ec..e6baddf 100644
--- a/activesupport/lib/active_support/callbacks.rb
+++ b/activesupport/lib/active_support/callbacks.rb
@@ -71,7 +71,7 @@ module ActiveSupport
     # halt the entire callback chain and display a deprecation message.
     # If false, callback chains will only be halted by calling +throw :abo=
rt+.
     # Defaults to +true+.
-    mattr_accessor(:halt_and_display_warning_on_return_false) { true }
+    mattr_accessor(:halt_and_display_warning_on_return_false, instance_wri=
ter: false) { true }
=20
     # Runs the callbacks for the given event.
     #
@@ -742,7 +742,7 @@ module ActiveSupport
         options =3D names.extract_options!
=20
         names.each do |name|
-          class_attribute "_#{name}_callbacks"
+          class_attribute "_#{name}_callbacks", instance_writer: false
           set_callbacks name, CallbackChain.new(name, options)
=20
           module_eval <<-RUBY, __FILE__, __LINE__ + 1
--=20
2.2.1


--S66JdqtemGhvbcZP--

--qYrsQHciA3Wqs7Iv
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iQEcBAEBAgAGBQJWpnmVAAoJEJUxcLy0/6/GyzwH/3cy3+A+Wii91BCP9SMwIYmH
U3rmTYTa+mDRKws1LQ+MCT+s2FHWxZ5azHxOgj7Wu8biE2k8+g+VSFhfTrapRmUF
0oSraIA7QqfmeAvZwg6Vvzzix1rnAvBLe6aSF8xN2ViOX5oSp/wKSG3z4sbDIVq8
oxMRUqHDpyAn1WhVu56fXONkOzbF275ElgIfQVT5nK8H9XpIVguql+ClH8PwJLz+
kEGFoijV98BSda2+iFTLA2JIIWJDlC2LzuWDCFE+6wafON03c+OCpjbJ0+0uAF8y
skl0VTQzPd5b1wopVx3TSarQgisxEDxUnsEZvSY/2rPOEtEOnTpZsU7Ghlj8hxk=
=dnJd
-----END PGP SIGNATURE-----

--qYrsQHciA3Wqs7Iv--
