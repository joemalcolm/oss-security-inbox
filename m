X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1847" "Thursday" "7" "May" "2015" "22:36:44" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<554C3D5C.3070304@redhat.com>" "52" "[oss-security] beaker vulns fixed in version 20.1" nil nil nil "5" "2015050804:36:44" "[oss-security] beaker vulns fixed in version 20.1" (number mark "        kseifried@re May  7   52/1847  " thread-indent "\"[oss-security] beaker vulns fixed in version 20.1\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21865 invoked by uid 550); 8 May 2015 04:36:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21847 invoked from network); 8 May 2015 04:36:58 -0000
Message-ID: <554C3D5C.3070304@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="xJoF64CFqTIknFNjndqk3i5JuFirIw98W"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Date: Thu, 07 May 2015 22:36:44 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] beaker vulns fixed in version 20.1
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--xJoF64CFqTIknFNjndqk3i5JuFirIw98W
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

So some flaws were found in Beaker and fixed in version 20.1:

https://beaker-project.org/download.html

In Red Hat Bugzilla:

CVE-2015-3160 - 1215020 Beaker is vulnerable to "XXE" attacks from
authenticated  users, due to external entity expansion in job XML

CVE-2015-3161 - 1215024 search bar does not escape </script> tags when
producing JSON

CVE-2015-3162 - 1215030 HTML tags in recipe set comments are not escaped
in the "edit comment" dialog

CVE-2015-3163 - 1215034 anonymous users can modify key types and power types



--=20
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993


--xJoF64CFqTIknFNjndqk3i5JuFirIw98W
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJVTD1cAAoJEBYNRVNeJnmTBBoP/RYoVmBLYCnPks8QGkWKifhf
4UZ5XcDq2bo3cCEbG8BdR29ES701ATw93GzImynkJNm+a9tEiNkFWOYpE/C9BsZ5
DD8Wv0EhD8dBfwWFqQXPO+G5Ce6oPQgwE8P+MkvZF6kbD9fl05/z2shIOHzDB6Ns
JCd++gqnlBNXiJKATeAS8NuEz1fgV6ziPxC1+VITZTCGSmnBYmcx6kPzfXImxmkk
boX18HsuI++sgPkqIaB52/3HiSL2r/70c4T2Fqpg+8+Os1qouuKgYJVUSh+8hRV9
euO5xq2si4gGLYW3FNbXh9GY1XQopwfMlXvYaCUNM6gRqUXpzLjDqLzhtN/7/dlJ
n0QQEpgd+4RJNFXFtLB8R0e9eZBnkUt4aCvHy0HfGmIeedWKTzyreSU8oa3zlV83
4+iHtePGEj9DuK0oXLyhMeZcVLMPQy6jVaoxa+vpNSwVJg9n7Fs94NJ8f8zSDQy+
EcUrXpGF0z+xLXyH1zr540vv4XfM6OA7LpkaGc7GaqkDVphXOI9yj/vPtbxYhtva
A8WF1GFJcYmZUXpE5ZM8cld0XSpwfhnRf+zk8UTQ1Z5D01cgF59FDc/tA6MBeiMV
L20kocvI/vmqkSIdCgVHr1QJm2stJ+08dfsJae+ZSEFofqy0GGHkXWwpsNsrktgT
29tdbuKo2yK/9a1Qd1Na
=Vptg
-----END PGP SIGNATURE-----

--xJoF64CFqTIknFNjndqk3i5JuFirIw98W--
