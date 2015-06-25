X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1063" "Thursday" "25" "June" "2015" "05:47:26" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150625094726.A8DDB6C0636@smtpvmsrv1.mitre.org>" "27" "[oss-security] Re: CVE request -- Linux kernel - kvm: x86: out-of-bounds memory access in pit_ioport_read function" nil nil nil "6" "2015062509:47:26" "[oss-security] Re: CVE request -- Linux kernel - kvm: x86: out-of-bounds memory access in pit_ioport_read function" (number mark "        cve-assign@m Jun 25   27/1063  " thread-indent "\"[oss-security] Re: CVE request -- Linux kernel - kvm: x86: out-of-bounds memory access in pit_ioport_read function\"\n") "<20150625091608.GG18896@dhcp-25-225.brq.redhat.com>" ("<20150625091608.GG18896@dhcp-25-225.brq.redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28564 invoked by uid 550); 25 Jun 2015 09:47:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28543 invoked from network); 25 Jun 2015 09:47:38 -0000
In-Reply-To: <20150625091608.GG18896@dhcp-25-225.brq.redhat.com>
Message-Id: <20150625094726.A8DDB6C0636@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu, 25 Jun 2015 05:47:26 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request -- Linux kernel - kvm: x86: out-of-bounds memory access in pit_ioport_read function
To: pmatouse@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> Linux kernel versions before
> http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=ee73f656
> had the same problem as QEMU/CVE-2015-3214.

CVE-2015-3214 is also the correct CVE ID for this vulnerability in the
Linux kernel. pit_ioport_read in the Linux kernel and pit_ioport_read
in QEMU are not independent implementations.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVi83GAAoJEKllVAevmvmsu0gH/RkNZNkywsxWGKNgwIc+RzUd
E8qLDvzPidUJVOv6Jzf/thcNT8r4djrzra6ntiKhlxZVdVU0k5bGQr8FSWZ/OphB
2bDOM4PTrR1DXNPDFfyMCRNWT3Q22FlYbk6LZL45+Mhh+hPpybCUQ0xpznNSJ6e0
ec+RXB9I1RLZ10+d4cMRIv9z1wyvYD/bDXhs7WktAn3IrgRsiXeiao8QUh7zG9h1
Pw6vqWeTnbzX5Tmoawe84Wruk6y+3Yoi5UuYHASFI9WqH2EOxXdy9gdrRBKBE87t
OcIhBoMLGH6jpfabyvQTpnwSajy8Eaqxk5waAUbFuX6dYZ35cK2qbQ1us4WjhMo=
=H7PK
-----END PGP SIGNATURE-----
