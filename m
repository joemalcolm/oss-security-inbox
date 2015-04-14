X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3626" "Tuesday" "14" "April" "2015" "21:48:20" "+0200" "Andrew Shadura" "andrew@shadura.me" "<20150414214820.3a6a30de@ileemo>" "113" "[oss-security] CVE-2015-1864: Multiple HTML and Javascript injections" nil nil nil "4" "2015041419:48:20" "[oss-security] CVE-2015-1864: Multiple HTML and Javascript injections" (number mark "        andrew@shadu Apr 14  113/3626  " thread-indent "\"[oss-security] CVE-2015-1864: Multiple HTML and Javascript injections\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12185 invoked by uid 550); 14 Apr 2015 19:48:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12124 invoked from network); 14 Apr 2015 19:48:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=shadura.me; s=a;
	h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date; bh=0VTD/a+Xw9mXpM2tPbaPx14afq1bom1kKEdr3RsSFCY=;
	b=SawWQG6VDzcgDujE9hhQIx9YB9U5THAneByzdRVmtJrD2D5X81j7fS8bgULrYrjpF6XLETp8tWdwWhxsrfprM7dh94C7Og7G0FWh8gBk7sLCRypvzIiXPrJy1rKJ0de0S5bPRMnfNoVOiviNn5EzHq3xv3NUk81hbpdPtaIY6AA=;
Message-ID: <20150414214820.3a6a30de@ileemo>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.25; i586-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/9+jY0rY6LFcQZxd=o.YJ/Va"; protocol="application/pgp-signature"
Date: Tue, 14 Apr 2015 21:48:20 +0200
From: Andrew Shadura <andrew@shadura.me>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2015-1864: Multiple HTML and Javascript injections
To: oss-security@lists.openwall.com

--Sig_/9+jY0rY6LFcQZxd=o.YJ/Va
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hello,

We have recently discovered a security issue in Kallithea [0].

Synopsis
=3D=3D=3D=3D=3D=3D=3D=3D

Several vulnerabilities have been found in Kallithea, allowing
attackers to inject malicious code into the administration pages.

Description
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

HTML and Javascript injection was possible in several places in the
Kallithea UI, allowing attackers to run malicious code.

User details (first name, last name) as well as repository, repository
group and user group descriptions were pasted unfiltered into the HTML
code, thus attacker could inject their code by setting their first name
to, for example:

    <img src=3D"/images/kallithea-logo.svg" onload=3D"alert('Hello,
    World!');">

This would display an alert every time users administration page. Used
against a user with administrator's access, this can expose sensitive
information:

    <img src=3D"/images/kallithea-logo.svg"
        onload=3D"$.ajax({url:'/_admin/my_account/api_keys'}).done(function=
(data){
        a=3Dnew RegExp('[0-9a-z]{40}','g');alert('Your API key is:'+
        data.substr(data.search(a), 40));});">

Impact
=3D=3D=3D=3D=3D=3D

As the vulnerability allows attacker to execute arbitrary code in the
user's browser, it can be used to gain access to the user's account by
stealing user's credentials, like API keys. In the case the user also
has administrator rights, it is possible for the attacker to gain full
administrator access to the Kallithea instance.

Resolution
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Kallithea project has fixed this issue, and issued a patch and a bugfix
release.

Users are recommended to apply the patch or to upgrade to the latest
0.2.1 release.

Affected versions
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The issue is currenly present in Kallithea versions before 0.2.1.

Acknowledgments
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Thanks to Nick High for reporting this issue.

References
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

[0] Kallithea Project
    <https://kallithea-scm.org/>

[1] CVE-2015-1864
    <http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2015-1864>

[2] Kallithea: Security Notice CVE-2015-1864
    <https://kallithea-scm.org/security/cve-2015-1864.html>

[3] Patch for the issue
    <https://kallithea-scm.org/security/cve-2015-1864.patch>

[4] Mercurial changeset fixing the issue
    <https://kallithea-scm.org/repos/kallithea/changeset/a8f2986afc18c9221b=
f99f88b06e60ab83c86c55>

--=20
Cheers,
  Andrew Shadura
  on behalf of Kallithea Security Team

--Sig_/9+jY0rY6LFcQZxd=o.YJ/Va
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJVLW8EAAoJEG6k0jEaLSaNsNEQAMSzauPsnGUN9efdHdHwlMYv
8E3I9olUOtASOQPXUrtB+L2IbNTRerz5jeqTKOHHXK9DVcV4CYZVa5uMfr/nVjNP
h6hq25l9mbkUMW4KcWHmepTZw0cmnbQ3hHq/9Zb5+nqRDExnmvVeNYZkizJLRCaR
1+zr9GWkZQr/GR6iWTSs9wv6SI+FrllWpV0/Bws0hoypnArcnASb2nD4UrDi8Gm/
HlA8WOdb6gMZAZd2xaB6gXXL8KffQdQPSaCHA9Me/Bl0GeOCp4nUIXU0yE4fEFGx
1zBShDKTJZhrWKv54yjVxKRerrR4vak4lGkp73G4auQyEp7dvrnKEsmcd9Ts56ze
lk+6SnrCflsZcQHxXMmZ9ecjSbKHLkQnX8DN96o+OFYA3yZAgud+PkEYiwqEPfBY
ZMQrXcg5HX5pONEODV/2WGaOUxCHh78jR1qPYwktZ9X/tzG3J/T7BA5JatoTi+ri
9H2mW/PU0yKlL6oOwrfxwdcBsNgKAELpjq0Y8pu70oXkdivG1jI5knBQ1dqHWg8x
8Hpfu1AmPQhwyi7K8aSPlCOw5dx1L0UsoJ4q7erz2UX0hNMDfdcngKGer0r5D+Yk
fcxaxOWJDIbfCZgCbOJFNvGSv3OzZjJ60xECOn48kvjaq+TImcCeyyej/hHZYUlF
1Zh+uU74C1LLhfC3Z6WI
=e4ax
-----END PGP SIGNATURE-----

--Sig_/9+jY0rY6LFcQZxd=o.YJ/Va--
