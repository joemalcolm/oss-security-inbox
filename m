X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2673" "Tuesday" "19" "May" "2020" "13:00:56" "+0200" "Ralph Dolmans" "ralph@nlnetlabs.nl" "<2f51168a-edbb-0418-abe5-7a016859ee24@nlnetlabs.nl>" "71" "[oss-security] Unbound - CVE-2020-12662, CVE-2020-12663" nil nil nil "5" "2020051911:00:56" "[oss-security] Unbound - CVE-2020-12662, CVE-2020-12663" (number mark "U       ralph@nlnetl May 19   71/2673  " thread-indent "\"[oss-security] Unbound - CVE-2020-12662, CVE-2020-12663\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Unbound - CVE-2020-12662, CVE-2020-12663" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31837 invoked by uid 550); 19 May 2020 11:02:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30581 invoked from network); 19 May 2020 11:01:09 -0000
Authentication-Results: dicht.nlnetlabs.nl; dmarc=fail (p=none dis=none) header.from=nlnetlabs.nl
Authentication-Results: dicht.nlnetlabs.nl; spf=fail smtp.mailfrom=ralph@nlnetlabs.nl
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nlnetlabs.nl;
	s=default; t=1589886057;
	bh=3uTcZiPuQNXUO7WrTtPX7nFhRLHE8Kb4jTzf8Xb/FOw=;
	h=From:Subject:To:Date;
	b=dRgS61zGHApaXvLh1+g6PXq5MwD1Cu3kd6nbU+UGPozYn4KAX77Qh3M/73iuPUQSB
	 zoSl6S4mWvEm6ByTPP28pLgdItXnXD8sZQHNmfn7WTvHB7JeV/qRjepzkIye2DKoT2
	 yeEiAOclnrPQrNS7sF69h+W3UxtxWyf8hctTuTC8=
From: Ralph Dolmans <ralph@nlnetlabs.nl>
Autocrypt: addr=ralph@nlnetlabs.nl; prefer-encrypt=mutual; keydata=
 xsBNBFLLw3QBCADwSt/VWovpRdtSFdwCW+/4ZaFEtIPAKgID42dzNOU+57LP3xuHiEeXZ0Ln
 hJRNmW4g5+01Fq4+bTeRyfL7MauIpumSqpnCpq5RZYDI8QqZftYnmm8XdjOjNLJXX3nfD0Tc
 1YD2psNHLR9YOT0WfiPGPuN8uTzE/EcFHuMgrWx4kdWQGO2EBOu1Ss1ejvK6xs5AIn209mWY
 CPZ1FA24AgvnOPPYH2i9Fx+MMoj3Aun/nJbnp7B/4kKQvCDBJNyDYxFdgfjT0lkM5bSa7PJq
 AkXB/HYCJnfw9+MLbkoozdMs9ddg9YaqwSDWe60pBgkRnvd4+69OgZJvSYxky4XYMNdJABEB
 AAHNIlJhbHBoIERvbG1hbnMgPHJhbHBoQG5sbmV0bGFicy5ubD7CwKwEEwECAD8CGyMGCwkI
 BwMCBhUIAgkKCwQWAgMBAh4BAheAFiEEIWFafyR46own3Sa4MJGNgnVyQiIFAlwOkIUFCRKo
 zpEAIQkQMJGNgnVyQiIWIQQhYVp/JHjqjCfdJrgwkY2CdXJCIrWVCACs6kNjNawJf1ikE1ky
 Svko1k4WE9dQtGVrD75eIEDWV5iKPbIGlTbZsveCkOK7Yu4Xl8Vh4ubVd/SD8rsaZ9DqBV98
 l/9rZBCa/XWL0s4N/NfTQgWOmlh6Ry+ZT0dhrmvmfx8LVKr+uwVxIcZJTK/YqnPksRR3ANiB
 Ge0FIbalSXEiwek+vxZwTJEA6BnsaMTQfzhDzrQ7NLe2ur372YKFai987J4T+kKIQLmipYov
 75ycyH210olwNpE264LgRqX59nGvT8ajoB5JGTiVjKl7l/J1mumC9ZIyG43POsHJzt/Pup3o
 7Izg2qnNE+fMoP3vqfCubx+/4XvzcY29B6KTzsBNBFLLw3QBCADhVosWT8J57fQKpUoQZwI6
 5FZWMXBJVfit+a/u/shciP4pCpeG/zLA4tg10VM3/ASnoHiPKyXzgzGdiJSk4Ssk38CPIW+g
 lX0IZMVk1bLoPixJumlyohGUcC34b6mqchA8UDUGZirwMWj8LR28qAZ7TDI2HbPEEgmlq/ri
 VcLtvKK20Pg0Z7wF3gdxIhnJQGfGgvQpI84dMW8CIF7+okkQTF/EphRA7YpduAD7Vn/CkRvV
 WrLLtURNO7hAoEE+dVa68sD5wpiRtSZTa/Wf/D1ZKhUTQ1dH1oMh6xF7rEuSZ2nzjXlyF10/
 dY+H0nfg3kLxb4CyUhdsyjUT+0+fHMoxABEBAAHCwJMEGAECACYCGwwWIQQhYVp/JHjqjCfd
 JrgwkY2CdXJCIgUCXA6QiQUJEqjOlQAhCRAwkY2CdXJCIhYhBCFhWn8keOqMJ90muDCRjYJ1
 ckIixHwH/jVXkqCXvtCnc9KARxb+wQNJZUHk2xOz6Pdsp+1l4uopk2p70ejboMK/Pi49tUlR
 NtMBb7aBZ350i0U/GVdlbcN7OhLnx4vB6PATOuiCAXC19fGYDxheOBVyEgpxgOzfVhiIwsMp
 gOBQwYbR9qnDwQIM2wl8tonMrkxQsnCXzw23cYgWTz99XzU2A6oVUSszIRSuM9n5ss0UYS5J
 VTkPzMFFanS6m16YULC6tAsDoQ5lcl6p3rqWFyo7ttGAiInvA7wPjFvO0GQHMjm6d8ygZ9et
 lyhIPi0VUbDONOko9XvQpVdBqqs6sbeMpydkbPPK33CRb4QVjAfzLkS1sAUz2MQ=
