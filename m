X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2101" "Monday" "22" "June" "2015" "23:06:52" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150623030652.CBA40B2E50D@smtpvbsrv1.mitre.org>" "49" "[oss-security] Re: CVE request: Linux kernel - bpf jit optimization flaw can panic kenrel." nil nil nil "6" "2015062303:06:52" "[oss-security] Re: CVE request: Linux kernel - bpf jit optimization flaw can panic kenrel." (number mark "U       cve-assign@m Jun 22   49/2101  " thread-indent "\"[oss-security] Re: CVE request: Linux kernel - bpf jit optimization flaw can panic kenrel.\"\n") "<1828271780.19122892.1435025594570.JavaMail.zimbra@redhat.com>" ("<1828271780.19122892.1435025594570.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5356 invoked by uid 550); 23 Jun 2015 03:07:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5317 invoked from network); 23 Jun 2015 03:07:04 -0000
From: cve-assign@mitre.org
To: wmealing@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <1828271780.19122892.1435025594570.JavaMail.zimbra@redhat.com>
Message-Id: <20150623030652.CBA40B2E50D@smtpvbsrv1.mitre.org>
Date: Mon, 22 Jun 2015 23:06:52 -0400 (EDT)
Subject: [oss-security] Re: CVE request: Linux kernel - bpf jit optimization flaw can panic kenrel.

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> In the problematic case, the compiler fails to optimise a set
> of specially crafted instructions. This creates a problem when this faulty
> instruction list is used during filtering and the CPU can execute an invalid
> instruction (in receive_pkt).
> 
> This can be triggered as an non-root user, as they can start a server on a
> ephemeral port and the packet filter with a specially crafted filter.
> 
> These incorrect instructions will run when the server receives a packet and execute
> the buggy instructions.

> https://git.kernel.org/cgit/linux/kernel/git/davem/net.git/commit/?id=3f7352bf21f8fd7ba3e2fcef9488756f188e12be

> x86: bpf_jit: fix compilation of large bpf programs
>
> x86 has variable length encoding. x86 JIT compiler is trying to pick
> the shortest encoding for given bpf instruction. While doing so the
> jump targets are changing, so JIT is doing multiple passes over the
> program. Typical program needs 3 passes. Some very short programs
> converge with 2 passes. Large programs may need 4 or 5. But specially
> crafted bpf programs may hit the pass limit and if the program
> converges on the last iteration the JIT compiler will be producing an
> image full of 'int 3' insns. Fix this corner case by doing final
> iteration over bpf program.
> 
> - for (pass = 0; pass < 10; pass++) {
> + for (pass = 0; pass < 10 || image; pass++) {

Use CVE-2015-4700.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJViMx/AAoJEKllVAevmvmszzcH/1ohdtc1XTzmN0ZMTkRXLPT3
N2RFIEzSfUNtr3rwG28gUd7mfddN/1ANJ3d634LT0fS7Nw/OZIeaZEdQI89TZYwJ
tNhg+JvCLBLtCmqExFaG7Et3PiYSRGETfDUIYQFAZgcgXfu7nhLnvoJPkx6UMl+7
MY07c84T7pFYaJif8frMTzjQ9DQxcpacIUOA7dyyvBxKnoI0eJX8OtGeMffjmwtl
5UWnZrIYrmeYrlnacIaPUha7qOrjVn118dBUSm5ZvZsk83meHcogka9V5fI7lUPp
ORHq7GwiuCiaYv9B52TxrH845z2+C/FmT8zWPXsVamPHgFC+OgrhyN0uNweVN8Y=
=7y5J
-----END PGP SIGNATURE-----
