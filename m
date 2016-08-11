X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7056" "Thursday" "11" "August" "2016" "10:53:17" "-0700" "Aaron Patterson" "tenderlove@ruby-lang.org" "<20160811175317.GB39068@TC.local>" "217" "[oss-security] [CVE-2016-6317] Unsafe Query Generation Risk in Active Record" nil nil nil "8" "2016081117:53:17" "[oss-security] [CVE-2016-6317] Unsafe Query Generation Risk in Active Record" (number mark "U       tenderlove@r Aug 11  217/7056  " thread-indent "\"[oss-security] [CVE-2016-6317] Unsafe Query Generation Risk in Active Record\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24344 invoked by uid 550); 11 Aug 2016 17:53:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24296 invoked from network); 11 Aug 2016 17:53:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenderlovemaking-com.20150623.gappssmtp.com; s=20150623;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=TaZHF5maXtFsNIlnk86Mep8OCnQNdfttc3mBDXfgNKY=;
        b=mEN+EqVHnmuCTQ93uYJPNAoTf1c7/bQ8TSwre91WQJPY+KngjQPrJfo3Fm6W810QzO
         VFMI3evanp6ECKNVZPkVIV3JMrsL+Yjg5Ft660l0uULgdJiDqd6fhu1Y5dUTfhs+6egW
         DB5ZLRCF546fgyalaMT+GmNQXCRkiB+scxDEPS0ZJnE9G7z3WXLVYshOePqG2chxzBtM
         wfxZL1Se1F5NsMrOQOKoVZtA+A8WS+LNrEecXCWCstU/Opn8Tndk/5jw7jBoTTYGfvsi
         ZzSVjYy6kkNqbaNLfax/uNYf6RDgrL0IHsS9H2LpXT1txyyB52cRlSAcSnlPvu3+g4qa
         RX2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=TaZHF5maXtFsNIlnk86Mep8OCnQNdfttc3mBDXfgNKY=;
        b=RpLqVyR9NzeNhoQ5zdDerKZZ0/iIl08bbK2y8SR+4xalW3lnwBfo0rhu7fHL57sbEF
         uf2MHb6UAL1xUwn/1KaHp5rXFN6vu0yjXvW2NXHSBanuUEG1uVx734/Bmr6o7SG7CRzw
         7Ud24BRqAwB6FCevMtj5Jmat8YZo+0RYLTtzC3zZu+lBFQcgx2GHwtvr7Ek3JxMfpPe3
         DN6ejCt4Bm9YWrzcJx1931HZVTbzS4QlLE6flZ3rGIs0uCHCK2EwiBBxZDVEPVlhJkc6
         9vPGeWOGxtrafvwxQSRNY73CAJ260HUoGeThg9pgMZr9GL7u+XGAdAxv2V46GdzoZeZa
         7REw==
X-Gm-Message-State: AEkoouuZs35bWIE2qMJ8umL+aoISS34ezineeQB0tYvvAllZ+DXlfliWWAZuvtrHWQPBmQ==
X-Received: by 10.66.78.5 with SMTP id x5mr19329119paw.108.1470938000643;
        Thu, 11 Aug 2016 10:53:20 -0700 (PDT)
Sender: Aaron Patterson <aaron@tenderlovemaking.com>
Date: Thu, 11 Aug 2016 10:53:17 -0700
From: Aaron Patterson <tenderlove@ruby-lang.org>
To: security@suse.de, rubyonrails-security@googlegroups.com,
	oss-security@lists.openwall.com, ruby-security-ann@googlegroups.com
Message-ID: <20160811175317.GB39068@TC.local>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="bjuZg6miEcdLYP6q"
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [oss-security] [CVE-2016-6317] Unsafe Query Generation Risk in Active Record

--bjuZg6miEcdLYP6q
Content-Type: multipart/mixed; boundary="7gGkHNMELEOhSGF6"
Content-Disposition: inline


--7gGkHNMELEOhSGF6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

# Unsafe Query Generation Risk in Active Record

There is a vulnerability when Active Record is used in conjunction with JSON
parameter parsing. This vulnerability has been assigned the CVE identifier
CVE-2016-6317.  This vulnerability is similar to CVE-2012-2660, CVE-2012-26=
94
and CVE-2013-0155.

Versions Affected:  >=3D 4.2.0
Not affected:       < 4.2.0, >=3D 5.0.0
Fixed Versions:     4.2.7.1

Impact
------

Due to the way Active Record interprets parameters in combination with the =
way that JSON parameters are parsed, it is possible for an attacker to issu=
e unexpected database queries with "IS NULL" or empty where clauses.  This =
issue does *not* let an attacker insert arbitrary values into an SQL query,=
 however they can cause the query to check for NULL or eliminate a WHERE cl=
ause when most users wouldn't expect it.=20

For example, a system has password reset with token functionality:=20

    unless params[:token].nil?=20
      user =3D User.find_by_token(params[:token])=20
      user.reset_password!=20
    end=20

An attacker can craft a request such that `params[:token]` will return `[ni=
l]`.  The `[nil]` value will bypass the test for nil, but will still add an=
 "IN ('xyz', NULL)" clause to the SQL query.=20

Similarly, an attacker can craft a request such that `params[:token]` will =
return an empty hash.  An empty hash will eliminate the WHERE clause of the=
 query, but can bypass the `nil?` check.=20

Note that this impacts not only dynamic finders (`find_by_*`) but also rela=
tions (`User.where(:name =3D> params[:name])`).=20

All users running an affected release should either upgrade or use one of t=
he work arounds immediately. All users running an affected release should u=
pgrade immediately. Please note, this vulnerability is a variant of CVE-201=
2-2660, CVE-2012-2694, and CVE-2013-0155.  Even if you upgraded to address =
those issues, you must take action again.=20

