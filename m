X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1156" "Tuesday" "19" "May" "2015" "15:34:01" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150519193401.5A7BDB2E0B3@smtpvbsrv1.mitre.org>" "35" "[oss-security] Re: CVE request: python-tornado: XSRF cookie allows side-channel attack against TLS (BREACH)" nil nil nil "5" "2015051919:34:01" "[oss-security] Re: CVE request: python-tornado: XSRF cookie allows side-channel attack against TLS (BREACH)" (number mark "        cve-assign@m May 19   35/1156  " thread-indent "\"[oss-security] Re: CVE request: python-tornado: XSRF cookie allows side-channel attack against TLS (BREACH)\"\n") "<20150519090148.GB24390@mail.corp.redhat.com>" ("<20150519090148.GB24390@mail.corp.redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5864 invoked by uid 550); 19 May 2015 19:34:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5846 invoked from network); 19 May 2015 19:34:13 -0000
In-Reply-To: <20150519090148.GB24390@mail.corp.redhat.com>
Message-Id: <20150519193401.5A7BDB2E0B3@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Tue, 19 May 2015 15:34:01 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: python-tornado: XSRF cookie allows side-channel attack against TLS (BREACH)
To: vkaigoro@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> Tornado 3.2.2
> 
> June 3, 2014
> 
> Security fixes
> 
> The XSRF token is now encoded with a random mask on each request. This
> makes it safe to include in compressed pages without being vulnerable
> to the BREACH attack.

> https://github.com/tornadoweb/tornado/commit/1c36307463b1e8affae100bf9386948e6c1b2308
> https://bugzilla.novell.com/show_bug.cgi?id=930362
> https://bugzilla.redhat.com/show_bug.cgi?id=1222816

Use CVE-2014-9720.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVW4+7AAoJEKllVAevmvmswHgH/AzxCbHIYYgrgBckagxm7dFB
nXP7n3H4Zi7fkS9VOl1E6KG03ckUh/4uPLNJ7TQhMdC/vj+iBJvR4Ek3PJVhh1pd
Xz4XYVPnLFtdFbFCkdLwEw1ocSD2IyGYXWzjtbQhgZBA8uGOSnJGjSqmHpZ/khcu
aEwyNC8guWp2KnwWI0yVnNXvfOjM6h97orEa4hcntIzdHtfejKeIMtyrr1g5pDT7
zog7fZZqKP3X2HbFhinfq/VARhpCdJdRykVvp2WGm8UEl2/rWM19pMHql37QYvUA
43GOIqbJWWMVQ1IqFvLfrdZOvH5BgHLUzTPZreuoJz1Qes+2KU/bVgP4IKzlVKU=
=kmNI
-----END PGP SIGNATURE-----
