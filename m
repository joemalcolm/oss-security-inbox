X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3800" "Friday" "7" "October" "2016" "16:35:57" "+0200" "Sysdream Labs" "labs@sysdream.com" "<80dec0d7-75a1-6319-6ad9-d316d4bb7d34@sysdream.com>" "97" "[oss-security] Re: SPIP vulnerabilities: request for 5 CVE" nil nil nil "10" "2016100714:35:57" "[oss-security] Re: SPIP vulnerabilities: request for 5 CVE" (number mark "U       labs@sysdrea Oct  7   97/3800  " thread-indent "\"[oss-security] Re: SPIP vulnerabilities: request for 5 CVE\"\n") "<20161006151431.80DF36C58F9@smtpvmsrv1.mitre.org>" ("<20161006151431.80DF36C58F9@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30640 invoked by uid 550); 7 Oct 2016 14:36:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30621 invoked from network); 7 Oct 2016 14:36:11 -0000
X-Virus-Scanned: amavisd-new at sysdream.com
To: cve-assign@mitre.org
References: <20161006151431.80DF36C58F9@smtpvmsrv1.mitre.org>
Cc: oss-security@lists.openwall.com, spip-team-owner@rezo.net
From: Sysdream Labs <labs@sysdream.com>
Message-ID: <80dec0d7-75a1-6319-6ad9-d316d4bb7d34@sysdream.com>
Date: Fri, 7 Oct 2016 16:35:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <20161006151431.80DF36C58F9@smtpvmsrv1.mitre.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="sOuw9ugbc8v6hnlKRq9LjEcMRt2B0NeFw"
Subject: [oss-security] Re: SPIP vulnerabilities: request for 5 CVE

--sOuw9ugbc8v6hnlKRq9LjEcMRt2B0NeFw
Content-Type: multipart/mixed; boundary="EjUqVvuogR52hp3N3MXFE6xEeCS8Eol5v"
From: Sysdream Labs <labs@sysdream.com>
To: cve-assign@mitre.org
Cc: oss-security@lists.openwall.com, spip-team-owner@rezo.net
Message-ID: <80dec0d7-75a1-6319-6ad9-d316d4bb7d34@sysdream.com>
Subject: Re: SPIP vulnerabilities: request for 5 CVE
References: <20161006151431.80DF36C58F9@smtpvmsrv1.mitre.org>
In-Reply-To: <20161006151431.80DF36C58F9@smtpvmsrv1.mitre.org>

--EjUqVvuogR52hp3N3MXFE6xEeCS8Eol5v
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Thanks.

>=20
> Is there public information about this already on an spip.net web site
> (such as a Redmine revision) or the https://sysdream.com/news/lab/ web
> site? Is this unrelated to the valider_xml.php script?
>=20

All the fixes related to the issues are here:

* https://core.spip.net/projects/spip/repository/revisions/23179
* https://core.spip.net/projects/spip/repository/revisions/23180
* https://core.spip.net/projects/spip/repository/revisions/23181
* https://core.spip.net/projects/spip/repository/revisions/23182
* https://core.spip.net/projects/spip/repository/revisions/23183
* https://core.spip.net/projects/spip/repository/revisions/23184
* https://core.spip.net/projects/spip/repository/revisions/23185
* https://core.spip.net/projects/spip/repository/revisions/23186
* https://core.spip.net/projects/spip/repository/revisions/23187
* https://core.spip.net/projects/spip/repository/revisions/23188
* https://core.spip.net/projects/spip/repository/revisions/23189
* https://core.spip.net/projects/spip/repository/revisions/23190
* https://core.spip.net/projects/spip/repository/revisions/23191
* https://core.spip.net/projects/spip/repository/revisions/23192
* https://core.spip.net/projects/spip/repository/revisions/23193
* https://core.spip.net/projects/spip/repository/revisions/23200
* https://core.spip.net/projects/spip/repository/revisions/23201
* https://core.spip.net/projects/spip/repository/revisions/23202


We will point to the revision numbers in our announcements.

So we still need CVE for :

* Template Compiler/Composer PHP Code Execution

https://core.spip.net/projects/spip/repository/revisions/23186
https://core.spip.net/projects/spip/repository/revisions/23189
https://core.spip.net/projects/spip/repository/revisions/23192

* Server Side Request Forgery
https://core.spip.net/projects/spip/repository/revisions/23188
https://core.spip.net/projects/spip/repository/revisions/23193

Best regards,
--=20
SYSDREAM Labs <labs@sysdream.com>

GPG :
47D1 E124 C43E F992 2A2E
1551 8EB4 8CD9 D5B2 59A1

* Website: https://sysdream.com/
* Twitter: @sysdream



--EjUqVvuogR52hp3N3MXFE6xEeCS8Eol5v--

--sOuw9ugbc8v6hnlKRq9LjEcMRt2B0NeFw
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJX97LNAAoJEI60jNnVslmhAT0QAKxFT//A9kLvHzVvLMUlt2om
E2vrlcV1eGozydUI4fDmjWjZI3v7EX/D1AEfvUa6scqyn+jP7FgPF2F3E+ES3FOf
5/JgIfkxevPYNqTAQ7KGrQ2AOUTgW2FXa4IQ8kXWbQ4uk1aRTEASeKh8eubkm5+D
tC6mHGitv0ePx1ZBNPMKgNT0yP8lewgWNavkIBR6m4mXve/zxmTFLi/RIgNw5L23
/bLU7Dm3s9tqsXfi8iuR5tvgz/n8m5tR9rAAl6skLWC/5XkKFM0QQmaecCqY6m97
zABfsM964WelWFrhrJHP35dANa43zxaS4c3mEq04Ie9d7u/6TobAAJWpv0Qdd+0l
pO6mmmsNWDCiHx5X6n+ULHilTsBKc6Dm3dmNLCBqE/IPn7hJpn5wLFgRoKVi3gt/
HHDb9LfroUSqE4XSmRz4CVcrRly4tu+8sFSELnOnqs/AbpVw5PwP4hB8MVgFUv8V
lcJUto5VNJbAa3zY2ogxjTW/ccN220lseFU63DFj8LYOkNRvNSuUXRiStgjMl1Zs
xNEZq21elUT7zRQIm7zp7eQcewnGC13LrjXTinYYzQorkNxicuX6lMspZVw52M6N
XtqBwn4HwmGl1bslbg1zkwqpXrUYHFmFc1PsIdINySul9pwXJWUhMgBGqiMCsNUr
O/1iY3BVvJ6fSr8Kosa0
=h8m3
-----END PGP SIGNATURE-----

--sOuw9ugbc8v6hnlKRq9LjEcMRt2B0NeFw--
