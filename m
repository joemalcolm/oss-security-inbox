X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1444" "Friday" "20" "March" "2015" "19:26:37" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150320232637.896A66C0019@smtpvmsrv1.mitre.org>" "37" "[oss-security] Re: CVE Request: Linux kernel execution in the early microcode loader." nil nil nil "3" "2015032023:26:37" "[oss-security] Re: CVE Request: Linux kernel execution in the early microcode loader." (number mark "        cve-assign@m Mar 20   37/1444  " thread-indent "\"[oss-security] Re: CVE Request: Linux kernel execution in the early microcode loader.\"\n") "<20150318122502.GA24063@chrystal.uk.oracle.com>" ("<20150318122502.GA24063@chrystal.uk.oracle.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13676 invoked by uid 550); 20 Mar 2015 23:26:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13654 invoked from network); 20 Mar 2015 23:26:49 -0000
In-Reply-To: <20150318122502.GA24063@chrystal.uk.oracle.com>
Message-Id: <20150320232637.896A66C0019@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Fri, 20 Mar 2015 19:26:37 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: Linux kernel execution in the early microcode loader.
To: quentin.casasnovas@oracle.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> The Linux kernel Intel early microcode loader was vulnerable to a stack
> overflow.

> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=f84598bd7c851f8b0bf8cd0d7c3be0d73c432ff4

Our understanding of the discussion is, very roughly:

  - given the design goals of this part of the Linux kernel, it is
    reasonable for someone (who has a realistic use case for the Linux
    kernel code) to assert that this stack overflow crosses privilege
    boundaries within their environment

  - there are probably many other environments in which a person may
    guess that this stack overflow crosses privilege boundaries, but
    it actually doesn't

We think that's enough to have a CVE. Use CVE-2015-2666.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVDKtkAAoJEKllVAevmvmsmfUH/RfgUk74bz3JbYvZmRzi8cXo
vPWxDcFH+QA13gWAAcDcQyFJhStOFaGCVw/ZBp+Di353dZIXbUgqwDQhfDtDKu2B
lpwFNiBmFsZkMe/yi3fnl7VENV4lUZzphnMlzvjsXbNMDwWKZqL92tGMbWSamKKI
3LeszniwXYfI1HXSC4lkD34DTnQ43ZyyO9T+oEF56ZvngzAXaHQH19Hvs7vbmUGj
3t3rxjcYUT8WmRFR1aGq+lbhimXfXxZqT+dTufbLYTRT60ZC/gygDyTzMKathRzx
7DTt2YYktHrDOx/loC2YxMi5JcEIlljMTa7xsWEvmiNmQIcMebXfYwVqX0l9Dks=
=fSth
-----END PGP SIGNATURE-----
