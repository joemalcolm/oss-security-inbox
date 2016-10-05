X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1513" "Tuesday" "4" "October" "2016" "22:08:29" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161005020829.767928BC2DD@smtpvmsrv1.mitre.org>" "47" "[oss-security] Re: KMail vulnerabilites: need 3 CVE" nil nil nil "10" "2016100502:08:29" "[oss-security] Re: KMail vulnerabilites: need 3 CVE" (number mark "U       cve-assign@m Oct  4   47/1513  " thread-indent "\"[oss-security] Re: KMail vulnerabilites: need 3 CVE\"\n") "<1630041.nLTca8CMjC@xps>" ("<1630041.nLTca8CMjC@xps>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21548 invoked by uid 550); 5 Oct 2016 02:08:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21527 invoked from network); 5 Oct 2016 02:08:41 -0000
From: cve-assign@mitre.org
To: aacid@kde.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, security@kde.org
In-Reply-To: <1630041.nLTca8CMjC@xps>
Message-Id: <20161005020829.767928BC2DD@smtpvmsrv1.mitre.org>
Date: Tue,  4 Oct 2016 22:08:29 -0400 (EDT)
Subject: [oss-security] Re: KMail vulnerabilites: need 3 CVE

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> KMail: HTML injection in plain text viewer

Use CVE-2016-7966.


> KMail: JavaScript access to local and remote URLs

Use CVE-2016-7967.


> KMail: JavaScript execution in HTML Mails

Use CVE-2016-7968.


> Fixes for them are already in our various of our repos

We think you mean that this includes fixes within the past week or so,
such as (among others) the
https://quickgit.kde.org/?p=messagelib.git&a=shortlog remove/disable
commits related to JavaScript.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX9GBAAAoJEHb/MwWLVhi290AP/37+M4O8X5a1ssxCzi6s59GL
rJbpY3mLpWZ31r44TcgjvIVj29oP8FbjCyMzJvl7TpnjxNQt4B3sISzsXpmnuXXT
Lgc6xxRlqA2vOk0GU7FRb9l75pYj7o1AOATP8ARwfyX2bnEWf/308HbTfv8oT1ox
y9o/4as4qJtssNR87IORwvcUmaHsMajLTy2N4tmMZE7eAWDNoJaQRpzvi7WYwZvo
YYXDID7JichQcvSH11hJ1dcchEdsQLscixgq4mUosxU62uDTvkfRjCrgdsOtZndN
p+WJ/S+DwMVTFej8R4btEdth6KYaSIfTNMbl1iMPdNVyOOJKO1UMLQPXYKgSw7fK
5RZN1j98KCGec0hP9msukF+/8/8W2Arp3AxWX2TP+4YcuNTuCWjwctxqrSSVdfju
GANZqCcTLBXcDxdfrzyOOSWASMH0ud5zQvGrfASIwPn6D/EJj4JUQgp9Qae1c2hp
2/IIUlnlyY3Dcy0ho5AediKu3Aa1kH2Qascn8HdFbF8BRrj/3iND3tD4uOWL5NSu
FeezAOYcdiUKFOjU0lGoOjBdPYsFZN1VZTViixQ0+r3LUs0n/ufN3hSxCC8mDfNU
vsWN77/ahR0AYimNp1zxjTdvjmNrYuaoUIuKFgC9uRehyEbvLxd2Z9c8fJb6x+A/
lFkx5UJwcRVWmU2ELitN
=EKKi
-----END PGP SIGNATURE-----
