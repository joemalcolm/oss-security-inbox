Received: (qmail 1659 invoked by uid 550); 29 Apr 2026 20:23:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1632 invoked from network); 29 Apr 2026 20:23:17 -0000
Date: Wed, 29 Apr 2026 16:23:08 -0400
From: Jan Schaumann <jschauma@netmeister.org>
To: oss-security@lists.openwall.com
Message-ID: <afJorKIje4O6dXbH@netmeister.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] CVE-2026-31431: CopyFail: linux local privilege scalation

Hi,

This is currently making the rounds and looks pretty
severe:

https://copy.fail/

A local privilege escalation vulnerability with a
working PoC python script exploiting a logic flaw in
the kernel crypto API (AF_ALG) affecting most Linux
distributions.

More detailed write-up:
https://xint.io/blog/copy-fail-linux-distributions

"in 2017, an optimization was added to algif_aead.c
[72548b093ee3](https://github.com/torvalds/linux/commit/72548b093ee3)
to perform AEAD operations in-place.  For decryption,
the code copied AAD and ciphertext data from the TX
SGL into the RX buffer, but chained the tag pages by
reference using sg_chain(). It then set req->src =
req->dst. Page cache pages from splice were now in the
writable destination scatterlist.  authencesn's write
at dst[assoclen + cryptlen] now walked into those
chained tag pages, creating this bug."


"During AEAD decryption, _aead_recmsg() moves the
queued tag bytes out of the TX SGL and chains them
onto the RX SGL at algif_aead-C:235-244, then submits
the AEAD request with that same RX SGL head as both
sre and dst at algif aead.C: 251-252. When the tag
bytes originally came from the splice path in
af_alg_sendmsg() (af alg.C: 1049-1064), those tail
entries still reference file page-cache pages. Most
AEAD implementations only read the tag, but
crypto_authenc_es n_decrypt () treats equal sro and
dst as an in-place buffer and writes 4 bytes into the
tag region at authencesn - C:277-279.
The overwrite happens before the tag check that later
returns -EBADMSG at authencesn- C: 222-223, so a
failing decrypt still corrupts the spliced file-backed
page."
[...]
"This gives a local unprivileged attacker a controlled
page-cache write primitive against any readable file.
In the minimal setup above, each request overwrites 4
attacker-chosen bytes at the spliced file offset;
repeated requests can patch multiple offsets. Because
the corruption affects cached file pages rather than a
private copy, it can tamper with read-only or setuid
executable content and may enable local privilege
escalation or code execution until the page is
evicted. Exploitability is narrower than a generic
AEAD bug because it specifically requires an
authencesn decrypt path and splice-backed tag pages,
but it does not require a valid authentication tag.



The kernel code changes:

https://lore.kernel.org/linux-cve-announce/2026042214-CVE-2026-31431-3d65@gregkh/T/#u

In the Linux kernel, the following vulnerability has
been resolved:

crypto: algif_aead - Revert to operating out-of-place

This mostly reverts commit 72548b093ee3 except for the
copying of the associated data.

There is no benefit in operating in-place in
algif_aead since the source and destination come from
different mappings.  Get rid of all the complexity
added for in-place operation and just copy the AD
directly.

The Linux kernel CVE team has assigned CVE-2026-31431
to this issue.

Affected and fixed versions
===========================

Issue introduced in 4.14 with commit
72548b093ee38a6d4f2a19e6ef1948ae05c181f7 and fixed in
6.18.22 with commit
fafe0fa2995a0f7073c1c358d7d3145bcc9aedd8

Issue introduced in 4.14 with commit
72548b093ee38a6d4f2a19e6ef1948ae05c181f7 and fixed in
6.19.12 with commit
ce42ee423e58dffa5ec03524054c9d8bfd4f6237

Issue introduced in 4.14 with commit
72548b093ee38a6d4f2a19e6ef1948ae05c181f7 and fixed in
7.0 with commit
a664bf3d603dc3bdcf9ae47cc21e0daec706d7a5

https://git.kernel.org/stable/c/fafe0fa2995a0f7073c1c358d7d3145bcc9aedd8
https://git.kernel.org/stable/c/ce42ee423e58dffa5ec03524054c9d8bfd4f6237
https://git.kernel.org/stable/c/a664bf3d603dc3bdcf9ae47cc21e0daec706d7a5

----

PoC:
https://github.com/theori-io/copy-fail-CVE-2026-31431/blob/main/copy_fail_exp.py


Mitigation:

# echo "install algif_aead /bin/false" > /etc/modprobe.d/disable-algif.conf
# rmmod algif_aead 


-Jan
