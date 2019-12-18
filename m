X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["38161" "Wednesday" "18" "December" "2019" "10:16:02" "-0800" "Aaron Patterson" "aaron.patterson@gmail.com" nil "1215" nil nil nil nil "12" nil nil (number mark "U       aaron.patter Dec 18 1215/38161 " thread-indent "\"[oss-security] [CVE-2019-16782] Possible Information Leak / Session Hijack Vulnerability in Rack\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-16782] Possible Information Leak / Session Hijack Vulnerability in Rack" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9367 invoked by uid 550); 18 Dec 2019 18:17:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8099 invoked from network); 18 Dec 2019 18:16:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=2B6Srs7ehqQXmL+0DVGbVb92cfiuYeCijqF94aC8Xi4=;
        b=AHBGMy9w/QGzVmDqtZ4XuI6oNxWQF4eHAfF6QGSnW31o+x/zLo9SOSwrojc2YixzQU
         pEBJmjAMGYe9HufHBw85RUKG5s6FmPcA8n9kXJ/TW1iwUTqVFVeiqzfi6qNjznsva/Ec
         hxKHLyggFv86+azwg9ZacffA5SFdw4r22JtjMu2PeP49URhaczP/oYMSLlHRDJShbC2D
         TsKsuDil/9eJ825zQFoRR+qJA40E0WubecanoQCXwxB3zYl8T0r8qvUyg2k6rKSC2UjM
         U53LDRWsW/njb3MTjR8DOPDFfOHLN3NTXWtsP2Kit1w+BeEdS7nhTPkwiV/pE5o5Qs1n
         PrGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=2B6Srs7ehqQXmL+0DVGbVb92cfiuYeCijqF94aC8Xi4=;
        b=NQkrZj02FfBCbUPcVAsM2T780+R7WkSVIm2M+xSzu0FXZR81hwZPUJaG3Tz7fprmdL
         UBPcWY2fNN6CmBZKpa8pCKyHDyanWvX0R2r0rvQc9bE6rIiLOHrtE8156iX7A/0oUgkD
         IbI7ibZ5Vd8806cqsvJRZACKelMEbYkdg4wtQEWTld4OLmxQc65rDlWQQ9d16tc3ZBFE
         JpimuzcnuyfXgLoVg7rE3J5HlSavdQ4sSpeam4B3C6CTLS33Hw/w+ymAP8/vGP7OQNLu
         bVxCXziWk/1ffnI/x7cCXO9CYb+oEY0RtxskZUYbf7dkcVt8gd/3EwLbsWje/SpZFHhJ
         ECTg==
X-Gm-Message-State: APjAAAWiIHCo8LLJr26dk56oAqk24hnDs11auHbiuiLwiD7qb8InmDjE
	3iCMo5byYVZU0XvzSKR5p1U=
X-Google-Smtp-Source: APXvYqzrahKVjF9DfBQkxXdYQHgHGz/2NrUsrfKe5PlOePeSLjZD3cXSxvKy4+jcyDbQhQgfNuNpvQ==
X-Received: by 2002:a17:902:a50a:: with SMTP id s10mr4191694plq.49.1576692964801;
        Wed, 18 Dec 2019 10:16:04 -0800 (PST)
From: Aaron Patterson <aaron.patterson@gmail.com>
X-Google-Original-From: Aaron Patterson <tenderlove@ruby-lang.org>
Date: Wed, 18 Dec 2019 10:16:02 -0800
To: rubyonrails-security@googlegroups.com, oss-security@lists.openwall.com,
	ruby-security-ann@googlegroups.com
Message-ID: <20191218181602.GA62521@tc-lan-adapter.local>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="+g7M9IMkV8truYOl"
Content-Disposition: inline
User-Agent: Mutt/1.12.2 (2019-09-21)
Subject: [oss-security] [CVE-2019-16782] Possible Information Leak / Session Hijack
 Vulnerability in Rack

--+g7M9IMkV8truYOl
Content-Type: multipart/mixed; boundary="pf9I7BMVVzbSWLtt"
Content-Disposition: inline


--pf9I7BMVVzbSWLtt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

There is a possible information leak / session hijacking vulnerability
in Rack. This vulnerability has been assigned the CVE identifier
CVE-2019-16782.

Versions Affected:  All.
Not affected:       None.
Fixed Versions:     1.6.12, 2.0.8

There's a possible information leak / session hijack vulnerability in
Rack. Attackers may be able to find and hijack sessions by using timing
attacks targeting the session id. Session ids are usually stored and
indexed in a database that uses some kind of scheme for speeding up
lookups of that session id. By carefully measuring the amount of time it
takes to look up a session, an attacker may be able to find a valid
session id and hijack the session.

The session id itself may be generated randomly, but the way the session
is indexed by the backing store does not use a secure comparison.


Impact
------

The session id stored in a cookie is the same id that is used when
querying the backing session storage engine. Most storage mechanisms
(for example a database) use some sort of indexing in order to speed up
the lookup of that id. By carefully timing requests and session lookup
failures, an attacker may be able to perform a timing attack to
determine an existing session id and hijack that session.

Releases
--------

The 1.6.12 and 2.0.8 releases are available at the normal locations.

Workarounds
-----------

There are no known workarounds.

Patches
-------

To aid users who aren't able to upgrade immediately we have provided patche=
s for
the two supported release series. They are in git-am format and consist of a
single changeset.

1-6-session-timing-attack.patch - Patch for 1.6 series
2-0-session-timing-attack.patch - Patch for 2.6 series

Credits
-------

Thanks Will Leinweber for reporting this!

--=20
Aaron Patterson
http://tenderlovemaking.com/

--pf9I7BMVVzbSWLtt
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: attachment; filename="1-6-session-timing-attack.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 64aaf4cb54c4eadd410133d72810b0124e818ce2 Mon Sep 17 00:00:00 2001
From: Aaron Patterson <aaron.patterson@gmail.com>
Date: Wed, 18 Dec 2019 09:31:42 -0800
Subject: [PATCH] Squashed commit of the following:
MIME-Version: 1.0
Content-Type: text/plain; charset=3DUTF-8
Content-Transfer-Encoding: 8bit

