X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2503" "Saturday" "23" "May" "2015" "11:43:40" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150523154340.83C436C000E@smtpvmsrv1.mitre.org>" "57" "[oss-security] Re: QEMU 2.3.0 tmp vulns CVE request" nil nil nil "5" "2015052315:43:40" "[oss-security] Re: QEMU 2.3.0 tmp vulns CVE request" (number mark "        cve-assign@m May 23   57/2503  " thread-indent "\"[oss-security] Re: QEMU 2.3.0 tmp vulns CVE request\"\n") "<55537A9D.70306@redhat.com>" ("<55537A9D.70306@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28189 invoked by uid 550); 23 May 2015 15:44:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28165 invoked from network); 23 May 2015 15:44:00 -0000
In-Reply-To: <55537A9D.70306@redhat.com>
Message-Id: <20150523154340.83C436C000E@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Sat, 23 May 2015 11:43:40 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: QEMU 2.3.0 tmp vulns CVE request
To: kseifried@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> So some suspicious looking tmp usage in qemu ...

> Additionally there will no doubt be further QEMU issues found in the
> next few days/weeks as people start looking ...

We do not know of any further discussion of this, so it seems
best to assign a CVE ID only for the net/slirp.c issue in
the slirp_smb function:

>     snprintf(s->smb_dir, sizeof(s->smb_dir), "/tmp/qemu-smb.%ld-%d",
>              (long)getpid(), instance++);
>     if (mkdir(s->smb_dir, 0700) < 0) {
>         error_report("could not create samba server dir '%s'", s->smb_dir);
>         return -1;

The simplest attack would be a DoS in which someone creates
/tmp/qemu-smb.*-* files to prevent the legitimate creation of
s->smb_dir (mkdir will not follow a symlink).

Use CVE-2015-4037.

Michael Tokarev commented on most of the other issues. For
/tmp/pci.ids in niclist.pl (apparently maintained at
https://git.ipxe.org/ipxe.git/blob/HEAD:/src/util/niclist.pl), the
question is whether there's a requirement for a script of this type to
be within the scope of CVE. As far as we can tell, niclist.pl is not
executed in any default or configurable use of the product, and the
documentation doesn't mention executing it. Of course, some people do
execute it (it is sometimes mentioned in the product's forum such as
on the http://forum.ipxe.org/printthread.php?tid=6813 page). If
someone needs a CVE mapping to track the use of /tmp/pci.ids, please
specify what vulnerabilities exist. For example, if niclist.pl runs
"wget -O /tmp/pci.ids" and this follows a symlink from /tmp/pci.ids,
is this best considered a vulnerability in iPXE rather than a
vulnerability in wget? If /tmp/pci.ids is a plain file owned by
someone else, and isn't overwritten by niclist.pl, then is there an
XSS issue in format_nic_list_html?

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVYJ+cAAoJEKllVAevmvmsvcMIAMP1KWPYdFTbDYN+CJfxmVWR
MUwwcLyV43n59bmihGKIG+K+kD+4SNEegRbph9NEtN/XJ8DjDPzdMrcIx6rIkwDR
+tgUewL6Er2+KPFUSLNozne9GDTqaQJDsD4FZsLmX/m+30Wd9DP2PCWwHWatKb9M
NerlWH03BFBKqV22bAA3EA2aBuCHt+QJODQrMvGt9m/DYVk/XFn21k6SE0qWiwlY
G+U06txLjxQ/KENG4Nro/6geYPZJMGUlFbLwcX87YVen9gRrEIcTlzdJjRRNz9DS
jXH1IdGhxVVya/CPNTS224/y7J2nKvfVpSe3GQM3eFUQFahkFFzb9GVDc2ZEAXI=
=LNB0
-----END PGP SIGNATURE-----
