X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2876" "Tuesday" "20" "October" "2015" "03:36:19" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20151020073619.CE49C6C0018@smtpvmsrv1.mitre.org>" "62" "[oss-security] Re: CVE request for sqlalchemy-utils" nil nil nil "10" "2015102007:36:19" "[oss-security] Re: CVE request for sqlalchemy-utils" (number mark "U       cve-assign@m Oct 20   62/2876  " thread-indent "\"[oss-security] Re: CVE request for sqlalchemy-utils\"\n") "<1445196119.3560107.413423481.7C9B0859@webmail.messagingengine.com>" ("<1445196119.3560107.413423481.7C9B0859@webmail.messagingengine.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15721 invoked by uid 550); 20 Oct 2015 07:36:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15695 invoked from network); 20 Oct 2015 07:36:31 -0000
From: cve-assign@mitre.org
To: robert@robert.io
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <1445196119.3560107.413423481.7C9B0859@webmail.messagingengine.com>
Message-Id: <20151020073619.CE49C6C0018@smtpvmsrv1.mitre.org>
Date: Tue, 20 Oct 2015 03:36:19 -0400 (EDT)
Subject: [oss-security] Re: CVE request for sqlalchemy-utils

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://github.com/Netflix/lemur/issues/117
> https://github.com/kvesteri/sqlalchemy-utils/issues/166

> does not use a random IV when encrypting with AES in CBC mode

> I noticed the issue when reviewing the code for Netflix's Lemur tool
> and they were not previously aware of the issue

We think that, of the plausible alternatives here, the best choice is
to assign a CVE ID to Lemur 0.1.4 because of this "were not previously
aware of the issue" (in other words, they wanted to have the usual
random-IV behavior and had selected a library that didn't offer that
behavior). Use CVE-2015-7764.

https://github.com/kvesteri/sqlalchemy-utils/issues/166#issuecomment-146252997
indicates that the without-random-IV behavior was intentional within
sqlalchemy-utils itself. Also, the sqlalchemy-utils documentation
apparently doesn't advertise any specific security properties for its
encryption. For example:

  http://sqlalchemy-utils.readthedocs.org/en/latest/data_types.html#module-sqlalchemy_utils.types.encrypted

just says "provides a way to encrypt and decrypt values." If it had
stated "encrypt and decrypt values with AES," then there might have
been a reasonable argument that random-IV behavior is required, i.e.,
otherwise, a user's expectations about standard practices wouldn't be
satisfied. In other words, the sqlalchemy-utils documentation omits
potentially useful facts but isn't directly misleading. CVE IDs
typically aren't assigned in that situation.

(We do realize that the OSS release of Lemur is very new, and that
sqlalchemy-utils has much greater usage, e.g., it has a Debian
package. We don't have any information about whether Lemur or any
other Netflix OSS package is already in widespread use outside of
Netflix, e.g., because it is included in a major Linux distribution or
for another reason.)

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWJe5MAAoJEL54rhJi8gl5Q5QP/2GJdxeDYRAQeFExqnTOhe3I
C66gTYDLwrubh5xRVlLAol9b+tGpvqJGpA8V1xONgQfocypVdTaLdOwi7YLeMqAI
JD7kqSp2b4oZgat6g7WHN6UW04q0yg5jREqhxRRvdnWRYqzSdiQY0BRXvOqIHe2Y
H4nqS5jeCwgyXFt9JtU2rZzJl4cmm1qhfRNki+iqCXE/1xDrCsoW62Fhg+kY6orn
UOYig8vFHp9uIFkf5qn4p1A/Pc0YKwbD/DtXdQoC7LOM4RZMuw51KF6M4lqAvo6x
LJ4T8xlFcCiJYnGU+WHSY91GWjuoebRb49UbMv3z8TxnNTTupWkFd/55I7U9VH5G
Jr1xNUsKUCA2CCBP7t1jvivmYsbX9DfFY8Th0ZamWcQlqfWcspCYMtc1gBATk+3P
UHFwSyWYL74mH/LHW8Cwi9tLq4DScdymoCTjvLwpN8KIJGVCDzm7klh+P1SvC24w
ZPiXUhkUdqxdPVGLYW0eZsL6XQqtH/eb/BesyuaW5Myv7aHho3oLhvGx37MrL9vn
dRLUmAMYqRWioaTAvf3vkPQGz0C9ePaqu/RiT7jIFx5Cb+5fhrv/rNvF8C8qbqAw
vw+NsWZ9zExtKgeP+A+3fzWOtMjTHKKLsbHUHea3gy4s+hklvH37T+jErmgFYyZ9
dbmggO105ZSb7lGbOlLM
=IBJp
-----END PGP SIGNATURE-----