commit d3e2f88c17dad2c7997e453d7ef518dd6e751ac8
Author: Aaron Patterson <aaron.patterson@gmail.com>
Date:   Tue Dec 17 12:17:34 2019 -0800

    making diff smaller

commit 99a8a8776513839b5da4af393b67afe95a9412d8
Author: Aaron Patterson <aaron.patterson@gmail.com>
Date:   Tue Dec 17 12:13:00 2019 -0800

    fix memcache tests on 1.6

commit f2cb48e50e507e638973f331d4a62099fae567ec
Author: Aaron Patterson <aaron.patterson@gmail.com>
Date:   Tue Dec 17 11:48:45 2019 -0800

    fix tests on 1.6

commit 7ff635c51d29f3e19377855f6010574fb2e8e593
Author: Rafael Mendon=E7a Fran=E7a <rafael@franca.dev>
Date:   Mon Oct 21 16:39:00 2019 -0400

    Introduce a new base class to avoid breaking when upgrading

    Third-party session store would still need to be chaged to be more
    secure but only upgrading rack will not break any application.

commit 3232f9370d099e784a16c01d32e8a2da4a953f18
Author: Rafael Mendon=E7a Fran=E7a <rafael@franca.dev>
Date:   Wed Oct 16 14:07:36 2019 -0400

    Add a version prefix to the private id to make easier to migrate old va=
lues

commit 15da2e5d95228d0b3fcdb38b2a562efc333402f0
Author: Rafael Mendon=E7a Fran=E7a <rafael@franca.dev>
Date:   Wed Oct 9 19:14:08 2019 -0400

    Fallback to the public id when reading the session in the pool adapter

commit 1a532d13eee9d5546349b5253a204187773de151
Author: Rafael Mendon=E7a Fran=E7a <rafael@franca.dev>
Date:   Wed Oct 9 18:06:23 2019 -0400

    Also drop the session with the public id when destroying sessions

commit 9fe40c68b514e0f4a947577e4b903a9ae477365e
Author: Rafael Mendon=E7a Fran=E7a <rafael@franca.dev>
Date:   Wed Oct 9 17:50:45 2019 -0400

    Fallback to the legacy id when the new id is not found

    This will avoid all session to be invalidated.

commit b9565a90eea77960e552e3c86b0adb83ab034726
Author: Aaron Patterson <aaron.patterson@gmail.com>
Date:   Tue Aug 13 17:16:23 2019 -0400

    Add the private id

commit 368effdbeca7955f4e46ea51bfb2d647bc79aa6b
Author: Aaron Patterson <aaron.patterson@gmail.com>
Date:   Tue Aug 13 16:48:41 2019 -0400

    revert conditionals to master

commit d49aa811d6c8fe109c7fc5ca9bddb3d9f7eba796
Author: Aaron Patterson <aaron.patterson@gmail.com>
Date:   Tue Aug 13 16:45:04 2019 -0400

    remove NullSession

commit 3e9cb660cc8bf9543b134b6f3ca35aadfe4e0611
Author: Aaron Patterson <aaron.patterson@gmail.com>
Date:   Tue Aug 13 16:38:01 2019 -0400

    remove || raise and get closer to master

commit 442dba2362558e4a7a3e39d437b95d81f2479b31
Author: Aaron Patterson <aaron.patterson@gmail.com>
Date:   Tue Aug 13 16:31:06 2019 -0400

    store hashed id, send public id

commit 3ab0277cd129f15059662451718048bcf23cb5d1
Author: Aaron Patterson <aaron.patterson@gmail.com>
Date:   Tue Aug 13 16:20:32 2019 -0400

    use session id objects

commit 7237b6661ad98c1dac6ad799192262697e1a3559
Author: Aaron Patterson <aaron.patterson@gmail.com>
Date:   Tue Aug 13 15:43:58 2019 -0400

    remove more nils

commit 511f809e80c3264af3a26d485a5137ac28f08ebe
Author: Aaron Patterson <aaron.patterson@gmail.com>
Date:   Tue Aug 13 15:32:20 2019 -0400

    try to ensure we always have some kind of object
---
 lib/rack/session/abstract/id.rb  | 82 ++++++++++++++++++++++++++++++--
 lib/rack/session/cookie.rb       | 13 ++++-
 lib/rack/session/memcache.rb     | 18 ++++---
 lib/rack/session/pool.rb         | 19 +++++---
 test/spec_session_abstract_id.rb |  2 +-
 test/spec_session_memcache.rb    | 43 +++++++++++++++--
 test/spec_session_pool.rb        | 43 +++++++++++++++--
 7 files changed, 196 insertions(+), 24 deletions(-)

diff --git a/lib/rack/session/abstract/id.rb b/lib/rack/session/abstract/id=
.rb
index 62bdb04..c13faf5 100644
--- a/lib/rack/session/abstract/id.rb
+++ b/lib/rack/session/abstract/id.rb
@@ -9,11 +9,38 @@ begin
 rescue LoadError
   # We just won't get securerandom
 end
+require "digest/sha2"
=20
 module Rack
=20
   module Session
=20
+    class SessionId
+      ID_VERSION =3D 2
+
+      attr_reader :public_id
+
+      def initialize(public_id)
+        @public_id =3D public_id
+      end
+
+      def private_id
+        "#{ID_VERSION}::#{hash_sid(public_id)}"
+      end
+
+      alias :cookie_value :public_id
+
+      def empty?; false; end
+      def to_s; raise; end
+      def inspect; public_id.inspect; end
+
+      private
+
+      def hash_sid(sid)
+        Digest::SHA256.hexdigest(sid)
+      end
+    end
+
     module Abstract
       ENV_SESSION_KEY =3D 'rack.session'.freeze
       ENV_SESSION_OPTIONS_KEY =3D 'rack.session.options'.freeze
