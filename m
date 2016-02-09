X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1577" "Tuesday" "9" "February" "2016" "18:37:26" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160209233726.D5C4342E09B@smtpvbsrv1.mitre.org>" "38" "[oss-security] Re: KDE Plasma vulnerability: need CVE" nil nil nil "2" "2016020923:37:26" "[oss-security] Re: KDE Plasma vulnerability: need CVE" (number mark "U       cve-assign@m Feb  9   38/1577  " thread-indent "\"[oss-security] Re: KDE Plasma vulnerability: need CVE\"\n") "<4879177.l6fT5WhknG@xps>" ("<4879177.l6fT5WhknG@xps>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22338 invoked by uid 550); 9 Feb 2016 23:37:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22315 invoked from network); 9 Feb 2016 23:37:38 -0000
From: cve-assign@mitre.org
To: aacid@kde.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, security@kde.org
In-Reply-To: <4879177.l6fT5WhknG@xps>
Message-Id: <20160209233726.D5C4342E09B@smtpvbsrv1.mitre.org>
Date: Tue,  9 Feb 2016 18:37:26 -0500 (EST)
Subject: [oss-security] Re: KDE Plasma vulnerability: need CVE

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://www.kde.org/info/security/advisory-20160209-1.txt

> https://bugs.kde.org/show_bug.cgi?id=358125
> https://bugzilla.opensuse.org/show_bug.cgi?id=964548

> Qt allows to have no screens. If all XRandR screens are disconnected
> there are also no QScreens. This is from an X11 perspective wrong, but
> we have to deal with it. No QScreens means that all views are destroyed
> and no new ones are created. Thus all windows close and the greeter
> exited successfully which in turn unlocked the screen.

Use CVE-2016-2312.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWundZAAoJEL54rhJi8gl5D9sQAIdek7UXlkLwVbO0syNQ0wMs
TsZBLePf5Ja0cfJQAAwK9yglPj2qDTHGfao9uZ+SEOsSG1u/cl61xsnHJB2RTBmv
eyUZEWi1ysC4PuVJ/lIA5BhoIC3x/UWto1jLf/p4e/C5z/h4x13uMeaaRf68q/eW
yRIYfWejHa/KpaqWj7cp5btKQoQbimfU1z8cR9kTomt9lVnOhKWSSutBZI9n9ffO
PP2N6MrwnjaBOA+RUe++qUSyn1xEA2s5QDNYnKGyFZbusaLNqTy+QlBnTpU1a6Aq
kA4+d6nsq7uZ3uxEhhgRfTBhPBmrl8k/N6/tgJFLDWsPZVSt1ZN+2RsYTh9P+Hit
8cZyQj1kZSOnUufcv7qvxLIiUkIKq0/H3k+fgcXODQDhxt8+pymcNZE7lHiHhlyG
fnduLHWIYXj7W+F15lpM7OTAVYi/cmbF9NNw43fg/I5xp0GHVV481KD7zW7CT6J+
bihhdZiAl0SgxP/nR91D/JiKOKcw9KXhuaZChUKlhVgXyLGetbivTLkp+Qhbh1Dt
DL/OyWprFy/cJSJIKAaAxDLWTo7gbNl/FnSHCjzPwl+nbrw11DeVD5W313VFSGwQ
f7itbKMjlribDEZX6WC5OuXvv8uVWGUFTsVb3Ki5fi8pJeItzMS6lyZ6yJS3Skm5
2Pz3zbA8ldJBJGX/anss
=ti15
-----END PGP SIGNATURE-----
