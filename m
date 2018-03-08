X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2272" "Thursday" "8" "March" "2018" "19:37:19" "+0100" "chbi@chbi.eu" "chbi@chbi.eu" "<782aca04-721c-cea0-9984-cbc7ebaedeec@chbi.eu>" "69" "[oss-security] CVE-2018-7290: Stored XSS vulnerability in Tiki <= 18" nil nil nil "3" "2018030818:37:19" "[oss-security] CVE-2018-7290: Stored XSS vulnerability in Tiki <= 18" (number mark "U       chbi@chbi.eu Mar  8   69/2272  " thread-indent "\"[oss-security] CVE-2018-7290: Stored XSS vulnerability in Tiki <= 18\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9948 invoked by uid 550); 8 Mar 2018 18:37:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9925 invoked from network); 8 Mar 2018 18:37:45 -0000
To: oss-security@lists.openwall.com
From: chbi@chbi.eu
Message-ID: <782aca04-721c-cea0-9984-cbc7ebaedeec@chbi.eu>
Date: Thu, 8 Mar 2018 19:37:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="awTezoKAw247NtxpyeHKCeNuhnkgeEoUR"
Subject: [oss-security] CVE-2018-7290: Stored XSS vulnerability in Tiki <= 18

--awTezoKAw247NtxpyeHKCeNuhnkgeEoUR
Content-Type: multipart/mixed; boundary="UKjutTzSNDLYU25qtgZ9sbGphbJBXXnwn";
 protected-headers="v1"
From: chbi@chbi.eu
To: oss-security@lists.openwall.com
Message-ID: <782aca04-721c-cea0-9984-cbc7ebaedeec@chbi.eu>
Subject: CVE-2018-7290: Stored XSS vulnerability in Tiki <= 18

--UKjutTzSNDLYU25qtgZ9sbGphbJBXXnwn
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

I've discovered a security issue in Tiki <=3D 18 (https://tiki.org)


A stored XSS vulnerability allows an authenticated user injecting
JavaScript to gain administrator privileges if an administrator opens a
wiki page and moves the mouse pointer over a modified external link,
related to lib/parser/parserlib.php.


The issue is fixed in Tiki 18.1 and was backported to 12.13, 15.6 and 17.2.

Fix:
https://sourceforge.net/p/tikiwiki/code/65537


Timeline:
2018-02-16: Issue discovered and reported
2018-02-19: Issue confirmed and fixed
2018-03-08: New Tiki version released


--=20
chbi
https://chbi.eu

GPG: 3DE9 9187 4BE9 EAE6 3CA8  DC20 BA7B 93F9 9037 AE7E
     https://chbi.eu/chbi.asc


--UKjutTzSNDLYU25qtgZ9sbGphbJBXXnwn--

--awTezoKAw247NtxpyeHKCeNuhnkgeEoUR
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEPemRh0vp6uY8qNwgunuT+ZA3rn4FAlqhguwACgkQunuT+ZA3
rn7Rmw/8DVjtm86z0gm2XmbDEYeE+P07W463HRQOLc5ksjjLUKrkqmCfeU6WyU6a
9aXKpIVQ3XP+uaC6pA0RtbEgreE4WVlfwlNmSlF3jXNc5+DMYzOm6Ydx8b3ycxJ7
z29JG8/1vV5E6NG7GnFY2Y2Tj7V7OA8dizvDsofa9rqQtWt4oQMwxSWzhexItnSJ
qMoTwRj5qtgjJA9VxNH47bbKtIrlVV6JMpWlMhHRCA7+U58jQ0kHemtXMJpXBuxh
uh5WAEBkiYbPmB3J8Vmix4/Q6AafWpK9VeWwsiIRba7AmUrwDWQsA12iFABzUm2R
ShzCNFF1TrI5JLhb/M4bElu1sMfTYvyF+21xd73zobkpxSArj/HL2fDAabDjdXJU
cnyylpROtcdm/yw86GqPlOnOMUqPggE7wIxr5J4vxBT55yEIXAPLm5OF5/Ez9ymC
3OqA8YnbzREh3nP5IC4ajxB5jhm6xMWZ+zC9YzET/PCwh634aBygzOZl6+jktlMg
RiQxKMW8Uc1Euvo3Hg/9XwQjLAqc/AsPvG5BCjiTzjR+qWJWLCngshCTTYAyeeWb
D8jeOLnHL0m92aH5OvvS0/mVfH3DLL0GBvbs1crmw2i+O7QCSLKAnVuShfkq7Wax
AwLheUcy05K9f0Y6/q6rzIvTMwbDNtKD0rmjSwal5Xcn32r2heM=
=M7o+
-----END PGP SIGNATURE-----

--awTezoKAw247NtxpyeHKCeNuhnkgeEoUR--
