X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1042" "Wednesday" "8" "April" "2015" "12:54:30" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150408165430.D12066C0097@smtpvmsrv1.mitre.org>" "31" "[oss-security] Re: CVE request netfilter connection tracking accounting. - Linux kernel" nil nil nil "4" "2015040816:54:30" "[oss-security] Re: CVE request netfilter connection tracking accounting. - Linux kernel" (number mark "        cve-assign@m Apr  8   31/1042  " thread-indent "\"[oss-security] Re: CVE request netfilter connection tracking accounting. - Linux kernel\"\n") "<158444692.10419768.1428453501546.JavaMail.zimbra@redhat.com>" ("<158444692.10419768.1428453501546.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29707 invoked by uid 550); 8 Apr 2015 16:54:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28654 invoked from network); 8 Apr 2015 16:54:42 -0000
In-Reply-To: <158444692.10419768.1428453501546.JavaMail.zimbra@redhat.com>
Message-Id: <20150408165430.D12066C0097@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Wed,  8 Apr 2015 12:54:30 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request netfilter connection tracking accounting. - Linux kernel
To: wmealing@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=223b02d923ecd7c84cf9780bb3686f455d279279
> http://marc.info/?l=netfilter-devel&m=140112364215200&w=2

> Their sum is definitely bigger than 256.

> - u8 offset[NF_CT_EXT_NUM];
> - u8 len;
> + u16 offset[NF_CT_EXT_NUM];
> + u16 len;

Use CVE-2014-9715.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVJVxeAAoJEKllVAevmvmskWoH/i6SqVx8TAtlBbPDGxeWNiW1
3yqsMeAU1efau8HS++UtirvuhW947ZcnLNaeEms3ugmsegReJYC7hnSp4oC7L315
MDh1ZYmx5ea60N3/pxpl46vkBu7hC+O8CuTrIfVJhXdTDcV4YLcIohgDg3p5YCpV
v7XBa3FhOnNAFmmiGXRsUc12vNb+xf9GMvOyOHzzueL2wfa/YwvPlpzZZWfdiuM+
od3p5M9aQBvVot4j73qlXu5kbfMSN09cH8c1BOPhwDi/8kEQNLrU+6+FrYi7f9hb
qkv7C6zYT0f3Mt7cp6DwsQQmPvrqymTEaaNUyZWBE4U0+VyN8CN0/tIsLhw/OKk=
=BEXb
-----END PGP SIGNATURE-----
