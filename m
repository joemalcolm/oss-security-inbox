X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1470" "Wednesday" "17" "August" "2016" "23:41:31" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160818034131.1773BB2E013@smtpvbsrv1.mitre.org>" "38" "[oss-security] Re: CVE Request: Default password in openstack / crowbar trove" nil nil nil "8" "2016081803:41:31" "[oss-security] Re: CVE Request: Default password in openstack / crowbar trove" (number mark "U       cve-assign@m Aug 17   38/1470  " thread-indent "\"[oss-security] Re: CVE Request: Default password in openstack / crowbar trove\"\n") "<20160816094932.GA1197@suse.de>" ("<20160816094932.GA1197@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13952 invoked by uid 550); 18 Aug 2016 03:41:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13934 invoked from network); 18 Aug 2016 03:41:42 -0000
From: cve-assign@mitre.org
To: meissner@suse.de
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20160816094932.GA1197@suse.de>
Message-Id: <20160818034131.1773BB2E013@smtpvbsrv1.mitre.org>
Date: Wed, 17 Aug 2016 23:41:31 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: Default password in openstack / crowbar trove

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> In crowbar-openstack / trove , the trove service user has a default password.
> 
> https://bugzilla.suse.com/show_bug.cgi?id=991729
> 
> https://github.com/crowbar/crowbar-openstack/pull/485

> https://github.com/crowbar/crowbar-openstack/pull/485/commits/869663d94daafe424dbf4f809a9ca68ab1b21873

>> Force the trove service password to be random_password in the
>> model, to match other services.

Use CVE-2016-6829.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXtSP/AAoJEHb/MwWLVhi2JGwQALK7eHbxUE3d/0pJEZT3Dh2W
IvR9Q/LzSl+hyPSi/p3hYMV7//trwQHOkfJCIu/vCFXfPTXB67CyqBJNDP5HPBbb
Te6iFpvOx1DbjDNI3gVnuEavz0/qrkmFtQ2ckAA2Fm+fbgu+osYrFB9H4HXl9FB6
UXJLAQjl0PUqED+YWgcUWRE790y0Dy8Tec6yoHMYMbO9kd2vAaiB+pTHxi7Rj7NO
JtiUif88dvAPvf9BPHdpZ1CWXrn5JMsmAzBEUfB2Agl+oQmvN1u7pjeq3WbflhkH
Lxu30L3wUwA18KzHLO0Vu1JAG2hxZpntoTlFkJQON62b+YGrRnRiv6OG/+C1jsZ3
I4nM/JlZCveWYivqmL33Yt0LTT78OvnpYr/rkxKX4iJvSFhoNaF6RPIIDMbwpKo6
ARXS0oZfj81OLgv1l2n1SSUgs2PA0ak+FkKf4qN5/BYhcvHstIrB0Qtd7iMxoeXD
1HkjdNIKO+RaOTUsU639awR5qNRax4R6XIUdixEvqC3dnw+FneSv1k8zGrXev1L1
HbJWrc1Vcm08r8eh2B9RJcoDb/FmzYOslWF5XLWDAZ116w4TFzVDnqBLuas1HNoB
AsDdtZFBl5uFYs0xBvWeoqp2mx+r0YIA4qaLItjEjg17W+kNnBYiKPos8jyjb8UF
Kmk6i62iKxL5nMgFXXWt
=2ckM
-----END PGP SIGNATURE-----