@@ -191,7 +218,7 @@ module Rack
       # Not included by default; you must require 'rack/session/abstract/i=
d'
       # to use.
=20
-      class ID
+      class Persisted
         DEFAULT_OPTIONS =3D {
           :key =3D>           'rack.session',
           :path =3D>          '/',
@@ -342,10 +369,10 @@ module Rack
           if not data =3D set_session(env, session_id, session_data, optio=
ns)
             env["rack.errors"].puts("Warning! #{self.class.name} failed to=
 save session. Content dropped.")
           elsif options[:defer] and not options[:renew]
-            env["rack.errors"].puts("Deferring cookie for #{session_id}") =
if $VERBOSE
+            env["rack.errors"].puts("Deferring cookie for #{session_id.pub=
lic_id}") if $VERBOSE
           else
             cookie =3D Hash.new
-            cookie[:value] =3D data
+            cookie[:value] =3D cookie_value(data)
             cookie[:expires] =3D Time.now + options[:expire_after] if opti=
ons[:expire_after]
             cookie[:expires] =3D Time.now + options[:max_age] if options[:=
max_age]
             set_cookie(env, headers, cookie.merge!(options))
@@ -354,6 +381,10 @@ module Rack
           [status, headers, body]
         end
=20
+        def cookie_value(data)
+          data
+        end
+
         # Sets the cookie back to the client with session id. We skip the =
cookie
         # setting if the value didn't change (sid is the same) or expires =
was given.
=20
@@ -394,6 +425,51 @@ module Rack
           raise '#destroy_session not implemented'
         end
       end
+
+      class PersistedSecure < Persisted
+        class SecureSessionHash < SessionHash
+          def [](key)
+            if key =3D=3D "session_id"
+              load_for_read!
+              id.public_id
+            else
+              super
+            end
+          end
+        end
+
+        def generate_sid(*)
+          public_id =3D super
+
+          SessionId.new(public_id)
+        end
+
+        def extract_session_id(*)
+          public_id =3D super
+          public_id && SessionId.new(public_id)
+        end
+
+        private
+
+        def session_class
+          SecureSessionHash
+        end
+
+        def cookie_value(data)
+          data.cookie_value
+        end
+      end
+
+      class ID < Persisted
+        def self.inherited(klass)
+          k =3D klass.ancestors.find { |kl| kl.respond_to?(:superclass) &&=
 kl.superclass =3D=3D ID }
+          unless k.instance_variable_defined?(:"@_rack_warned")
+            warn "#{klass} is inheriting from #{ID}.  Inheriting from #{ID=
} is deprecated, please inherit from #{Persisted} instead" if $VERBOSE
+            k.instance_variable_set(:"@_rack_warned", true)
+          end
+          super
+        end
+      end
     end
   end
 end
diff --git a/lib/rack/session/cookie.rb b/lib/rack/session/cookie.rb
index 9bea586..9ca9df2 100644
--- a/lib/rack/session/cookie.rb
+++ b/lib/rack/session/cookie.rb
@@ -44,7 +44,7 @@ module Rack
     #   })
     #
=20
-    class Cookie < Abstract::ID
+    class Cookie < Abstract::PersistedSecure
       # Encode session cookies as Base64
       class Base64
         def encode(str)
@@ -151,6 +151,15 @@ module Rack
         data
       end
=20
+      class SessionId < DelegateClass(Session::SessionId)
+        attr_reader :cookie_value
+
+        def initialize(session_id, cookie_value)
+          super(session_id)
+          @cookie_value =3D cookie_value
+        end
+      end
+
       def set_session(env, session_id, session, options)
         session =3D session.merge("session_id" =3D> session_id)
         session_data =3D coder.encode(session)
@@ -163,7 +172,7 @@ module Rack
           env["rack.errors"].puts("Warning! Rack::Session::Cookie data siz=
e exceeds 4K.")
           nil
         else
-          session_data
+          SessionId.new(session_id, session_data)
         end
       end
=20
diff --git a/lib/rack/session/memcache.rb b/lib/rack/session/memcache.rb
index c0e1f3e..1c6f256 100644
--- a/lib/rack/session/memcache.rb
+++ b/lib/rack/session/memcache.rb
@@ -19,7 +19,7 @@ module Rack
     # Note that memcache does drop data before it may be listed to expire.=
 For
     # a full description of behaviour, please see memcache's documentation.
=20
-    class Memcache < Abstract::ID
+    class Memcache < Abstract::PersistedSecure
       attr_reader :mutex, :pool
=20
       DEFAULT_OPTIONS =3D Abstract::ID::DEFAULT_OPTIONS.merge \
@@ -42,15 +42,15 @@ module Rack
       def generate_sid
         loop do
           sid =3D super
-          break sid unless @pool.get(sid, true)
+          break sid unless @pool.get(sid.private_id, true)
         end
       end
=20
       def get_session(env, sid)
         with_lock(env) do
-          unless sid and session =3D @pool.get(sid)
+          unless sid and session =3D get_session_with_fallback(sid)
             sid, session =3D generate_sid, {}
-            unless /^STORED/ =3D~ @pool.add(sid, session)
+            unless /^STORED/ =3D~ @pool.add(sid.private_id, session)
               raise "Session collision on '#{sid.inspect}'"
             end
           end
@@ -63,14 +63,15 @@ module Rack
         expiry =3D expiry.nil? ? 0 : expiry + 1
=20
         with_lock(env) do
-          @pool.set session_id, new_session, expiry
+          @pool.set session_id.private_id, new_session, expiry
           session_id
         end
       end
=20
       def destroy_session(env, session_id, options)
         with_lock(env) do
-          @pool.delete(session_id)
+          @pool.delete(session_id.public_id)
+          @pool.delete(session_id.private_id)
           generate_sid unless options[:drop]
         end
       end
@@ -88,6 +89,11 @@ module Rack
         @mutex.unlock if @mutex.locked?
       end
=20
+      private
+
+      def get_session_with_fallback(sid)
+        @pool.get(sid.private_id) || @pool.get(sid.public_id)
+      end
     end
   end
 end
diff --git a/lib/rack/session/pool.rb b/lib/rack/session/pool.rb
index fcb34ec..e4afaaf 100644
--- a/lib/rack/session/pool.rb
+++ b/lib/rack/session/pool.rb
@@ -24,7 +24,7 @@ module Rack
     #   )
     #   Rack::Handler::WEBrick.run sessioned
=20
-    class Pool < Abstract::ID
+    class Pool < Abstract::PersistedSecure
       attr_reader :mutex, :pool
       DEFAULT_OPTIONS =3D Abstract::ID::DEFAULT_OPTIONS.merge :drop =3D> f=
alse
=20
@@ -37,15 +37,15 @@ module Rack
       def generate_sid
         loop do
           sid =3D super
-          break sid unless @pool.key? sid
+          break sid unless @pool.key? sid.private_id
         end
       end
=20
       def get_session(env, sid)
         with_lock(env) do
-          unless sid and session =3D @pool[sid]
+          unless sid and session =3D get_session_with_fallback(sid)
             sid, session =3D generate_sid, {}
-            @pool.store sid, session
+            @pool.store sid.private_id, session
           end
           [sid, session]
         end
@@ -53,14 +53,15 @@ module Rack
=20
       def set_session(env, session_id, new_session, options)
         with_lock(env) do
-          @pool.store session_id, new_session
+          @pool.store session_id.private_id, new_session
           session_id
         end
       end
=20
       def destroy_session(env, session_id, options)
         with_lock(env) do
-          @pool.delete(session_id)
+          @pool.delete(session_id.public_id)
+          @pool.delete(session_id.private_id)
           generate_sid unless options[:drop]
         end
       end
@@ -71,6 +72,12 @@ module Rack
       ensure
         @mutex.unlock if @mutex.locked?
       end
+
+      private
+
+      def get_session_with_fallback(sid)
+        @pool[sid.private_id] || @pool[sid.public_id]
+      end
     end
   end
 end
diff --git a/test/spec_session_abstract_id.rb b/test/spec_session_abstract_=
id.rb
index 911f43b..99327a1 100644
--- a/test/spec_session_abstract_id.rb
+++ b/test/spec_session_abstract_id.rb
@@ -47,7 +47,7 @@ describe Rack::Session::Abstract::ID do
       end
     end
     id =3D Rack::Session::Abstract::ID.new nil, :secure_random =3D> secure=
_random.new
-    id.send(:generate_sid).should.eql 'fake_hex'
+    id.send(:generate_sid).should.equal 'fake_hex'
   end
=20
 end
diff --git a/test/spec_session_memcache.rb b/test/spec_session_memcache.rb
index 2b75980..5f50079 100644
--- a/test/spec_session_memcache.rb
+++ b/test/spec_session_memcache.rb
@@ -225,15 +225,52 @@ begin
       req =3D Rack::MockRequest.new(pool)
=20
       res0 =3D req.get("/")
-      session_id =3D (cookie =3D res0["Set-Cookie"])[session_match, 1]
-      ses0 =3D pool.pool.get(session_id, true)
+      session_id =3D Rack::Session::SessionId.new (cookie =3D res0["Set-Co=
okie"])[session_match, 1]
+      ses0 =3D pool.pool.get(session_id.private_id, true)
=20
       req.get("/", "HTTP_COOKIE" =3D> cookie)
-      ses1 =3D pool.pool.get(session_id, true)
+      ses1 =3D pool.pool.get(session_id.private_id, true)
=20
       ses1.should.not.equal ses0
     end
=20
+    it "can read the session with the legacy id" do
+      pool =3D Rack::Session::Memcache.new(incrementor)
+      req =3D Rack::MockRequest.new(pool)
+
+      res0 =3D req.get("/")
+      cookie =3D res0["Set-Cookie"]
+      session_id =3D Rack::Session::SessionId.new cookie[session_match, 1]
+      ses0 =3D pool.pool.get(session_id.private_id, true)
+      pool.pool.set(session_id.public_id, ses0, 0, true)
+      pool.pool.delete(session_id.private_id)
+
+      res1 =3D req.get("/", "HTTP_COOKIE" =3D> cookie)
+      res1["Set-Cookie"].should.be.nil
+      res1.body.should.equal '{"counter"=3D>2}'
+      pool.pool.get(session_id.private_id, true).should.not.be.nil
+    end
+
+    it "drops the session in the legacy id as well" do
+      pool =3D Rack::Session::Memcache.new(incrementor)
+      req =3D Rack::MockRequest.new(pool)
+      drop =3D Rack::Utils::Context.new(pool, drop_session)
+      dreq =3D Rack::MockRequest.new(drop)
+
+      res0 =3D req.get("/")
+      cookie =3D res0["Set-Cookie"]
+      session_id =3D Rack::Session::SessionId.new cookie[session_match, 1]
+      ses0 =3D pool.pool.get(session_id.private_id, true)
+      pool.pool.set(session_id.public_id, ses0, 0, true)
+      pool.pool.delete(session_id.private_id)
+
+      res2 =3D dreq.get("/", "HTTP_COOKIE" =3D> cookie)
+      res2["Set-Cookie"].should.be.nil
+      res2.body.should.equal '{"counter"=3D>2}'
+      pool.pool.get(session_id.private_id, true).should.be.nil
+      pool.pool.get(session_id.public_id, true).should.be.nil
+    end
+
     # anyone know how to do this better?
     it "cleanly merges sessions when multithreaded" do
       unless $DEBUG
diff --git a/test/spec_session_pool.rb b/test/spec_session_pool.rb
index 984f55a..ec9239e 100644
--- a/test/spec_session_pool.rb
+++ b/test/spec_session_pool.rb
@@ -5,7 +5,7 @@ require 'rack/session/pool'
=20
 describe Rack::Session::Pool do
   session_key =3D Rack::Session::Pool::DEFAULT_OPTIONS[:key]
-  session_match =3D /#{session_key}=3D[0-9a-fA-F]+;/
+  session_match =3D /#{session_key}=3D([0-9a-fA-F]+);/
=20
   incrementor =3D lambda do |env|
     env["rack.session"]["counter"] ||=3D 0
@@ -13,7 +13,7 @@ describe Rack::Session::Pool do
     Rack::Response.new(env["rack.session"].inspect).to_a
   end
=20
-  session_id =3D Rack::Lint.new(lambda do |env|
+  get_session_id =3D Rack::Lint.new(lambda do |env|
     Rack::Response.new(env["rack.session"].inspect).to_a
   end)
=20
@@ -142,6 +142,43 @@ describe Rack::Session::Pool do
     pool.pool.size.should.equal 1
   end
=20
+  it "can read the session with the legacy id" do
+    pool =3D Rack::Session::Pool.new(incrementor)
+    req =3D Rack::MockRequest.new(pool)
+
+    res0 =3D req.get("/")
+    cookie =3D res0["Set-Cookie"]
+    session_id =3D Rack::Session::SessionId.new cookie[session_match, 1]
+    ses0 =3D pool.pool[session_id.private_id]
+    pool.pool[session_id.public_id] =3D ses0
+    pool.pool.delete(session_id.private_id)
+
+    res1 =3D req.get("/", "HTTP_COOKIE" =3D> cookie)
+    res1["Set-Cookie"].should.be.nil
+    res1.body.should.equal '{"counter"=3D>2}'
+    pool.pool[session_id.private_id].should.not.be.nil
+  end
+
+  it "drops the session in the legacy id as well" do
+    pool =3D Rack::Session::Pool.new(incrementor)
+    req =3D Rack::MockRequest.new(pool)
+    drop =3D Rack::Utils::Context.new(pool, drop_session)
+    dreq =3D Rack::MockRequest.new(drop)
+
+    res0 =3D req.get("/")
+    cookie =3D res0["Set-Cookie"]
+    session_id =3D Rack::Session::SessionId.new cookie[session_match, 1]
+    ses0 =3D pool.pool[session_id.private_id]
+    pool.pool[session_id.public_id] =3D ses0
+    pool.pool.delete(session_id.private_id)
+
+    res2 =3D dreq.get("/", "HTTP_COOKIE" =3D> cookie)
+    res2["Set-Cookie"].should.be.nil
+    res2.body.should.equal '{"counter"=3D>2}'
+    pool.pool[session_id.private_id].should.be.nil
+    pool.pool[session_id.public_id].should.be.nil
+  end
+
   # anyone know how to do this better?
   it "should merge sessions when multithreaded" do
     unless $DEBUG
@@ -190,7 +227,7 @@ describe Rack::Session::Pool do
   end
=20
   it "does not return a cookie if cookie was not written (only read)" do
-    app =3D Rack::Session::Pool.new(session_id)
+    app =3D Rack::Session::Pool.new(get_session_id)
     res =3D Rack::MockRequest.new(app).get("/")
     res["Set-Cookie"].should.be.nil
   end
--=20
2.21.0


--pf9I7BMVVzbSWLtt
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: attachment; filename="2-0-session-timing-attack.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 956edc393225ee53d6027bce11ea1441cb186925 Mon Sep 17 00:00:00 2001
From: Aaron Patterson <aaron.patterson@gmail.com>
Date: Wed, 18 Dec 2019 09:22:19 -0800
Subject: [PATCH] Squashed commit of the following:
MIME-Version: 1.0
Content-Type: text/plain; charset=3DUTF-8
Content-Transfer-Encoding: 8bit

commit f1a79b208c4ea877420beee62646e0b146402bd0
Author: Rafael Mendon=E7a Fran=E7a <rafael@franca.dev>
Date:   Mon Oct 21 16:39:00 2019 -0400

    Introduce a new base class to avoid breaking when upgrading

    Third-party session store would still need to be chaged to be more
    secure but only upgrading rack will not break any application.

commit 5b1cab667270d7ad1a4d2088adf5ff4eb9845496
Author: Rafael Mendon=E7a Fran=E7a <rafael@franca.dev>
Date:   Wed Oct 16 14:07:36 2019 -0400

    Add a version prefix to the private id to make easier to migrate old va=
lues

commit 1e96e0f197777458216bb3dfdbcce57a0bbba0c5
Author: Rafael Mendon=E7a Fran=E7a <rafael@franca.dev>
Date:   Wed Oct 9 19:14:08 2019 -0400

    Fallback to the public id when reading the session in the pool adapter

commit 3ba123d278f1085ba78fc000df954e507af2d622
Author: Rafael Mendon=E7a Fran=E7a <rafael@franca.dev>
Date:   Wed Oct 9 18:06:23 2019 -0400

    Also drop the session with the public id when destroying sessions

commit 6a04bbf6b742c305d3a56f9bd6242e6c943cc2ad
Author: Rafael Mendon=E7a Fran=E7a <rafael@franca.dev>
Date:   Wed Oct 9 17:50:45 2019 -0400

    Fallback to the legacy id when the new id is not found

    This will avoid all session to be invalidated.

commit dc45a06b339c707c1f658c123ec7216151878f7a
Author: Aaron Patterson <aaron.patterson@gmail.com>
Date:   Tue Aug 13 17:16:23 2019 -0400

    Add the private id

commit 73a5f79f6854eed81ecc3e5fb9f8154e967ccc49
Author: Aaron Patterson <aaron.patterson@gmail.com>
Date:   Tue Aug 13 16:48:41 2019 -0400

    revert conditionals to master

commit 4e322629e0c6698c75a3fb541a42571f8543c34c
Author: Aaron Patterson <aaron.patterson@gmail.com>
Date:   Tue Aug 13 16:45:04 2019 -0400

    remove NullSession

commit 1c7e3b259f0741c869dcfbabeb3e0670c4d3f848
Author: Aaron Patterson <aaron.patterson@gmail.com>
Date:   Tue Aug 13 16:38:01 2019 -0400

    remove || raise and get closer to master

commit 2b205ed5a047d9e50a13bb7a411bc48745b515ec
Author: Aaron Patterson <aaron.patterson@gmail.com>
Date:   Tue Aug 13 16:31:06 2019 -0400

    store hashed id, send public id

commit bb3d486644755b2e0c7824b3910db1a83c98fcd2
Author: Aaron Patterson <aaron.patterson@gmail.com>
Date:   Tue Aug 13 16:20:32 2019 -0400

    use session id objects

commit 77f3aab73089abe518f62c46268b104bacd7114b
Author: Aaron Patterson <aaron.patterson@gmail.com>
Date:   Tue Aug 13 15:43:58 2019 -0400

    remove more nils

commit 83d4bd12c7e88455d21230bc24ec3a543654e2aa
Author: Aaron Patterson <aaron.patterson@gmail.com>
Date:   Tue Aug 13 15:32:20 2019 -0400

    try to ensure we always have some kind of object
---
 lib/rack/session/abstract/id.rb | 67 ++++++++++++++++++++++++++++++++-
 lib/rack/session/cookie.rb      | 13 ++++++-
 lib/rack/session/memcache.rb    | 34 ++++++++++-------
 lib/rack/session/pool.rb        | 19 +++++++---
 test/spec_session_memcache.rb   | 43 +++++++++++++++++++--
 test/spec_session_pool.rb       | 43 +++++++++++++++++++--
 6 files changed, 190 insertions(+), 29 deletions(-)

diff --git a/lib/rack/session/abstract/id.rb b/lib/rack/session/abstract/id=
.rb
index 1bb8d5d..9d63ca2 100644
--- a/lib/rack/session/abstract/id.rb
+++ b/lib/rack/session/abstract/id.rb
@@ -6,11 +6,38 @@ require 'time'
 require 'rack/request'
 require 'rack/response'
 require 'securerandom'
+require 'digest/sha2'
=20
 module Rack
=20
   module Session
=20
+    class SessionId
+      ID_VERSION =3D 2
+
+      attr_reader :public_id
+
+      def initialize(public_id)
+        @public_id =3D public_id
+      end
+
+      def private_id
+        "#{ID_VERSION}::#{hash_sid(public_id)}"
+      end
+
+      alias :cookie_value :public_id
+
+      def empty?; false; end
+      def to_s; raise; end
+      def inspect; public_id.inspect; end
+
+      private
+
+      def hash_sid(sid)
+        Digest::SHA256.hexdigest(sid)
+      end
+    end
+
     module Abstract
       # SessionHash is responsible to lazily load the session from store.
=20
@@ -357,7 +384,7 @@ module Rack
             req.get_header(RACK_ERRORS).puts("Deferring cookie for #{sessi=
on_id}") if $VERBOSE
           else
             cookie =3D Hash.new
-            cookie[:value] =3D data
+            cookie[:value] =3D cookie_value(data)
             cookie[:expires] =3D Time.now + options[:expire_after] if opti=
ons[:expire_after]
             cookie[:expires] =3D Time.now + options[:max_age] if options[:=
max_age]
             set_cookie(req, res, cookie.merge!(options))
@@ -365,6 +392,10 @@ module Rack
         end
         public :commit_session
=20
+        def cookie_value(data)
+          data
+        end
+
         # Sets the cookie back to the client with session id. We skip the =
cookie
         # setting if the value didn't change (sid is the same) or expires =
was given.
=20
@@ -406,6 +437,40 @@ module Rack
         end
       end
=20
+      class PersistedSecure < Persisted
+        class SecureSessionHash < SessionHash
+          def [](key)
+            if key =3D=3D "session_id"
+              load_for_read!
+              id.public_id
+            else
+              super
+            end
+          end
+        end
+
+        def generate_sid(*)
+          public_id =3D super
+
+          SessionId.new(public_id)
+        end
+
+        def extract_session_id(*)
+          public_id =3D super
+          public_id && SessionId.new(public_id)
+        end
+
+        private
+
+        def session_class
+          SecureSessionHash
+        end
+
+        def cookie_value(data)
+          data.cookie_value
+        end
+      end
+
       class ID < Persisted
         def self.inherited(klass)
           k =3D klass.ancestors.find { |kl| kl.respond_to?(:superclass) &&=
 kl.superclass =3D=3D ID }
diff --git a/lib/rack/session/cookie.rb b/lib/rack/session/cookie.rb
index 71bb96f..90ed5cf 100644
--- a/lib/rack/session/cookie.rb
+++ b/lib/rack/session/cookie.rb
@@ -45,7 +45,7 @@ module Rack
     #   })
     #
=20
-    class Cookie < Abstract::Persisted
+    class Cookie < Abstract::PersistedSecure
       # Encode session cookies as Base64
       class Base64
         def encode(str)
@@ -153,6 +153,15 @@ module Rack
         data
       end
=20
+      class SessionId < DelegateClass(Session::SessionId)
+        attr_reader :cookie_value
+
+        def initialize(session_id, cookie_value)
+          super(session_id)
+          @cookie_value =3D cookie_value
+        end
+      end
+
       def write_session(req, session_id, session, options)
         session =3D session.merge("session_id" =3D> session_id)
         session_data =3D coder.encode(session)
@@ -165,7 +174,7 @@ module Rack
           req.get_header(RACK_ERRORS).puts("Warning! Rack::Session::Cookie=
 data size exceeds 4K.")
           nil
         else
-          session_data
+          SessionId.new(session_id, session_data)
         end
       end
=20
diff --git a/lib/rack/session/memcache.rb b/lib/rack/session/memcache.rb
index 4cf5ea0..1f9d3ec 100644
--- a/lib/rack/session/memcache.rb
+++ b/lib/rack/session/memcache.rb
@@ -19,7 +19,7 @@ module Rack
     # Note that memcache does drop data before it may be listed to expire.=
 For
     # a full description of behaviour, please see memcache's documentation.
=20
-    class Memcache < Abstract::ID
+    class Memcache < Abstract::PersistedSecure
       attr_reader :mutex, :pool
=20
       DEFAULT_OPTIONS =3D Abstract::ID::DEFAULT_OPTIONS.merge \
@@ -42,15 +42,15 @@ module Rack
       def generate_sid
         loop do
           sid =3D super
-          break sid unless @pool.get(sid, true)
+          break sid unless @pool.get(sid.private_id, true)
         end
       end
=20
-      def get_session(env, sid)
-        with_lock(env) do
-          unless sid and session =3D @pool.get(sid)
+      def find_session(req, sid)
+        with_lock(req) do
+          unless sid and session =3D get_session_with_fallback(sid)
             sid, session =3D generate_sid, {}
-            unless /^STORED/ =3D~ @pool.add(sid, session)
+            unless /^STORED/ =3D~ @pool.add(sid.private_id, session)
               raise "Session collision on '#{sid.inspect}'"
             end
           end
@@ -58,25 +58,26 @@ module Rack
         end
       end
=20
-      def set_session(env, session_id, new_session, options)
+      def write_session(req, session_id, new_session, options)
         expiry =3D options[:expire_after]
         expiry =3D expiry.nil? ? 0 : expiry + 1
=20
-        with_lock(env) do
-          @pool.set session_id, new_session, expiry
+        with_lock(req) do
+          @pool.set session_id.private_id, new_session, expiry
           session_id
         end
       end
=20
-      def destroy_session(env, session_id, options)
-        with_lock(env) do
-          @pool.delete(session_id)
+      def delete_session(req, session_id, options)
+        with_lock(req) do
+          @pool.delete(session_id.public_id)
+          @pool.delete(session_id.private_id)
           generate_sid unless options[:drop]
         end
       end
=20
-      def with_lock(env)
-        @mutex.lock if env[RACK_MULTITHREAD]
+      def with_lock(req)
+        @mutex.lock if req.multithread?
         yield
       rescue MemCache::MemCacheError, Errno::ECONNREFUSED
         if $VERBOSE
@@ -88,6 +89,11 @@ module Rack
         @mutex.unlock if @mutex.locked?
       end
=20
+      private
+
+      def get_session_with_fallback(sid)
+        @pool.get(sid.private_id) || @pool.get(sid.public_id)
+      end
     end
   end
 end
diff --git a/lib/rack/session/pool.rb b/lib/rack/session/pool.rb
index 4c9c25c..6c0f668 100644
--- a/lib/rack/session/pool.rb
+++ b/lib/rack/session/pool.rb
@@ -24,7 +24,7 @@ module Rack
     #   )
     #   Rack::Handler::WEBrick.run sessioned
=20
-    class Pool < Abstract::Persisted
+    class Pool < Abstract::PersistedSecure
       attr_reader :mutex, :pool
       DEFAULT_OPTIONS =3D Abstract::ID::DEFAULT_OPTIONS.merge :drop =3D> f=
alse
=20
@@ -37,15 +37,15 @@ module Rack
       def generate_sid
         loop do
           sid =3D super
-          break sid unless @pool.key? sid
+          break sid unless @pool.key? sid.private_id
         end
       end
=20
       def find_session(req, sid)
         with_lock(req) do
-          unless sid and session =3D @pool[sid]
+          unless sid and session =3D get_session_with_fallback(sid)
             sid, session =3D generate_sid, {}
-            @pool.store sid, session
+            @pool.store sid.private_id, session
           end
           [sid, session]
         end
@@ -53,14 +53,15 @@ module Rack
=20
       def write_session(req, session_id, new_session, options)
         with_lock(req) do
-          @pool.store session_id, new_session
+          @pool.store session_id.private_id, new_session
           session_id
         end
       end
=20
       def delete_session(req, session_id, options)
         with_lock(req) do
-          @pool.delete(session_id)
+          @pool.delete(session_id.public_id)
+          @pool.delete(session_id.private_id)
           generate_sid unless options[:drop]
         end
       end
@@ -71,6 +72,12 @@ module Rack
       ensure
         @mutex.unlock if @mutex.locked?
       end
+
+      private
+
+      def get_session_with_fallback(sid)
+        @pool[sid.private_id] || @pool[sid.public_id]
+      end
     end
   end
 end
diff --git a/test/spec_session_memcache.rb b/test/spec_session_memcache.rb
index 93a03d1..824db68 100644
--- a/test/spec_session_memcache.rb
+++ b/test/spec_session_memcache.rb
@@ -226,15 +226,52 @@ begin
       req =3D Rack::MockRequest.new(pool)
=20
       res0 =3D req.get("/")
-      session_id =3D (cookie =3D res0["Set-Cookie"])[session_match, 1]
-      ses0 =3D pool.pool.get(session_id, true)
+      session_id =3D Rack::Session::SessionId.new (cookie =3D res0["Set-Co=
okie"])[session_match, 1]
+      ses0 =3D pool.pool.get(session_id.private_id, true)
=20
       req.get("/", "HTTP_COOKIE" =3D> cookie)
-      ses1 =3D pool.pool.get(session_id, true)
+      ses1 =3D pool.pool.get(session_id.private_id, true)
=20
       ses1.wont_equal ses0
     end
=20
+    it "can read the session with the legacy id" do
+      pool =3D Rack::Session::Memcache.new(incrementor)
+      req =3D Rack::MockRequest.new(pool)
+
+      res0 =3D req.get("/")
+      cookie =3D res0["Set-Cookie"]
+      session_id =3D Rack::Session::SessionId.new cookie[session_match, 1]
+      ses0 =3D pool.pool.get(session_id.private_id, true)
+      pool.pool.set(session_id.public_id, ses0, 0, true)
+      pool.pool.delete(session_id.private_id)
+
+      res1 =3D req.get("/", "HTTP_COOKIE" =3D> cookie)
+      res1["Set-Cookie"].must_be_nil
+      res1.body.must_equal '{"counter"=3D>2}'
+      pool.pool.get(session_id.private_id, true).wont_be_nil
+    end
+
+    it "drops the session in the legacy id as well" do
+      pool =3D Rack::Session::Memcache.new(incrementor)
+      req =3D Rack::MockRequest.new(pool)
+      drop =3D Rack::Utils::Context.new(pool, drop_session)
+      dreq =3D Rack::MockRequest.new(drop)
+
+      res0 =3D req.get("/")
+      cookie =3D res0["Set-Cookie"]
+      session_id =3D Rack::Session::SessionId.new cookie[session_match, 1]
+      ses0 =3D pool.pool.get(session_id.private_id, true)
+      pool.pool.set(session_id.public_id, ses0, 0, true)
+      pool.pool.delete(session_id.private_id)
+
+      res2 =3D dreq.get("/", "HTTP_COOKIE" =3D> cookie)
+      res2["Set-Cookie"].must_be_nil
+      res2.body.must_equal '{"counter"=3D>2}'
+      pool.pool.get(session_id.private_id, true).must_be_nil
+      pool.pool.get(session_id.public_id, true).must_be_nil
+    end
+
     # anyone know how to do this better?
     it "cleanly merges sessions when multithreaded" do
       skip unless $DEBUG
diff --git a/test/spec_session_pool.rb b/test/spec_session_pool.rb
index 2d06169..62a0505 100644
--- a/test/spec_session_pool.rb
+++ b/test/spec_session_pool.rb
@@ -6,7 +6,7 @@ require 'rack/session/pool'
=20
 describe Rack::Session::Pool do
   session_key =3D Rack::Session::Pool::DEFAULT_OPTIONS[:key]
-  session_match =3D /#{session_key}=3D[0-9a-fA-F]+;/
+  session_match =3D /#{session_key}=3D([0-9a-fA-F]+);/
=20
   incrementor =3D lambda do |env|
     env["rack.session"]["counter"] ||=3D 0
@@ -14,7 +14,7 @@ describe Rack::Session::Pool do
     Rack::Response.new(env["rack.session"].inspect).to_a
   end
=20
-  session_id =3D Rack::Lint.new(lambda do |env|
+  get_session_id =3D Rack::Lint.new(lambda do |env|
     Rack::Response.new(env["rack.session"].inspect).to_a
   end)
=20
@@ -143,6 +143,43 @@ describe Rack::Session::Pool do
     pool.pool.size.must_equal 1
   end
=20
+  it "can read the session with the legacy id" do
+    pool =3D Rack::Session::Pool.new(incrementor)
+    req =3D Rack::MockRequest.new(pool)
+
+    res0 =3D req.get("/")
+    cookie =3D res0["Set-Cookie"]
+    session_id =3D Rack::Session::SessionId.new cookie[session_match, 1]
+    ses0 =3D pool.pool[session_id.private_id]
+    pool.pool[session_id.public_id] =3D ses0
+    pool.pool.delete(session_id.private_id)
+
+    res1 =3D req.get("/", "HTTP_COOKIE" =3D> cookie)
+    res1["Set-Cookie"].must_be_nil
+    res1.body.must_equal '{"counter"=3D>2}'
+    pool.pool[session_id.private_id].wont_be_nil
+  end
+
+  it "drops the session in the legacy id as well" do
+    pool =3D Rack::Session::Pool.new(incrementor)
+    req =3D Rack::MockRequest.new(pool)
+    drop =3D Rack::Utils::Context.new(pool, drop_session)
+    dreq =3D Rack::MockRequest.new(drop)
+
+    res0 =3D req.get("/")
+    cookie =3D res0["Set-Cookie"]
+    session_id =3D Rack::Session::SessionId.new cookie[session_match, 1]
+    ses0 =3D pool.pool[session_id.private_id]
+    pool.pool[session_id.public_id] =3D ses0
+    pool.pool.delete(session_id.private_id)
+
+    res2 =3D dreq.get("/", "HTTP_COOKIE" =3D> cookie)
+    res2["Set-Cookie"].must_be_nil
+    res2.body.must_equal '{"counter"=3D>2}'
+    pool.pool[session_id.private_id].must_be_nil
+    pool.pool[session_id.public_id].must_be_nil
+  end
+
   # anyone know how to do this better?
   it "should merge sessions when multithreaded" do
     unless $DEBUG
@@ -191,7 +228,7 @@ describe Rack::Session::Pool do
   end
=20
   it "does not return a cookie if cookie was not written (only read)" do
-    app =3D Rack::Session::Pool.new(session_id)
+    app =3D Rack::Session::Pool.new(get_session_id)
     res =3D Rack::MockRequest.new(app).get("/")
     res["Set-Cookie"].must_be_nil
   end
--=20
2.21.0


--pf9I7BMVVzbSWLtt--

--+g7M9IMkV8truYOl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEETOkbdaeYKOhrGqi7lTFwvLT/r8YFAl36bOIACgkQlTFwvLT/
r8YGJAf9ELaVtqI8dUaWmyafBNQ0ElfViYzKpVxPhJZsAvhZ1QvhuojvO/aIJnQm
bB2S08EfHLkov8qGZEm2/dhx1v8CI99hY+DfjDByV+Iu9KNvinxoQ9u3k9rEzn0Y
Q9bacEDhsMq0F3ZdPgtRcVJ+NtjD35XLB4x+hanHRJ31p3H25n3Bx6tKo3t5layz
irC/fJmQn7zw0elcLr9u5ORkb0HLk/cE/dlmdp2KTkOhptkueurDWCoSQo/dHvn4
+YAJ7X6Mrydhn5BAatTY65Jk7mhlG55CnaJjEiDWeK8yaXZ95mkzJ4ZYDO/ZFgEA
QdwIWVaI1PwUaNbACKK1duDP3uH/qQ==
=I1lc
-----END PGP SIGNATURE-----

--+g7M9IMkV8truYOl--