If this chance in behavior impacts your application, you can manually decod=
e the original values from the request like so:=20

    ActiveSupport::JSON.decode(request.body)=20

Releases
--------
The FIXED releases are available at the normal locations.=20

Workarounds
-----------
This problem can be mitigated by casting the parameter to a string before p=
assing it to Active Record.  For example:=20

    unless params[:token].nil? || params[:token].to_s.empty?=20
      user =3D User.find_by_token(params[:token].to_s)=20
      user.reset_password!=20
    end=20


Patches
-------
To aid users who aren't able to upgrade immediately we have provided patche=
s for
the two supported release series. They are in git-am format and consist of a
single changeset.

* 4-2-unsafe-query-generation.patch - Patch for 4.2 series

Please note that only the 5.0.x and 4.2.x series are supported at present. =
Users
of earlier unsupported releases are advised to upgrade as soon as possible =
as we
cannot guarantee the continued availability of security fixes for unsupport=
ed
releases.

Credits
-------

Thanks to joernchen of Phenoelit for reporting this!

--=20
Aaron Patterson
http://tenderlovemaking.com/

--7gGkHNMELEOhSGF6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="4-2-unsafe-query-generation.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 04dd9752926e41b3e1d7b6a357f1f4381aaeece9 Mon Sep 17 00:00:00 2001
From: Aaron Patterson <aaron.patterson@gmail.com>
Date: Thu, 4 Aug 2016 11:15:03 -0700
Subject: [PATCH 2/2] Fix unsafe query generation risk.

Redo of CVE-2012-2660, CVE-2012-2694 and CVE-2013-0155

CVE-2016-6317
---
 .../dispatch/request/json_params_parsing_test.rb   | 43 ++++++++++++++++++=
++++
 .../relation/predicate_builder/array_handler.rb    |  3 +-
 2 files changed, 45 insertions(+), 1 deletion(-)

diff --git a/actionpack/test/dispatch/request/json_params_parsing_test.rb b=
/actionpack/test/dispatch/request/json_params_parsing_test.rb
index c609075..e8dec17 100644
--- a/actionpack/test/dispatch/request/json_params_parsing_test.rb
+++ b/actionpack/test/dispatch/request/json_params_parsing_test.rb
@@ -84,7 +84,50 @@ class JsonParamsParsingTest < ActionDispatch::Integratio=
nTest
     end
   end
=20
+  test "prevent null query" do
+    # Make sure we have data to find
+    klass =3D Class.new(ActiveRecord::Base) do
+      def self.name; 'Foo'; end
+      establish_connection adapter: "sqlite3", database: ":memory:"
+      connection.create_table "foos" do |t|
+        t.string :title
+        t.timestamps null: false
+      end
+    end
+    klass.create
+    assert klass.first
+
+    app =3D ActionDispatch::ParamsParser.new ->(env) {
+      request =3D ActionDispatch::Request.new env
+      params =3D ActionController::Parameters.new request.parameters
+      if params[:t]
+        klass.find_by_title(params[:t])
+      else
+        nil
+      end
+    }
+
+    assert_nil app.call(make_env({ 't' =3D> nil }))
+    assert_nil app.call(make_env({ 't' =3D> [nil] }))
+
+    [[[nil]], [[[nil]]]].each do |data|
+      assert_deprecated do
+        assert_nil app.call(make_env({ 't' =3D> data }))
+      end
+    end
+  end
+
   private
+    def make_env json
+      data =3D JSON.dump json
+      content_length =3D data.length
+      {
+        'CONTENT_LENGTH' =3D> content_length,
+        'CONTENT_TYPE'   =3D> 'application/json',
+        'rack.input'     =3D> StringIO.new(data)
+      }
+    end
+
     def assert_parses(expected, actual, headers =3D {})
       with_test_routing do
         post "/parse", actual, headers
diff --git a/activerecord/lib/active_record/relation/predicate_builder/arra=
y_handler.rb b/activerecord/lib/active_record/relation/predicate_builder/ar=
ray_handler.rb
index fb08326..d4e74eb 100644
--- a/activerecord/lib/active_record/relation/predicate_builder/array_handl=
er.rb
+++ b/activerecord/lib/active_record/relation/predicate_builder/array_handl=
er.rb
@@ -14,7 +14,8 @@ module ActiveRecord
             it for 'IN' conditions.
           MSG
=20
-          values =3D values.flatten
+          flat_values =3D values.flatten
+          values =3D flat_values unless flat_values.include?(nil)
         end
=20
         return attribute.in([]) if values.empty? && nils.empty?
--=20
2.8.1


--7gGkHNMELEOhSGF6--

--bjuZg6miEcdLYP6q
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iQEcBAEBAgAGBQJXrLuNAAoJEJUxcLy0/6/GozwH/11OJP1P8eWjpOR5dlm89qPN
izBjSV0+/87GBOppmK3kvF9dP7zUxbKQY6Zc8pF7RZwzY6yxETbm2SXAc4ISbLDb
y6kxlJnjFWbub/61+zJ63FPqV+j85a2RSXJLiaqdnNxDm1iRuCTADT9kLL4L+wSi
s0Xfv1sGBj2AS7MRDUCEwfoV1Hc6R04qrYnaF+BBmjwMUh/yiwTZQN646Pl2FSxb
RXfbFOMKGtlvuQcdMoGapEkpsIiuJRlEcIXDpZahT6MinV1O/b9o34k4uG1VDFLe
Fjg9hU0y5RH77QfKwYSxEZ3Of1jnkU2O1Fc0gSLzZ2S9VP3IKauDtrsoaeAkhLM=
=KNcK
-----END PGP SIGNATURE-----

--bjuZg6miEcdLYP6q--
