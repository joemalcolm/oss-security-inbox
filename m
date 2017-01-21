X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2129" "Friday" "20" "January" "2017" "22:22:43" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<efc56aaa73c84094b27e5500557388a2@imshyb01.MITRE.ORG>" "46" "[oss-security] Re: CVE REQUEST: linux kernel: process with pgid zero able to crash" "^CC:" nil nil "1" "2017012103:22:43" "[oss-security] Re: CVE REQUEST: linux kernel: process with pgid zero able to crash" (number mark "        cve-assign@m Jan 20   46/2129  " thread-indent "\"[oss-security] Re: CVE REQUEST: linux kernel: process with pgid zero able to crash\"\n") "<1484880112.11949.24.camel@redhat.com>" ("<1484880112.11949.24.camel@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27855 invoked by uid 550); 21 Jan 2017 03:22:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27834 invoked from network); 21 Jan 2017 03:22:55 -0000
In-Reply-To: <1484880112.11949.24.camel@redhat.com>
Message-ID: <efc56aaa73c84094b27e5500557388a2@imshyb01.MITRE.ORG>
MIME-Version: 1.0
Content-Type: text/plain
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<Jesse.Hertz@nccgroup.trust>, <wmealing@redhat.com>
Date: Fri, 20 Jan 2017 22:22:43 -0500
From: <cve-assign@mitre.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE REQUEST: linux kernel: process with pgid zero able to crash
To: <harshula@redhat.com>

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> [] "A process that is in the same process group as the ``init'' process
> (group id zero) can crash the Linux 2 kernel with several system calls
> by passing in a process ID or process group ID of zero. The value zero
> is a special value that indicates the current process ID or process
> group. However, in this case it is also the process group ID of the
> process."
> 
> The risk is that a non-root user can trigger a kernel crash on a
> modified RHEL 6 system where the kernel runs a process that can be
> exploited.
> 
> https://bugzilla.redhat.com/show_bug.cgi?id=1358840
> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=f106eee10038c2ee5b6056aaf3f6d5229be6dcdd
> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=f20011457f41c11edb5ea5038ad0c8ea9f392023
> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=fa2755e20ab0c7215d99c2dc7c262e98a09b01df

>> all of these showed up in the 2.6.35-rc1 release. Any distro
>> based on something older than that needs to worry here.

Use CVE-2010-5328.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYgtL6AAoJEHb/MwWLVhi2U7sP/i3aar2nWzZFv4OfmS3fhGCQ
65QcUWol3gv5BN4dLKgOaWLWMUNisXadbewf1KeICkBXgCtAChIiXf1KCAd4Qerm
ehCGtAD89s4Enc7DqTJFn/vgzcJr6JrQBuYKUf/IMbrixV008ZOogIWlORxCJYbc
vIeOFLRIFvnGmpPj3m9+G8XtWmM+AJKQWTlXiSDSrSkHKEBbPgaZNSMvK/poa8EY
1m9GCMqPepvysqkQHsjbZnxL//C0SY/aqREuyCZzgTvBeyLlzxijud9B9y0Afm69
sj79efvTBywCyr9d1sjZiI1XBaGLQ+oLacQcNfHKJP6GadQ8yUj7OP7Djasm/RZe
EEAn4mzvyQ0nGCGvRAMUrv1SV7EECpidEa1rslbBKYngTYR/vxm1I0LRNorpwe7J
p+1hIWFI8n6uf0QRJV4PyWMVbz3QwGbzwDLTNieuWUQ5A9HxufS0lj3aTN61VVC4
OxVDXpyXeC7Rx0pJRXrgWjOJZc4gblBMUG18qfnV9s5xARo/SsChtkvuv36fzAYj
ewZeS+ez9cK4OsFQsjFSgnPL2zqbbOxh/gDLFs4P3gqRCJz6zFFH+PxXLCvw6xUI
dfibuQbUyCWR048NY3pu05tj7PwoOliqSfxHyYxLKfAqI76E026EaGGQdu7aSJ1k
dfDhxcid2Tl7PBW1WdFp
=m6b1
-----END PGP SIGNATURE-----
