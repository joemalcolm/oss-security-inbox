X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5828" "Tuesday" "16" "June" "2015" "11:08:13" "-0700" "Aaron Patterson" "tenderlove@ruby-lang.org" "<20150616180813.GE28496@TC.local>" "185" "[oss-security] [CVE-2015-3224] IP whitelist bypass in Web Console" nil nil nil "6" "2015061618:08:13" "[oss-security] [CVE-2015-3224] IP whitelist bypass in Web Console" (number mark "U       tenderlove@r Jun 16  185/5828  " thread-indent "\"[oss-security] [CVE-2015-3224] IP whitelist bypass in Web Console\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31990 invoked by uid 550); 16 Jun 2015 18:08:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30143 invoked from network); 16 Jun 2015 18:08:29 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-type:content-disposition:user-agent;
        bh=xkcsWBXoc4w7kRrmkTMs8MnM468mEuGdSrl4vCTP4Do=;
        b=DI+3vSr4sAiKUlhNyw5KG8r6DFg64+5lC10WdpvhEKTtEtUgnC7ItfsxjZ2yPylY4X
         TASRjBwUZsG4niVgEcfFBhsn4R5eBV3g5NGs57X8wgFMhp4TAJC+hHtkNcGE3bLWHRNz
         Edpnmc1SJZsoupwMQJ9vdTsmi/aMYsGiKvRPeQsJIrNzllhYuJlJW+e4dBc2sD6oXfu5
         wrGgtMRPspvGzvAray1yVVXDzXqwnhPY4+f+bFqwR3r/yJPtvkrQadLBSH6xl6EztCRg
         FdyBKKsRdKEVwwr30qwyeRChomGiVmKDXwnW8IUe5fiXQDa6DlGeWEWorj6MY37Etvy4
         1UPg==
X-Gm-Message-State: ALoCoQll3x4Wwc5XdkYrMEYaPz+aaVa8TKN+Cyp2erYpfq29heTYBoxD4a92C7Kr/qEybNCixfiR
X-Received: by 10.68.68.175 with SMTP id x15mr2755431pbt.91.1434478097533;
        Tue, 16 Jun 2015 11:08:17 -0700 (PDT)
Sender: Aaron Patterson <aaron@tenderlovemaking.com>
Date: Tue, 16 Jun 2015 11:08:13 -0700
From: Aaron Patterson <tenderlove@ruby-lang.org>
To: security@suse.de, rubyonrails-security@googlegroups.com,
	oss-security@lists.openwall.com, ruby-security-ann@googlegroups.com
Message-ID: <20150616180813.GE28496@TC.local>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="g3RkK9jYN81zD2N+"
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [oss-security] [CVE-2015-3224] IP whitelist bypass in Web Console

--g3RkK9jYN81zD2N+
Content-Type: multipart/mixed; boundary="GBuTPvBEOL0MYPgd"
Content-Disposition: inline


--GBuTPvBEOL0MYPgd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

IP whitelist bypass in Web Console

There is a remote code execution vulnerability in Web Console.
This vulnerability has been assigned the CVE identifier CVE-2015-3224.

Versions Affected:  All
Not affected:       Environments inaccessible from remote IPs, or without W=
eb Console enabled
Fixed Versions:     2.1.3

Impact=20
------=20
Specially crafted remote requests can spoof their origin, bypassing the IP =
whitelist, in any environment where Web Console is enabled (development and=
 test, by default).

Users whose application is only accessible from localhost (as is the defaul=
t behaviour in Rails 4.2) are not affected, unless a local proxy is involve=
d.

All affected users should either upgrade or use one of the work arounds imm=
ediately.=20

Releases=20
--------=20
The 2.1.3 release is available at the normal locations.=20

Workarounds=20
-----------=20
To work around this issue, turn off web-console in all environments, by rem=
oving/commenting it from the application's Gemfile.

Patches=20
-------=20
To aid users who aren't able to upgrade immediately we have provided patche=
s for the two supported release series.  They are in git-am format and cons=
ist of a single changeset.=20

* 2-1-ip-whitelist.patch - Patch for 2.1 series=20

Please note that only the 2.1.x series is supported at present.  Users of e=
arlier unsupported releases are advised to upgrade as soon as possible.

Credits=20
-------=20
This vulnerability was reported by both joernchen of Phenoelit and Ben Murp=
hy.  Thanks to each of them for reporting the issue to us and verifying the=
 fix.

--=20
Aaron Patterson
http://tenderlovemaking.com/

--GBuTPvBEOL0MYPgd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="2-1-ip-whitelist.patch"
Content-Transfer-Encoding: quoted-printable

=46rom 4e47681e7b3bb92fad73660832eb91a62e148f87 Mon Sep 17 00:00:00 2001
From: Matthew Draper <matthew@trebex.net>
Date: Sun, 12 Apr 2015 08:29:28 +0930
Subject: [PATCH] Always apply Web Console's stricter whitelist to remote IPs

