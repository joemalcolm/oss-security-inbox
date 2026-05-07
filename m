Received: (qmail 11432 invoked by uid 550); 7 May 2026 04:29:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3194 invoked from network); 7 May 2026 04:29:20 -0000
Date: Thu, 7 May 2026 06:27:08 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: xw x <v3rdant.xiang@gmail.com>
Message-ID: <20260507042708.GA2912@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.4.2.3i
Subject: [oss-security] Linux kernel: KTLS + sockmap "Reverse Order" Use-After-Free / Data Corruption

Hi,

V3rdant, CC'ed here, brought this Linux kernel issue to linux-distros on
March 18, and apparently also to s@k.o at about the same time, citing
the (outdated) syzkaller "Reporting Linux kernel bugs" instructions:

https://www.openwall.com/lists/oss-security/2026/05/03/2

So we immediately had a coordination problem, which V3rdant acknowledged:

On Wed, Mar 18, 2026 at 10:28:23PM +0000, x xw wrote:
> I apologize, I sent the email because of this link: https://github.com/google/syzkaller/blob/master/docs/linux/reporting_kernel_bugs.md, which mentions, "There should ideally be no delay between reports to security@kernel.org and linux-distros@vs.openwall.org."
> 
> I will disclose this vulnerability on March 31st.
> 
> Regarding CVE-2025-37756, I am certain it is exploitable, not just for DOS. The original discoverer and the exploiter are not the same person; the exploit is already publicly available: https://github.com/google/security-research/tree/master/pocs/linux/kernelctf/CVE-2025-37756_mitigation. Therefore, my exploit conditions are the same.
[...]
> V3rdant.

So we got a planned public disclosure date anyway, which I recorded for
my distros list statistics.

Then there were a few more messages where V3rdant informed linux-distros
that s@k.o responded and that the issue is now semi-public on netdev:

https://lore.kernel.org/all/20260321033027.4044119-1-v3rdant.xiang@gmail.com/
https://lists.openwall.net/netdev/2026/03/21/49 (same as above)

As you can see from the netdev thread, the fix V3rdant proposed was
rejected (for a reason).  I could not find any attempt at another fix.

It looks like literally everyone dropped the ball on this issue after
that point.  This includes two distros who had volunteered for:

https://oss-security.openwall.org/wiki/mailing-lists/distros#contributing-back

9. Stay on top of issues to ensure progress is being made, remind others
when there's no apparent progress, as well as when the public disclosure
date for an issue is approaching and when it's finally reached (unless
the reporter beats you to it by making their mandatory posting to
oss-security first) - primary: Gentoo, backup: Amazon

I since heard back from Gentoo on this, but no word from Amazon yet.

Unfortunately, I did not approach fully processing the distros list
statistics for March until early May this time (I'd normally do that in
mid-April), and so didn't rediscover that this issue fell through the
cracks earlier.  Once I did, I pinged linux-distros about the issue
again, suggesting we could still have a few days of semi-embargo since
we exceeded the usual deadline by so much already, but no one cared.  So
here I am doing what V3rdant should have done - taking care of the final
public disclosure step, belatedly.

I also note that the related CVE-2025-37756 is rated CVSS 3.3 Low by
Red Hat and CVSS 5.5 by NVD.  Both claim there's only Availability
impact.  This is inconsistent with existence of a code execution exploit
at the kCTF link in V3rdant's quoted message above.  There are
mitigating factors on specific distros, such as RHEL9 building with
CONFIG_TLS=m and the kernel not auto-loading tls.ko and the exploit
using hard-coded offsets for another distro's kernels.  But that's part
of (non-)exposure and poor exploit portability, not impact, so the CVSS
vectors not claiming any impact beyond Availability are wrong.  This CVE
doesn't appear to be scored by the Linux kernel CNA.

The new related issue reported by V3rdant doesn't appear to have a CVE
yet - per Linux kernel CNA policy it'd normally need to be fixed first.

