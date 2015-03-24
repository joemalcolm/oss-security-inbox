X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1735" "Monday" "23" "March" "2015" "23:30:18" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<5510F66A.9030202@redhat.com>" "43" "[oss-security] 2 moderate (borderline low) docker flaws fixed in >=1.5 and possibly earlier" nil nil nil "3" "2015032405:30:18" "[oss-security] 2 moderate (borderline low) docker flaws fixed in >=1.5 and possibly earlier" (number mark "        kseifried@re Mar 23   43/1735  " thread-indent "\"[oss-security] 2 moderate (borderline low) docker flaws fixed in >=1.5 and possibly earlier\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17984 invoked by uid 550); 24 Mar 2015 05:30:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17966 invoked from network); 24 Mar 2015 05:30:31 -0000
Message-ID: <5510F66A.9030202@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="8BTJMkpf9J4Jg4cnVXS7bvIVANOfsKPJ9"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
Date: Mon, 23 Mar 2015 23:30:18 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] 2 moderate (borderline low) docker flaws fixed in >=1.5 and possibly
 earlier
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--8BTJMkpf9J4Jg4cnVXS7bvIVANOfsKPJ9
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Another example of why embargoes are a bad idea, these issues have been
fixed for ages by upstream but fell through the cracks, because embargo!

https://bugzilla.redhat.com/show_bug.cgi?id=3D1063549
https://bugzilla.redhat.com/show_bug.cgi?id=3D1063550

tmp vulns and use of http for sensitive downloads like keys/executable
content with no checks (especially when https is available and other
ways to do it safely).

--=20
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993


--8BTJMkpf9J4Jg4cnVXS7bvIVANOfsKPJ9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJVEPZqAAoJEBYNRVNeJnmTgxYQAKlRbpVZDqhgLok3L1yLGdcU
Krd/E8ZzskPzSMdr27o089JLnMWhD+fOYjr0I/XkQ8g4ToLzU/HGIMINwIVH1JBt
aZjjZFozkTQxunz7HejAPoBZ+c2t928klEBGrvkymjg9I1lhGZL1PFXyHYAIdfiQ
jWsjMXDQAHnsHqDiDxac5HE9fKNyCBxDS3Vw9jfjW7ISDpgYT85xCphIaGs1K09p
2tdbv30q7vUbU9KeaNX+fKDuNOyyvgxhZwivFiEmYY9VnD7wQTOi1RVAP7KjmPTU
C0wUnMpeRbGWoEVXIKW5nhlaKf6Nh7QhyuMBLMBqjicP4M19EczrKZRAhR8aOv0x
Jv7AxJYrfw+TVrJSos6VzSBQBHh6tcAJRxkgTnTdkqILVm651Up1xILcQ9AixqQe
3WUPW7hFnsNHbsqINAYZyiGc7HrgbKCH1QnFOIKElBzwA9gEEYMdD5n+TWh9Suw5
3sWKiWccI8PIq/VQv119+IHiF+r1PfMKMilrHJ+d3QcDDc2iC916yVEMRQzSJ9Il
jPlOADxIDBg2VIXqapjuHZv0y1bQ/n4/mSWlINIklYca1EHPwl3mbusRl39Mb4td
nvsMd32D1AFgztnZJjvwztb/X1bi92v8Whndr0huiEOyI1OlWqerA5pSrSO0lvU4
SHLrrwCQJq25aR5sX2cP
=pu0P
-----END PGP SIGNATURE-----

--8BTJMkpf9J4Jg4cnVXS7bvIVANOfsKPJ9--