---
 lib/web_console/request.rb       | 21 ++++++++++++++++++++-
 test/web_console/request_test.rb | 24 ++++++++++++++++++++++++
 2 files changed, 44 insertions(+), 1 deletion(-)

diff --git a/lib/web_console/request.rb b/lib/web_console/request.rb
index f48aec6..d7a8a72 100644
--- a/lib/web_console/request.rb
+++ b/lib/web_console/request.rb
@@ -15,7 +15,12 @@ module WebConsole
     # For a request to hit Web Console features, it needs to come from a w=
hite
     # listed IP.
     def from_whitelited_ip?
-      whitelisted_ips.include?(remote_ip)
+      whitelisted_ips.include?(strict_remote_ip)
+    end
+
+    # Determines the remote IP using our much stricter whitelist.
+    def strict_remote_ip
+      GetSecureIp.new(env, whitelisted_ips).to_s
     end
=20
     # Returns whether the request is from an acceptable content type.
@@ -26,5 +31,19 @@ module WebConsole
     def acceptable_content_type?
       content_type.blank? || content_type.in?(acceptable_content_types)
     end
+
+    class GetSecureIp < ActionDispatch::RemoteIp::GetIp
+      def initialize(env, proxies)
+        @env      =3D env
+        @check_ip =3D true
+        @proxies  =3D proxies
+      end
+
+      def filter_proxies(ips)
+        ips.reject do |ip|
+          @proxies.include?(ip)
+        end
+      end
+    end
   end
 end
diff --git a/test/web_console/request_test.rb b/test/web_console/request_te=
st.rb
index 93b466b..3fd953a 100644
--- a/test/web_console/request_test.rb
+++ b/test/web_console/request_test.rb
@@ -18,6 +18,30 @@ module WebConsole
       assert req.from_whitelited_ip?
     end
=20
+    test '#from_whitelisted_ip? is truthy for whitelisted IPs via whitelis=
ted proxies' do
+      req =3D request('http://example.com', 'REMOTE_ADDR' =3D> '127.0.0.1'=
, 'HTTP_X_FORWARDED_FOR' =3D> '127.0.0.0')
+
+      assert req.from_whitelited_ip?
+    end
+
+    test '#from_whitelisted_ip? is falsy for blacklisted IPs via whitelist=
ed proxies' do
+      req =3D request('http://example.com', 'REMOTE_ADDR' =3D> '127.0.0.1'=
, 'HTTP_X_FORWARDED_FOR' =3D> '0.0.0.0')
+
+      assert_not req.from_whitelited_ip?
+    end
+
+    test '#from_whitelisted_ip? is falsy for lying blacklisted IPs via whi=
telisted proxies' do
+      req =3D request('http://example.com', 'REMOTE_ADDR' =3D> '127.0.0.1'=
, 'HTTP_X_FORWARDED_FOR' =3D> '10.0.0.0, 127.0.0.0')
+
+      assert_not req.from_whitelited_ip?
+    end
+
+    test '#from_whitelisted_ip? is falsy for whitelisted IPs via blacklist=
ed proxies' do
+      req =3D request('http://example.com', 'REMOTE_ADDR' =3D> '10.0.0.0',=
 'HTTP_X_FORWARDED_FOR' =3D> '127.0.0.0')
+
+      assert_not req.from_whitelited_ip?
+    end
+
     test '#acceptable_content_type? is truthy for explicit HTML content ty=
pe' do
       html =3D request('http://example.com', 'CONTENT_TYPE' =3D> 'text/htm=
l')
       xhtml =3D request('http://example.com', 'CONTENT_TYPE' =3D> 'applica=
tion/xhtml+xml')
--=20
2.3.2 (Apple Git-55)


--GBuTPvBEOL0MYPgd--

--g3RkK9jYN81zD2N+
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iQEcBAEBAgAGBQJVgGYNAAoJEJUxcLy0/6/G9HsH/jI3etsBru/srrolcdHp6GWQ
XGu/rEYeNOybj+xb4pfbX7EzjPsZUfItQUk1h7hqQCDJ4aPdaokaNzMouqIzbDtX
/v3ZlCIzLnkP5IQjPkNaMZHW8iW6Ow2x6+fzrc/3GR0/EHB9gMuu+0u2rPCU5UZB
81LLNG7c6CQAxgw8u8pyLB/BiDsqavQps87LoAwKgzGAKj2kOZrt2B0vV2Z4Ec/D
aVcq1OmpfIQ33vK0udZN2dZ5JAPOBY1trmSrXc4DT/Rjx6CzXZB6fs3oZ5e0Y6Ti
OJnOmJMtBdm2Hd5sYWAJVIp8VBsqKOFIe4lyghtCs14fZH/nMHiQ8OmUFf/aEqE=
=AhM3
-----END PGP SIGNATURE-----

--g3RkK9jYN81zD2N+--