I include V3rdant's original report below.  I am _not_ re-attaching
the PoCs just yet - I may add them to this thread a week later - even
though they are not complete weaponized exploits.  I tried running them
against a RHEL9'ish kernel.  Without tls.ko loaded or/and without
CAP_NET_ADMIN, they failed (with error returns from syscalls).  With
tls.ko loaded and running as root, I got instant kernel crash, which I
did not investigate (so I'm not sure it's the PoC's intended crash).

I guess on a distro with CONFIG_TLS=y or with the module already loaded
(such as if kTLS is in use), this issue could be exposed to non-root
users through unprivileged network namespaces.

Alexander

On Wed, Mar 18, 2026 at 11:54:41AM +0000, x xw wrote:
> Hello Linux distros Team,
> 
> I am writing to report a vulnerability found in the Linux kernel's KTLS (Kernel TLS) subsystem when interacting with BPF sockmap.
> 
> **Summary:**
> 
> This is a bypass for the CVE-2025-37756 patch, triggered drain the skb using BPF, like `tcp_disconnect` in cve-2025-37756. There is a flaw in how the kernel handles the coexistence of KTLS and BPF sockmaps. While `sk_psock_init` correctly blocks adding a TLS-enabled socket to a sockmap (preventing "forward order" attachment), the `tls_init` path does not check if a socket is already attached to a sockmap.
> 
> This allows a malicious user with `CAP_BPF` and `CAP_NET_ADMIN` (e.g., inside a container) to set up a "reverse order" configuration:
> 1. Insert a TCP socket into a BPF sockmap (with a verdict program).
> 2. Enable ULP/KTLS on that same socket.
> and then LPE or Container Escape
> 
> This configuration corrupts the data path. The `sk_psock_verdict_data_ready` callback drains the TCP receive queue via `tcp_read_skb` but fails to update TCP sequence numbers (`copied_seq`) when the verdict is `SK_PASS`. The TLS strparser then attempts to read from an empty queue based on stale sequence numbers, leading to a `WARN_ON_ONCE` and potential Use-After-Free (UAF) or data corruption when `frag_list` pointers become dangling.
> 
> **Vulnerability Details:**
> 
> Attack flow:
> 1. Create TCP pair
> 2. Create sockmap with BPF SK_SKB_VERDICT program (returns SK_PASS)
> 3. Insert server socket into sockmap (BEFORE TLS setup)
> -> sk->sk_data_ready = sk_psock_verdict_data_ready
> 4. Set up TLS TX on client, TLS RX on server
> -> tls_sw_strparser_arm() saves sk_psock_verdict_data_ready as
> rx_ctx->saved_data_ready, sets sk->sk_data_ready = tls_data_ready
> 5. Client sends data (KTLS encrypts transparently)
> 6. Data arrives at server:
> a. tcp_data_ready() -> tls_data_ready() -> tls_strp_data_ready()
> b. tls_strp_check_rcv() -> tls_strp_read_sock()
> c. tls_strp_load_anchor_with_queue() sets frag_list -> TCP recv queue
> d. msg_ready = 1
> e. tls_rx_msg_ready() -> ctx->saved_data_ready(sk)
> = sk_psock_verdict_data_ready(sk)
> f. tcp_read_skb() -> __skb_unlink() removes all skbs from recv queue
> g. sk_psock_verdict_recv() -> BPF SK_PASS -> sk_psock_skb_ingress_self()
> Note: tcp_eat_skb() NOT called for SK_PASS -> copied_seq unchanged
> h. frag_list now points to skb owned by psock (unlinked from recv queue)
> 7. Server calls recv():
> a. tls_sw_recvmsg() -> tls_rx_rec_wait() -> tls_strp_msg_load(force_refresh)
> b. tcp_inq() >= full_len (stale! copied_seq wasn't advanced)
> c. tls_strp_load_anchor_with_queue() -> tcp_recv_skb() returns NULL
> (queue is empty!) -> WARN_ON_ONCE(!first) fires -> returns
> d. frag_list still points to old (psock-owned or freed) skb
> e. tls_decrypt_sg() walks frag_list -> potential UAF
> 
> **Affected Versions:**
> 
> Confimed on Linux 6.12.77 (LTS). Likely affects all versions supporting both KTLS and sockmap.
> 
> **Reproduction:**
> 
> A Proof-of-Concept (PoC) exploit (`poc_sockmap_tls_uaf.c`) is attached??wich could trigger `WARN_ON_ONCE`
> Compilation: `gcc -static -o poc_sockmap_tls_uaf poc_sockmap_tls_uaf.c`
> Requirement: `CAP_NET_ADMIN` (needed for `BPF_MAP_TYPE_SOCKMAP` on sockmap).
> 
> `poc_for_uaf.c` could trigger `KASAN: slab-use-after-free` crash.
> 
> **Impact:**
> 
> - **Kernel Warning/Crash**: Reliable `WARN_ON_ONCE` / `UAF` trigger.
> - **Privilege Escalation**: CVE-2025-37756 has been hacked on google KernelCTF. This is a bypass for the CVE-2025-37756 patch, also can used for LPE with the same flow of CVE-2025-37756.
> 
> **Suggested Fix:**
> 
> 1. **Block Reverse Order**: Modify `tls_init` in `net/tls/tls_main.c` to Block Reverse Order.
> 
> 
> Best regards,
> V3rdant
