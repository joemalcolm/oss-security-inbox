X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2609" "Thursday" "7" "January" "2016" "19:54:24" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160108005424.5F00C6C005A@smtpvmsrv1.mitre.org>" "60" "[oss-security] Re: CVE Request: netfilter-persistent: (local) information leak due to world-readable rules files" nil nil nil "1" "2016010800:54:24" "[oss-security] Re: CVE Request: netfilter-persistent: (local) information leak due to world-readable rules files" (number mark "U       cve-assign@m Jan  7   60/2609  " thread-indent "\"[oss-security] Re: CVE Request: netfilter-persistent: (local) information leak due to world-readable rules files\"\n") "<20160105101345.GA13653@lorien.valinor.li>" ("<20160105101345.GA13653@lorien.valinor.li>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24572 invoked by uid 550); 8 Jan 2016 00:54:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24551 invoked from network); 8 Jan 2016 00:54:36 -0000
From: cve-assign@mitre.org
To: carnil@debian.org
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <20160105101345.GA13653@lorien.valinor.li>
Message-Id: <20160108005424.5F00C6C005A@smtpvmsrv1.mitre.org>
Date: Thu,  7 Jan 2016 19:54:24 -0500 (EST)
Subject: [oss-security] Re: CVE Request: netfilter-persistent: (local) information leak due to world-readable rules files

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> iptables-persistent (in Debian) is a loader for netfilter configuration
> using a plugin-based architecture.
> 
> iptables-persistent is vulnerable to a (local) information leak due to
> world-readable rules files. It was reported in Debian in
> 
> https://bugs.debian.org/764645
> 
> And fixed via
> 
> https://anonscm.debian.org/cgit/collab-maint/iptables-persistent.git/commit/?id=37905034f07e94c4298a1762b39b7bbd4063c0df

Do you have any further information about why this should be
considered a vulnerability in general? We realize that it might, at
least, be considered a vulnerability for Debian systems because of
"Tags: security" in the original report.

For example, is there a specific piece of data in the files that is
always supposed to be private?

https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=764645#5 indicates
that an unprivileged user can obtain information by directly opening
the files, but cannot obtain this information with an
"/sbin/iptables -L" command. This does not, by itself, establish that
a security feature has been defeated. It is possible that it was
simply inconvenient to implement the -L option in a way that provided
access to unprivileged users.

What we are trying to avoid is a situation in which CVE IDs are
assigned solely because a system administrator might not want files to
be readable by unprivileged users. For example, maybe someone would
prefer stricter /etc/hosts.allow permissions to prevent rogue local
users from discovering the names of other hosts that possibly have
symmetric "allow" policies.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWjwg3AAoJEL54rhJi8gl5KeEP/jez+zmk3CO4xMx9f5yWwSSR
1NHAQ6YpSOWBrrBz1BKvdVYYkfS+OgjvI7Y7XMTPgXG6QRYrYGVa8QqLkE1TlFUr
7q3pgONQ9+O+B15J8cZNSYXcu8paEi641Jrui25jyltadL++FYblJ0kF7uL9q7fF
H/lAsZPKNAID3QBEmhtF7kMrHPmL5+VpWzaxRnnr71nO8v0V5sdUJToXCXI9ZOT8
GQVkAajWcFZX7EqHRchXGGTC2bVXm4UThTLm/HxKTev1rUKt3FbFxJRtLA1KYNBM
jO8ZZ+/zJuY1Yn8UsLhPCornccafv1oOqsxSh0WXWDhYpedM9onlqUeZqeTip/yi
K6nbK1WgcUD7fKJVRjBgmzJbcIw1WtYk0BQg51nXnURcbztZ1ICQwCtEvHwC4xsP
kXBTsXCYHHyzTIPRN2LWWVWzFUMxeDL7PGv8Glf+HGx2OQdycHZlhdKO/eVLy/o0
k/QfcoNxoO4xh42Q9LkyLM/NQ+DNk1bpfMsfOBiFVPdzyzThU5l610EIxVWBumdG
DWWefmwjSryUtuTL7PoGkbUvvExCHmpgzoGTcBAiRHwoA+CZDxqZi0epoODGUkTo
eUbVFKkepd3hO6Bv3v5O0NLIQ3SCRtUSfp7JTFaWLRfxdlDuod7V4Khxwvwwj6lA
QBOU0aocrXDg6aAoneV5
=FspR
-----END PGP SIGNATURE-----
