X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2385" "Tuesday" "30" "June" "2015" "11:55:05" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150630155505.7B34152E4F5@smtpvbsrv1.mitre.org>" "63" "[oss-security] Re: Question about world readable config files and commented warnings" nil nil nil "6" "2015063015:55:05" "[oss-security] Re: Question about world readable config files and commented warnings" (number mark "        cve-assign@m Jun 30   63/2385  " thread-indent "\"[oss-security] Re: Question about world readable config files and commented warnings\"\n") "<559224EC.3080008@redhat.com>" ("<559224EC.3080008@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17957 invoked by uid 550); 30 Jun 2015 15:55:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17937 invoked from network); 30 Jun 2015 15:55:17 -0000
In-Reply-To: <559224EC.3080008@redhat.com>
Message-Id: <20150630155505.7B34152E4F5@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Tue, 30 Jun 2015 11:55:05 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Question about world readable config files and commented warnings
To: kseifried@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> # Database URI for the database that stores the package information. If it
> # contains a password, make sure to adjust the permissions of the config

The scope of CVE typically does not include opportunities for
improvements to file permissions. In some cases, these are covered in
CCE, e.g.,

  http://static.nvd.nist.gov/feeds/cce/cce-apache-httpd2.2-5.20130214.xls

  CCE-27780-6

  CCE Description

  Access to Apache's httpd.conf file should be configured appropriately.

  CCE Technical Mechanisms

  defined by (ServerRoot)\conf\httpd.conf's DACL  

  (httpd.conf is often a non-sensitive file.)

The scope of CVE does include implementation errors that the author of
a product wishes to announce as a vulnerability. So, for example, the
author of this:

  # Install binaries with mode 0755.
  install -m 0755 "$SRC/bin/mybinary1" "$DST/bin/mybinary1"
  install -m 0755 "$SRC/bin/mybinary2" "$DST/bin/mybinary2"

  # Install config files with mode 0600. IMPORTANT!
  install -m 0755 "$SRC/etc/myconf1.conf" "$DST/etc/myconf1.conf"
  install -m 0755 "$SRC/etc/myconf2.conf" "$DST/etc/myconf2.conf"

could ask for a CVE ID.

In the "If it contains a password, make sure" scenario that you
mentioned, it seems entirely reasonable for the default permissions to
reflect the author's preference for the normal case. (A password in a
URI might be rare.) In other words, the author may want to optimize
for situations where configuration data is read by users or
administrators who login with an unprivileged account for most
day-to-day work. Alternatively, in some cases a configuration approach
could be redesigned to use separate files for sensitive data elements.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVkrtEAAoJEKllVAevmvmsMPQH/1soaBh2VkpoRtGYFcjqCv9g
m//oc6mAOVEVaoAH+OoLGdblKX4kgq2mVTXkA2I1z094lgpBa3oylkB2IFxJty6I
y2N431SsObhkB6PUhFJCeC51H3QEBJ2Hi1cofSg4F5SxWjqKU3RM+kjOw7+evmtU
w447IaR9rp2wuJ81OO/+AjMEwubUQCsSlJPvpphOizLw1cSB4LGE55aolfTdzLRf
tyGvHtS4igtyysb7HHxG8HGJPcssEAv01W+wBvolFfEBFe6B1dCcPPuYYchffKVp
Bpqg1C5iAuPBxjnlsz93pT5yKS0MzXGAwb/nmSPB91TGvXcQnF/3qQxxTldECkw=
=tJ2b
-----END PGP SIGNATURE-----
