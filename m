X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["21109" "Monday" "25" "January" "2016" "11:33:08" "-0800" "Aaron Patterson" "tenderlove@ruby-lang.org" "<20160125193308.GC14069@TC.local>" "562" "[oss-security] [CVE-2015-7577] Nested attributes rejection proc bypass in Active Record." nil nil nil "1" "2016012519:33:08" "[oss-security] [CVE-2015-7577] Nested attributes rejection proc bypass in Active Record." (number mark "U       tenderlove@r Jan 25  562/21109 " thread-indent "\"[oss-security] [CVE-2015-7577] Nested attributes rejection proc bypass in Active Record.\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7556 invoked by uid 550); 25 Jan 2016 19:33:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7478 invoked from network); 25 Jan 2016 19:33:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenderlovemaking-com.20150623.gappssmtp.com; s=20150623;
        h=sender:date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=0KZY1gcT66O9+mrjJhIba1J4LpPaftnfSVGBeNchyNU=;
        b=Gmm3gO7O6Tzah9n12F4b1jq9BKRX6ctev97KMikn96t6l0dcO/jwakR+uNUoMsESz0
         ZdumnJR7uI31ZJUVJBi1VUn/g7ZvXXcLqRPd2iTHDqHR6KJcYlXJbFeHvvrjZ3tx5jSz
         zjpaiikYChFKkryeap9hhpPskxRWuGoyAcOTqU5KH3nNr77axSsZfGRBiF0x9XlZcFcH
         L7dOkpxehiV369VlnHMPSWUKeUXxGpCWCIAGyozT4sbtzFzUrhY8dSlU7AH0cID4lDsD
         sdTOPf3T8GhJAzMJ2HQIf3AeRK3rPCRIX/DMJSBI39ZhRcvTSgfvFBG0MlEq/4DmegsY
         AjTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-type:content-disposition:user-agent;
        bh=0KZY1gcT66O9+mrjJhIba1J4LpPaftnfSVGBeNchyNU=;
        b=KAa8LXcM3oUtQ+DwG4ao3cZDmBFsYO7IGLlaMToAZTO353hIzQ5Gl0k2/luPJRnXT5
         WAUEyUpw3NJn0QNky403lcRPOCT1fdZk4ldKvtAn0xVEhSKcjz63+bnAlLoeNZOyV8bG
         SAhAH4AFHYKj1mHfaDRLIBidUCJf2c/FhiD+VajIv/kKTSKZpv1pfHNJppG2rpavde5w
         lqpPXQ+wgXUpcGnXxjkfOAjwoVtTbGPYQumgOcO0UB1OMJpzr8niFCcgB3Bk862H6Avv
         A6jresgvXcv6tiNYPzT2dj0TBmCdgU4xyr3BMKWCti15DMB+Y/HE/Fiz+ZGUgo3BOTQp
         lOQg==
X-Gm-Message-State: AG10YOTe86UT9lSBVFdQX2YSI2jKk07tNmzPsfqraWIultiAcq3KK9CathB3IxgVNmGMqQ==
X-Received: by 10.66.218.103 with SMTP id pf7mr27946535pac.140.1453750390594;
        Mon, 25 Jan 2016 11:33:10 -0800 (PST)
Sender: Aaron Patterson <aaron@tenderlovemaking.com>
Date: Mon, 25 Jan 2016 11:33:08 -0800
From: Aaron Patterson <tenderlove@ruby-lang.org>
To: security@suse.de, rubyonrails-security@googlegroups.com,
	oss-security@lists.openwall.com, ruby-security-ann@googlegroups.com
Message-ID: <20160125193308.GC14069@TC.local>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="A9z/3b/E4MkkD+7G"
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [oss-security] [CVE-2015-7577] Nested attributes rejection proc bypass in Active
 Record.

--A9z/3b/E4MkkD+7G
Content-Type: multipart/mixed; boundary="9l24NVCWtSuIVIod"
Content-Disposition: inline


--9l24NVCWtSuIVIod
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Nested attributes rejection proc bypass in Active Record.

There is a vulnerability in how the nested attributes feature in Active Rec=
ord
handles updates in combination with destroy flags when destroying records is
disabled. This vulnerability has been assigned the CVE identifier CVE-2015-=
7577.

Versions Affected:  3.1.0 and newer
Not affected:       3.0.x and older
Fixed Versions:     5.0.0.beta1.1, 4.2.5.1, 4.1.14.1, 3.2.22.1

Impact
------
When using the nested attributes feature in Active Record you can prevent t=
he
destruction of associated records by passing the `allow_destroy: false` opt=
ion
to the `accepts_nested_attributes_for` method. However due to a change in t=
he
commit [a9b4b5d][1] the `_destroy` flag prevents the `:reject_if` proc from
being called because it assumes that the record will be destroyed anyway.

However this isn't true if `:allow_destroy` is false so this leads to chang=
es
that would have been rejected being applied to the record. Attackers could =
use
this do things like set attributes to invalid values and to clear all of the
attributes amongst other things. The severity will be dependent on how the
application has used this feature.

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
$ cat config/initializers/nested_attributes_bypass_fix.rb
module ActiveRecord
  module NestedAttributes
    private

    def reject_new_record?(association_name, attributes)
      will_be_destroyed?(association_name, attributes) || call_reject_if(as=
sociation_name, attributes)
    end

    def call_reject_if(association_name, attributes)
      return false if will_be_destroyed?(association_name, attributes)

      case callback =3D self.nested_attributes_options[association_name][:r=
eject_if]
      when Symbol
        method(callback).arity =3D=3D 0 ? send(callback) : send(callback, a=
ttributes)
      when Proc
        callback.call(attributes)
      end
    end

    def will_be_destroyed?(association_name, attributes)
      allow_destroy?(association_name) && has_destroy_flag?(attributes)
    end

    def allow_destroy?(association_name)
      self.nested_attributes_options[association_name][:allow_destroy]
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

* 3-2-nested-attributes-reject-if-bypass.patch - Patch for 3.2 series
* 4-1-nested-attributes-reject-if-bypass.patch - Patch for 4.1 series
* 4-2-nested-attributes-reject-if-bypass.patch - Patch for 4.2 series
* 5-0-nested-attributes-reject-if-bypass.patch - Patch for 5.0 series

Please note that only the 4.1.x and 4.2.x series are supported at present. =
Users
of earlier unsupported releases are advised to upgrade as soon as possible =
as we
cannot guarantee the continued availability of security fixes for unsupport=
ed
releases.

Credits
-------
Thank you to Justin Coyne for reporting the problem and working with us to =
fix it.

[1]: https://github.com/rails/rails/commit/a9b4b5da7c216e4464eeb9dbd0a39ea2=
58d64325

--=20
Aaron Patterson
http://tenderlovemaking.com/

--9l24NVCWtSuIVIod
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="3-2-nested-attributes-reject-if-bypass.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 9ce690ea4a6403a9d575ad381da2685f6ef4fcda Mon Sep 17 00:00:00 2001
From: Andrew White <andyw@pixeltrix.co.uk>
Date: Fri, 27 Nov 2015 13:46:46 +0000
Subject: [PATCH] Don't short-circuit reject_if proc

When updating an associated record via nested attribute hashes the
reject_if proc could be bypassed if the _destroy flag was set in the
attribute hash and allow_destroy was set to false.

The fix is to only short-circuit if the _destroy flag is set and the
option allow_destroy is set to true. It also fixes an issue where
a new record wasn't created if _destroy was set and the option
allow_destroy was set to false.

CVE-2015-7577
---
 activerecord/lib/active_record/nested_attributes.rb | 14 ++++++++++++--
 activerecord/test/cases/nested_attributes_test.rb   | 13 +++++++++++++
 2 files changed, 25 insertions(+), 2 deletions(-)

diff --git a/activerecord/lib/active_record/nested_attributes.rb b/activere=
cord/lib/active_record/nested_attributes.rb
index 41b62f6..a0e98c3 100644
--- a/activerecord/lib/active_record/nested_attributes.rb
+++ b/activerecord/lib/active_record/nested_attributes.rb
@@ -470,11 +470,12 @@ module ActiveRecord
     # has_destroy_flag? or if a <tt>:reject_if</tt> proc exists for this
     # association and evaluates to +true+.
     def reject_new_record?(association_name, attributes)
-      has_destroy_flag?(attributes) || call_reject_if(association_name, at=
tributes)
+      will_be_destroyed?(association_name, attributes) || call_reject_if(a=
ssociation_name, attributes)
     end
=20
     def call_reject_if(association_name, attributes)
-      return false if has_destroy_flag?(attributes)
+      return false if will_be_destroyed?(association_name, attributes)
+
       case callback =3D self.nested_attributes_options[association_name][:=
reject_if]
       when Symbol
         method(callback).arity =3D=3D 0 ? send(callback) : send(callback, =
attributes)
@@ -483,6 +484,15 @@ module ActiveRecord
       end
     end
=20
+    # Only take into account the destroy flag if <tt>:allow_destroy</tt> i=
s true
+    def will_be_destroyed?(association_name, attributes)
+      allow_destroy?(association_name) && has_destroy_flag?(attributes)
+    end
+
+    def allow_destroy?(association_name)
+      self.nested_attributes_options[association_name][:allow_destroy]
+    end
+
     def raise_nested_attributes_record_not_found(association_name, record_=
id)
       raise RecordNotFound, "Couldn't find #{self.class.reflect_on_associa=
tion(association_name).klass.name} with ID=3D#{record_id} for #{self.class.=
name} with ID=3D#{id}"
     end