To: oss-security@lists.openwall.com
Message-ID: <2f51168a-edbb-0418-abe5-7a016859ee24@nlnetlabs.nl>
Date: Tue, 19 May 2020 13:00:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: [oss-security] Unbound - CVE-2020-12662, CVE-2020-12663

Hello,

Below is a copy of Unbound's CVE description that can be found at
https://nlnetlabs.nl/downloads/unbound/CVE-2020-12662_2020-12663.txt

Regards,
Ralph

==

Two vulnerabilities have been discovered in Unbound: CVE-2020-12662 and
CVE-2020-12663.

== Summary
= CVE-2020-12662
Unbound can be tricked into amplifying an incoming query into a large
number of queries directed to a target.

= CVE-2020-12663
Malformed answers from upstream name servers can be used to make Unbound
unresponsive.

== Affected products
All version of Unbound up to and including 1.10.0

== Description
= CVE-2020-12662
Researchers from Tel Aviv University discovered an issue in Unbound and
other DNS resolvers that makes it possible to have a single incoming
query result in a large number of outgoing queries. This amplification
makes it possible for Unbound to be used in a denial of service
attack. The researchers discovering this called this attack the NXNSattack.

This attack makes use of cache bypassing using random subdomains in the
NSDNAME in NS records. When these delegation records are received during
iteration, and the answer does not contain glue records, a resolver has
to send out a query to the get the IP address for one of the names. When
this query fails (for example because the random name does not exist) a
resolver will try the next one. A large set of NS records with random
names can result in a large number of outgoing queries going to the same
target. More details about this attack are available in the research
paper, available at http://www.nxnsattack.com/.

= CVE-2020-12663
Fuzzing of the Unbound code made us aware of issues in the parser of
received answers. Malformed answers received from upstream servers can
result in Unbound entering an infinite loop and thereby becoming
unresponsive. When compiled with --enable-debug it is also possible to
trigger an assertion, resulting in Unbound to crash.

== Solution
Download patched version of Unbound, or apply the patch manually.

+ Downloading patched version
Unbound 1.10.1 is released with the patch
https://nlnetlabs.nl/downloads/unbound/unbound-1.10.1.tar.gz

+ Applying the Patch manually
For Unbound 1.10.0 the patch is:
https://nlnetlabs.nl/downloads/unbound/patch_cve_2020-12662_2020-12663.diff

Apply the patch containing fixes for both issues, using:
'patch -p1 < patch_cve_2020-12662_2020-12663.diff'
then run 'make install' to install Unbound.

== Acknowledgments
We would like to thank Lior Shafir, Yehuda Afek, and Anat Bremler-Barr
from Tel Aviv University for their work on the NXNSattack.

We would like to thank the OSS-Fuzz project for the discoveries
resulting in CVE-2020-12663.
