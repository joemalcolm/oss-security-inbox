X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2534" "Wednesday" "2" "March" "2016" "13:12:31" "+0000" "Darren Martyn" "darren.martyn@xiphosresearch.co.uk" "<56D6E6BF.4020300@xiphosresearch.co.uk>" "61" "[oss-security] CVE Request(s): VTigerCRM and SugarCRM" nil nil nil "3" "2016030213:12:31" "[oss-security] CVE Request(s): VTigerCRM and SugarCRM" (number mark "U       darren.marty Mar  2   61/2534  " thread-indent "\"[oss-security] CVE Request(s): VTigerCRM and SugarCRM\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18291 invoked by uid 550); 2 Mar 2016 13:12:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18270 invoked from network); 2 Mar 2016 13:12:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=xiphosresearch-co-uk.20150623.gappssmtp.com; s=20150623;
        h=message-id:date:from:user-agent:mime-version:to:subject;
        bh=ceEX+lmX7kvwdtKmgcYEpEp0/oetr8X67ozTxSODMak=;
        b=AF1lIxGx1maoeB0PaQhJWwKiXT8N1VXCpPdNLbq40GsT9nn4jETk9YQ4D+GYgb1rUn
         GCq+MZPk9WWg/+F+UdySGYYpx3zblob1+oRpukqbLWMsHEjufCMtLseJZ/2ulNQ6eC8p
         mHNDI/0iI33hgRaSN1VclMDDuHMJ1D8Kdpt1X2upWCAk9oyQeqw0zN9ZSr62JsjJ6MCi
         spdv2DFvJF5oPpjDrl4L7mvmNCjKHIzBRhRJ657cakCvBIgq5OAveUS4vNdKWMiRMzmJ
         OVMrx/P/4+Akb7+DkNxBXpW0fY2nh/gwSMICfWQ58cC3Tsj4onLWskY1bT0uXRa2AAnw
         jg8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject;
        bh=ceEX+lmX7kvwdtKmgcYEpEp0/oetr8X67ozTxSODMak=;
        b=JaEVHFu9/97t5yR5CW6uLXsjbOuAPN/T6eE6BDGK9QoHXjOjbktJ7suHttDT7HDzZ/
         G4TCJ8suVTJxtfmFV2IaToPwHUqWZjxCSbblO+HODKru2Ftdgc1nGm2ktkpscrBBZpfs
         VPn9pSgpNuX1dSjh0pxn2Oz/uyfeGYoWKWFYVvijTa6W/CT/OfU+KmjlezC4U+oAzOyp
         0UeQJuvWa4b0yB0L1ycQsS3lOivqczsMB+Iq/bbPeMjgNJtrzwV9V//xeo4IIHN1PUYL
         fPRGfEIaTxqdBFkUD9FsvZP41caKkcd18qYuh2Mh7rML/894zSZJ5XIUvd+tk6kOosmT
         COUA==
X-Gm-Message-State: AD7BkJLYyEhhYBO2oG2sLPgmhYbtF7AugPMOvm+/Y0C6AI0JdJVvZxTQyHIa25+ITUSpJw==
X-Received: by 10.28.183.69 with SMTP id h66mr4758980wmf.6.1456924358612;
        Wed, 02 Mar 2016 05:12:38 -0800 (PST)
Message-ID: <56D6E6BF.4020300@xiphosresearch.co.uk>
Date: Wed, 02 Mar 2016 13:12:31 +0000
From: Darren Martyn <darren.martyn@xiphosresearch.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Icedove/31.8.0
MIME-Version: 1.0
To: oss-security@lists.openwall.com
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="LdsE92W8JbIGWEov9UBu891wOxGGrVp6O"
Subject: [oss-security] CVE Request(s): VTigerCRM and SugarCRM

--LdsE92W8JbIGWEov9UBu891wOxGGrVp6O
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi List,
Requesting CVE's to be issued as appropriate for the following security
issues.

SugarCRM Incomplete Blacklist leading to shell upload.
This is the exact same issue as CVE-2015-5946, except different product
(CVE-2015-5946 was issued for SuiteCRM, which is a SugarCRM fork).
Unsure if this needs a second CVE issued or not given it is a different
product (same original codebase though).
The version tested was SugarCRM Community Edition version 6.5.22.

VTiger CRM Post-Auth Shell Upload.
Version Tested: vtiger CRM 4.2 Patch 2
This is a similar issue to the original SugarCRM and SuiteCRM issues.
Effectively, the filtering applied to prevent uploading executable files
is insufficient and trivially bypassed, leading to remote code execution.
The checks avoided are a horrible "check if there is PHP in the file"
function, getimagesize(), a MIME type check, and a file extension check.
Given that it is a different code-path entirely to the original SugarCRM
codebase, it probably should be treated as a different issue.

Details are outlined here, to avoid repeating the same information:
http://xiphosresearch.com/2016/03/01/Vulnerability-Inheritance-across-Forks=
.html

Both issues (SugarCRM and VTigerCRM) require authentication, however
both clearly display bypass of intended security restrictions.

Best regards,
Darren Martyn.



--LdsE92W8JbIGWEov9UBu891wOxGGrVp6O
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJW1ubCAAoJEKbzl+ujn+tWJIMP/ir7nWQqAXQOgroF8RVYtw2p
iRvPHh+rucrBQh2PGTTnziMMyVtSnpqmJJSAPwRo7TdxNEeNHyOzUr4l3OMXvCI6
0wRt3opjp6TcZNN3i0QMH9b2sCevnZjIlG8VkMpDWO1QElEgQjomrImWqMxyWKg3
2IZH3kgOTFvt5NGzGjc4htb5/RFmES1UNxDJhof2rNKXxzEOxozMTgn/4YykZBVw
rKzTDBz6V3vLwBrK+zdQa6PJTpro7gldW5nKqmWk2fJEj9L4Q2vnwv+qsedMyst8
1OVriWpzeFlGxPYOJNjFjuLaxSmKl6oXtdIlPGhZjhvj45D53Wg4m7ZRpEs+fwpj
iwoaPRGEl37r8zK2ZHUXJlOrESbWwzvqz+TT0Z8vcYpKZx+Bp4z9D1iZQtqGxSw8
9DjeKREtsi2D/u+nWxhxGk/GvjGkz4OdjNP7Wg7aCqD0qxd3twj+r6Jc5MC/FQdZ
6UgS7KApKkISQQBVGAdFj1vAbLzNPoBroG3XFR0iT7GWStpDDDX6EyhQUUrQUrMV
83jCbH0nWWiSG2j/MwaImXnKdk77JSjSWCa45UeAy2rbwbmX9F4m+kKxTM6kIpZu
xZRmpDQEVlJtN+jlsRvzTM2voQ7nKUl4mUzIAqt/rLAtXezTAjG5NgNt4MnRTpnW
DD6R1/inJ9fNNCxgcksn
=Lv7i
-----END PGP SIGNATURE-----

--LdsE92W8JbIGWEov9UBu891wOxGGrVp6O--
