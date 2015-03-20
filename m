X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1826" "Friday" "20" "March" "2015" "19:25:12" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150320232512.B11316DC005@smtpvmsrv1.mitre.org>" "45" "[oss-security] Re: CVE Request: Linux kernel unprivileged denial-of-service due to mis-protected xsave/xrstor instructions." nil nil nil "3" "2015032023:25:12" "[oss-security] Re: CVE Request: Linux kernel unprivileged denial-of-service due to mis-protected xsave/xrstor instructions." (number mark "        cve-assign@m Mar 20   45/1826  " thread-indent "\"[oss-security] Re: CVE Request: Linux kernel unprivileged denial-of-service due to mis-protected xsave/xrstor instructions.\"\n") "<20150318101405.GA19065@chrystal.uk.oracle.com>" ("<20150318101405.GA19065@chrystal.uk.oracle.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5513 invoked by uid 550); 20 Mar 2015 23:25:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5486 invoked from network); 20 Mar 2015 23:25:25 -0000
In-Reply-To: <20150318101405.GA19065@chrystal.uk.oracle.com>
Message-Id: <20150320232512.B11316DC005@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, jamie.iles@oracle.com, mr.a.xavier@gmail.com
Date: Fri, 20 Mar 2015 19:25:12 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: Linux kernel unprivileged denial-of-service due to mis-protected xsave/xrstor instructions.
To: quentin.casasnovas@oracle.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> a flaw in the way the xsave/xrstor (and their alternative
> instructions) were being protected against a fault in kernel space

We believe that this report can have at least one CVE ID for a fixed
issue.

Does anyone have a preference for two CVE IDs divided in this way:

  - one CVE ID for the
    https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit?id=f31a9f7c71691569359fa7fb8b0acaa44bce0324
    change that was introduced in 3.17. Our incomplete understanding
    from http://openwall.com/lists/oss-security/2015/03/18/6 is that
    this change had security-relevant value even though it was later
    determined to be mis-protecting.

  - a second CVE id for the
    https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit?id=06c8173eb92bbfc03a0fe8bb64315857d0badd06
    change

? Otherwise, we will assign only the latter.

https://lkml.org/lkml/2015/3/17/462 is about "This is to prevent
future misuses of the __ex_table entry like there was for
xsaves/xrstors." Typically, code improvements for "prevent future
misuses" purposes would not lead to additional CVE IDs.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVDKtrAAoJEKllVAevmvmspVsH/0nSGMudMjV5OyQSm8Ascnk1
CxANkao5I6XjH2CKu1tyZHLHnlEnZ3nwIQf94znq77BOrqTs4kv4MRLfgsz01vWI
nl6ZnoxFM5gV4bgvhLHJWuv5x9wsZbEl0jpPRg9NflUa4EDqyEDUZbjZZf+Rw1bc
R54CyBbfGXf7tbkPX3jcM6dGqXnaCfDyPnJiElDIUpHtBEZnm8fwdvhYHOBqWROn
tMeLnORGQIiPM7GxnsMCTL5a4nsRtbXeLSmIDVlU7wEB60oxB/ZCpzg9CSHPBYEk
szx2EjCRklpMHbFLEvWO3ozI47aiy5iXkUUFSOSmJR4mVvOg+bJdUpt0dr15GL8=
=/+Zb
-----END PGP SIGNATURE-----