diff --git a/activerecord/test/cases/nested_attributes_test.rb b/activereco=
rd/test/cases/nested_attributes_test.rb
index 85b9d3c..f5f0517 100644
--- a/activerecord/test/cases/nested_attributes_test.rb
+++ b/activerecord/test/cases/nested_attributes_test.rb
@@ -147,6 +147,19 @@ class TestNestedAttributesInGeneral < ActiveRecord::Te=
stCase
     assert man.reload.interests.empty?
   end
=20
+  def test_reject_if_is_not_short_circuited_if_allow_destroy_is_false
+    Pirate.accepts_nested_attributes_for :ship, reject_if: ->(a) { a[:name=
] =3D=3D "The Golden Hind" }, allow_destroy: false
+
+    pirate =3D Pirate.create!(catchphrase: "Stop wastin' me time", ship_at=
tributes: { name: "White Pearl", _destroy: "1" })
+    assert_equal "White Pearl", pirate.reload.ship.name
+
+    pirate.update!(ship_attributes: { id: pirate.ship.id, name: "The Golde=
n Hind", _destroy: "1" })
+    assert_equal "White Pearl", pirate.reload.ship.name
+
+    pirate.update!(ship_attributes: { id: pirate.ship.id, name: "Black Pea=
rl", _destroy: "1" })
+    assert_equal "Black Pearl", pirate.reload.ship.name
+  end
+
   def test_has_many_association_updating_a_single_record
     Man.accepts_nested_attributes_for(:interests)
     man =3D Man.create(:name =3D> 'John')
--=20
2.4.9 (Apple Git-60)


--9l24NVCWtSuIVIod
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="4-1-nested-attributes-reject-if-bypass.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 5dc869dc73bcbe0b3dd415f257cf175015c4d014 Mon Sep 17 00:00:00 2001
From: Andrew White <andyw@pixeltrix.co.uk>
Date: Fri, 27 Nov 2015 13:46:46 +0000
Subject: [PATCH] Don't short-circuit reject_if proc

When updating an associated record via nested attribute hashes the
reject_if proc could be bypassed if the _destroy flag was set in the
attribute hash and allow_destroy was set to false.

The fix is to only short-circuit if the _destroy flag is set and the
option allow_destroy is set to true. It also fixes an issue where
a new record wasn't created if _destroy was set and the option
allow_destroy was set to false.

CVE-2015-7577
---
 activerecord/lib/active_record/nested_attributes.rb | 14 ++++++++++++--
 activerecord/test/cases/nested_attributes_test.rb   | 13 +++++++++++++
 2 files changed, 25 insertions(+), 2 deletions(-)

diff --git a/activerecord/lib/active_record/nested_attributes.rb b/activere=
cord/lib/active_record/nested_attributes.rb
index 6df01b7..03a4009 100644
--- a/activerecord/lib/active_record/nested_attributes.rb
+++ b/activerecord/lib/active_record/nested_attributes.rb
@@ -523,7 +523,7 @@ module ActiveRecord
     # has_destroy_flag? or if a <tt>:reject_if</tt> proc exists for this
     # association and evaluates to +true+.
     def reject_new_record?(association_name, attributes)
-      has_destroy_flag?(attributes) || call_reject_if(association_name, at=
tributes)
+      will_be_destroyed?(association_name, attributes) || call_reject_if(a=
ssociation_name, attributes)
     end
=20
     # Determines if a record with the particular +attributes+ should be
@@ -532,7 +532,8 @@ module ActiveRecord
     #
     # Returns false if there is a +destroy_flag+ on the attributes.
     def call_reject_if(association_name, attributes)
-      return false if has_destroy_flag?(attributes)
+      return false if will_be_destroyed?(association_name, attributes)
+
       case callback =3D self.nested_attributes_options[association_name][:=
reject_if]
       when Symbol
         method(callback).arity =3D=3D 0 ? send(callback) : send(callback, =
attributes)
@@ -541,6 +542,15 @@ module ActiveRecord
       end
     end
=20
+    # Only take into account the destroy flag if <tt>:allow_destroy</tt> i=
s true
+    def will_be_destroyed?(association_name, attributes)
+      allow_destroy?(association_name) && has_destroy_flag?(attributes)
+    end
+
+    def allow_destroy?(association_name)
+      self.nested_attributes_options[association_name][:allow_destroy]
+    end
+
     def raise_nested_attributes_record_not_found!(association_name, record=
_id)
       raise RecordNotFound, "Couldn't find #{self.class._reflect_on_associ=
ation(association_name).klass.name} with ID=3D#{record_id} for #{self.class=
.name} with ID=3D#{id}"
     end
diff --git a/activerecord/test/cases/nested_attributes_test.rb b/activereco=
rd/test/cases/nested_attributes_test.rb
index c87a837..e421600 100644
--- a/activerecord/test/cases/nested_attributes_test.rb
+++ b/activerecord/test/cases/nested_attributes_test.rb
@@ -161,6 +161,19 @@ class TestNestedAttributesInGeneral < ActiveRecord::Te=
stCase
     assert man.reload.interests.empty?
   end
=20
+  def test_reject_if_is_not_short_circuited_if_allow_destroy_is_false
+    Pirate.accepts_nested_attributes_for :ship, reject_if: ->(a) { a[:name=
] =3D=3D "The Golden Hind" }, allow_destroy: false
+
+    pirate =3D Pirate.create!(catchphrase: "Stop wastin' me time", ship_at=
tributes: { name: "White Pearl", _destroy: "1" })
+    assert_equal "White Pearl", pirate.reload.ship.name
+
+    pirate.update!(ship_attributes: { id: pirate.ship.id, name: "The Golde=
n Hind", _destroy: "1" })
+    assert_equal "White Pearl", pirate.reload.ship.name
+
+    pirate.update!(ship_attributes: { id: pirate.ship.id, name: "Black Pea=
rl", _destroy: "1" })
+    assert_equal "Black Pearl", pirate.reload.ship.name
+  end
+
   def test_has_many_association_updating_a_single_record
     Man.accepts_nested_attributes_for(:interests)
     man =3D Man.create(name: 'John')
--=20
2.4.9 (Apple Git-60)


--9l24NVCWtSuIVIod
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="4-2-nested-attributes-reject-if-bypass.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 5aa44e2ffacf85e6efc0e8eb706bc1a3b6492aec Mon Sep 17 00:00:00 2001
From: Andrew White <andyw@pixeltrix.co.uk>
Date: Fri, 27 Nov 2015 13:46:46 +0000
Subject: [PATCH] Don't short-circuit reject_if proc

When updating an associated record via nested attribute hashes the
reject_if proc could be bypassed if the _destroy flag was set in the
attribute hash and allow_destroy was set to false.

The fix is to only short-circuit if the _destroy flag is set and the
option allow_destroy is set to true. It also fixes an issue where
a new record wasn't created if _destroy was set and the option
allow_destroy was set to false.

CVE-2015-7577
---
 activerecord/lib/active_record/nested_attributes.rb | 14 ++++++++++++--
 activerecord/test/cases/nested_attributes_test.rb   | 13 +++++++++++++
 2 files changed, 25 insertions(+), 2 deletions(-)

diff --git a/activerecord/lib/active_record/nested_attributes.rb b/activere=
cord/lib/active_record/nested_attributes.rb
index 04b6182..a8ee082 100644
--- a/activerecord/lib/active_record/nested_attributes.rb
+++ b/activerecord/lib/active_record/nested_attributes.rb
@@ -523,7 +523,7 @@ module ActiveRecord
     # has_destroy_flag? or if a <tt>:reject_if</tt> proc exists for this
     # association and evaluates to +true+.
     def reject_new_record?(association_name, attributes)
-      has_destroy_flag?(attributes) || call_reject_if(association_name, at=
tributes)
+      will_be_destroyed?(association_name, attributes) || call_reject_if(a=
ssociation_name, attributes)
     end
=20
     # Determines if a record with the particular +attributes+ should be
@@ -532,7 +532,8 @@ module ActiveRecord
     #
     # Returns false if there is a +destroy_flag+ on the attributes.
     def call_reject_if(association_name, attributes)
-      return false if has_destroy_flag?(attributes)
+      return false if will_be_destroyed?(association_name, attributes)
+
       case callback =3D self.nested_attributes_options[association_name][:=
reject_if]
       when Symbol
         method(callback).arity =3D=3D 0 ? send(callback) : send(callback, =
attributes)
@@ -541,6 +542,15 @@ module ActiveRecord
       end
     end
=20
+    # Only take into account the destroy flag if <tt>:allow_destroy</tt> i=
s true
+    def will_be_destroyed?(association_name, attributes)
+      allow_destroy?(association_name) && has_destroy_flag?(attributes)
+    end
+
+    def allow_destroy?(association_name)
+      self.nested_attributes_options[association_name][:allow_destroy]
+    end
+
     def raise_nested_attributes_record_not_found!(association_name, record=
_id)
       raise RecordNotFound, "Couldn't find #{self.class._reflect_on_associ=
ation(association_name).klass.name} with ID=3D#{record_id} for #{self.class=
.name} with ID=3D#{id}"
     end
diff --git a/activerecord/test/cases/nested_attributes_test.rb b/activereco=
rd/test/cases/nested_attributes_test.rb
index 9b5ea95..fc203cf 100644
--- a/activerecord/test/cases/nested_attributes_test.rb
+++ b/activerecord/test/cases/nested_attributes_test.rb
@@ -146,6 +146,19 @@ class TestNestedAttributesInGeneral < ActiveRecord::Te=
stCase
     assert man.reload.interests.empty?
   end
=20
+  def test_reject_if_is_not_short_circuited_if_allow_destroy_is_false
+    Pirate.accepts_nested_attributes_for :ship, reject_if: ->(a) { a[:name=
] =3D=3D "The Golden Hind" }, allow_destroy: false
+
+    pirate =3D Pirate.create!(catchphrase: "Stop wastin' me time", ship_at=
tributes: { name: "White Pearl", _destroy: "1" })
+    assert_equal "White Pearl", pirate.reload.ship.name
+
+    pirate.update!(ship_attributes: { id: pirate.ship.id, name: "The Golde=
n Hind", _destroy: "1" })
+    assert_equal "White Pearl", pirate.reload.ship.name
+
+    pirate.update!(ship_attributes: { id: pirate.ship.id, name: "Black Pea=
rl", _destroy: "1" })
+    assert_equal "Black Pearl", pirate.reload.ship.name
+  end
+
   def test_has_many_association_updating_a_single_record
     Man.accepts_nested_attributes_for(:interests)
     man =3D Man.create(name: 'John')
--=20
2.4.9 (Apple Git-60)


--9l24NVCWtSuIVIod
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="5-0-nested-attributes-reject-if-bypass.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 20dadd422bb074fd46e23aa0cc5f7abe64a93f58 Mon Sep 17 00:00:00 2001
From: Andrew White <andyw@pixeltrix.co.uk>
Date: Fri, 27 Nov 2015 13:46:46 +0000
Subject: [PATCH] Don't short-circuit reject_if proc

When updating an associated record via nested attribute hashes the
reject_if proc could be bypassed if the _destroy flag was set in the
attribute hash and allow_destroy was set to false.

The fix is to only short-circuit if the _destroy flag is set and the
option allow_destroy is set to true. It also fixes an issue where
a new record wasn't created if _destroy was set and the option
allow_destroy was set to false.

CVE-2015-7577
---
 activerecord/lib/active_record/nested_attributes.rb | 14 ++++++++++++--
 activerecord/test/cases/nested_attributes_test.rb   | 13 +++++++++++++
 2 files changed, 25 insertions(+), 2 deletions(-)

diff --git a/activerecord/lib/active_record/nested_attributes.rb b/activere=
cord/lib/active_record/nested_attributes.rb
index c5a1488..0d5a8e6 100644
--- a/activerecord/lib/active_record/nested_attributes.rb
+++ b/activerecord/lib/active_record/nested_attributes.rb
@@ -542,7 +542,7 @@ module ActiveRecord
     # has_destroy_flag? or if a <tt>:reject_if</tt> proc exists for this
     # association and evaluates to +true+.
     def reject_new_record?(association_name, attributes)
-      has_destroy_flag?(attributes) || call_reject_if(association_name, at=
tributes)
+      will_be_destroyed?(association_name, attributes) || call_reject_if(a=
ssociation_name, attributes)
     end
=20
     # Determines if a record with the particular +attributes+ should be
@@ -551,7 +551,8 @@ module ActiveRecord
     #
     # Returns false if there is a +destroy_flag+ on the attributes.
     def call_reject_if(association_name, attributes)
-      return false if has_destroy_flag?(attributes)
+      return false if will_be_destroyed?(association_name, attributes)
+
       case callback =3D self.nested_attributes_options[association_name][:=
reject_if]
       when Symbol
         method(callback).arity =3D=3D 0 ? send(callback) : send(callback, =
attributes)
@@ -560,6 +561,15 @@ module ActiveRecord
       end
     end
=20
+    # Only take into account the destroy flag if <tt>:allow_destroy</tt> i=
s true
+    def will_be_destroyed?(association_name, attributes)
+      allow_destroy?(association_name) && has_destroy_flag?(attributes)
+    end
+
+    def allow_destroy?(association_name)
+      self.nested_attributes_options[association_name][:allow_destroy]
+    end
+
     def raise_nested_attributes_record_not_found!(association_name, record=
_id)
       model =3D self.class._reflect_on_association(association_name).klass=
.name
       raise RecordNotFound.new("Couldn't find #{model} with ID=3D#{record_=
id} for #{self.class.name} with ID=3D#{id}",
diff --git a/activerecord/test/cases/nested_attributes_test.rb b/activereco=
rd/test/cases/nested_attributes_test.rb
index 0b700af..6fbc619 100644
--- a/activerecord/test/cases/nested_attributes_test.rb
+++ b/activerecord/test/cases/nested_attributes_test.rb
@@ -146,6 +146,19 @@ class TestNestedAttributesInGeneral < ActiveRecord::Te=
stCase
     assert man.reload.interests.empty?
   end
=20
+  def test_reject_if_is_not_short_circuited_if_allow_destroy_is_false
+    Pirate.accepts_nested_attributes_for :ship, reject_if: ->(a) { a[:name=
] =3D=3D "The Golden Hind" }, allow_destroy: false
+
+    pirate =3D Pirate.create!(catchphrase: "Stop wastin' me time", ship_at=
tributes: { name: "White Pearl", _destroy: "1" })
+    assert_equal "White Pearl", pirate.reload.ship.name
+
+    pirate.update!(ship_attributes: { id: pirate.ship.id, name: "The Golde=
n Hind", _destroy: "1" })
+    assert_equal "White Pearl", pirate.reload.ship.name
+
+    pirate.update!(ship_attributes: { id: pirate.ship.id, name: "Black Pea=
rl", _destroy: "1" })
+    assert_equal "Black Pearl", pirate.reload.ship.name
+  end
+
   def test_has_many_association_updating_a_single_record
     Man.accepts_nested_attributes_for(:interests)
     man =3D Man.create(name: 'John')
--=20
2.2.1


--9l24NVCWtSuIVIod--

--A9z/3b/E4MkkD+7G
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iQEcBAEBAgAGBQJWpnh0AAoJEJUxcLy0/6/G4WYIAIW7L0E/1c+YotmJndpOoQDR
BmPqyBJmEHKxOqR2tVija4dZJCt6CqWAP741u9zP5cky0DIPihe6UmeSEUTfZMtT
/+ZqS6x6He4+YgJvCb1UQkbT2QqQcqpPhgyfTRu2c+Br5xdp8k+zRYrDg6UsUtFl
xcpZ1ZVMXCGC39D7gHeEPbOaAWRtybUzX19rjbpIM/1/acv7j0quIG2OX3WwvnKA
p9MoukJvv4LMABv2bwvT9opbdJb308cD655HGcyRf/vRdgwkmHseQO7DIWeptxIS
cnRI/h/va/aoyIL+y+yoZJzM/ZmpE4Y+XtB/6fp4ZcHzbRzieNpHWOIQCch4wws=
=rCqn
-----END PGP SIGNATURE-----

--A9z/3b/E4MkkD+7G--
