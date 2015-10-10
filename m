X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1397" "Saturday" "10" "October" "2015" "13:14:29" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151010171429.25B8D1BEC0C@smtpvbsrv1.mitre.org>" "39" "[oss-security] Re: CVE request: issues fixed in PHP 5.6.14 and 5.5.30" nil nil nil "10" "2015101017:14:29" "[oss-security] Re: CVE request: issues fixed in PHP 5.6.14 and 5.5.30" (number mark "U       cve-assign@m Oct 10   39/1397  " thread-indent "\"[oss-security] Re: CVE request: issues fixed in PHP 5.6.14 and 5.5.30\"\n") "<87vbal3114.fsf@redhat.com>" ("<87vbal3114.fsf@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5979 invoked by uid 550); 10 Oct 2015 17:14:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5954 invoked from network); 10 Oct 2015 17:14:40 -0000
From: cve-assign@mitre.org
To: mprpic@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <87vbal3114.fsf@redhat.com>
Message-Id: <20151010171429.25B8D1BEC0C@smtpvbsrv1.mitre.org>
Date: Sat, 10 Oct 2015 13:14:29 -0400 (EDT)
Subject: [oss-security] Re: CVE request: issues fixed in PHP 5.6.14 and 5.5.30

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> the changelog for PHP 5.6.14 and 5.5.30 lists these two issues that
> have a security impact:

> Null pointer dereference in phar_get_fp_offset()
> https://bugs.php.net/bug.php?id=69720

Use CVE-2015-7803.


> Uninitialized pointer in phar_make_dirstream when zip entry filename is "/"
> https://bugs.php.net/bug.php?id=70433

Use CVE-2015-7804.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWGUcBAAoJEL54rhJi8gl5sTgQAK10QPBUELp73MG9/oNZuBvU
StOfUjxvuassZxtgqn3w0cnujL2USo4YK0OyJIecurbJSlnb2mFNM9HR6DN5XDXq
Z7DxcB3TCjy7tqBCzNTyhtEErs2eEfHJ6nMFXPVznby44hxV8Q6ywfvA0HsWcyfe
AFqwM2EwjdB4iulpS2ICRG8Pv86trEO6nulDQAqPJXUQhRQgE/B6P8v9BU5/K9oi
mJ8IEq6eYQaQAG8O/pC20tdHRfcxoHmpwmPLGsKSGtg3Xqnsyq5I4Q3PLy9YqI57
73E3B2OQFbCeqmxIOgeP5wxtlB0Ocaa68wthQYBQgD2rzz/AID208EpyIinMRkSB
6vsQYf79LNP92H2ZG7Alua/eNQGkDDhKKLLKd9agi1kosdl5VZEm12OLHBipqytk
QZ0hiBwzVbIOIVkWEgcVStJ7j138IIzHzGozH1rCFznmu2WeAYzm/WwuJtRyPiM+
aDV8vPBfT7MlWiPTnA6PtUp3zZAP+0GNSdqKE3Mao+0GTKxaAfL0pvs0f+xjzHJ3
Lil+jiRzCw7taCU6RLrkwBA4qOg6haOE3L7BN7t9QNLDo0dsreSzaNvqSGz9PjY+
56gxGj5OQrhQPoAEz4L5TFGrEFBXfDO8NO35OpHshHhA84lMxn1DB52gzvvoDfy3
4lbpHx4iI5IZQcJBjVmt
=lyc/
-----END PGP SIGNATURE-----
