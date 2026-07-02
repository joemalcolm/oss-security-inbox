X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/02/1
Message-ID: <CAMsyVvDb-fxegd4x4dJ4Jy9Eth2KVcSu0jdpGroeK-GF=B8gfw@mail.gmail.com>
Date: Fri, 3 Jul 2026 01:28:26 +0300
From: Or Peles <orp@...og.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-43503: Analysis of the "DirtyClone" Linux LPE (Dirty Frag family variant)
Content-Type: text/plain; charset=utf-8

Hello oss-security,

We would like to raise awareness of a Linux LPE that was recently patched,
a variant of the "Dirty Frag" vulnerability. We were able to reliably
exploit this issue for code execution in a default configuration of Ubuntu
22.04, and as such, we would like to implore users to upgrade to patched
kernel versions or apply workarounds.

This vulnerability is a variant of CVE-2026-43503, which was discovered by
Hyunwoo Kim and JFrog Security Research independently, and which we dubbed
"DirtyClone". Any Linux kernel lacking the complete, sequential chain of
fixes for the Dirty Frag family, which includes CVE-2026-43284,
CVE-2026-43500, CVE-2026-46300, and CVE-2026-43503, is at risk.

DirtyClone belongs to a family of Linux kernel memory corruption
vulnerabilities in the core networking stack affecting how socket buffers
(skb) reference shared page-cache memory, which are subsequently weaponized
through in-place cryptographic transformations in subsystems like
XFRM/IPsec or RxRPC.

Despite targeting different packet cloning or forwarding paths, variants
like Dirty Frag, Fragnesia, and DirtyClone all rely on a shared technique:
tricking the kernel into treating read-only, file-backed page cache memory
as writable network buffers.

The attack abuses a situation where the same physical memory page is used
both as:
- Read-Only File data (page cache)
- Network packet data (skb)

Normally, sharing a page-cache reference with a network buffer is a
standard performance optimization. However, if the kernel modifies that
buffer, a copy-on-write operation must be triggered to protect the
underlying file. DirtyClone strips the SKBFL_SHARED_FRAG safety flag
tracking the page's shared origin (specifically within __pskb_copy_fclone),
causing the kernel to skip the copy-on-write operation and decrypt data
directly into the shared file page.

To exploit this vulnerability, the attacker follows these steps:

Step 1: Selecting a target page
The attacker maps a privileged binary such as /usr/bin/su, causing it to be
loaded into the page cache. This page becomes the target for manipulation.

Step 2: Forcing an IPsec packet to reference the page cache
The attacker crafts an IPsec packet whose payload is backed by the same
page-cache page.
Using vmsplice and splice, the kernel attaches page-cache-backed memory
into an skb instead of copying it.
`
int fd = open("/usr/bin/su", O_RDONLY);
char *p = mmap(NULL, mmap_size, PROT_READ, MAP_SHARED, fd, 0);
struct iovec iov = { .iov_base = p + patch_offset, .iov_len = 16 };
vmsplice(pipefd[1], &iov, 1, 0);
splice(pipefd[0], NULL, sockfd, NULL, 16, 0);
`
At this point, the packet buffer is literally backed by file memory.

Step 3: Local IPsec processing and cloning
The attacker uses a loopback-based IPsec tunnel so that packets remain
local. Crucially, a netfilter rule utilizes the TEE target to clone the
traffic, forcing the packet through the vulnerable __pskb_copy_fclone path
before it is processed by the ESP decryption stage (esp_input()).

Step 4: In-place decryption becomes a write primitive
Because the safety flag was stripped during cloning, the kernel assumes
this is a standard, unshared network buffer that is safe to modify. IPsec
then performs an in-place decryption (input buffer == output buffer). Since
the memory is actually still linked to the page cache, the decrypted bytes
directly overwrite the cached contents of /usr/bin/su.

Step 5: Controlled overwrite of file-backed memory
By controlling the cryptographic inputs (key, IV, and ciphertext layout),
the attacker can force predictable, decrypted output bytes at precise
offsets within the target file page.

Step 6: Memory-patching and execution
The attacker uses this primitive to patch critical logic inside the cached
pages of /usr/bin/su (e.g., the conditional branch controlling
authentication). Subsequent executions of the binary naturally hit this
poisoned page cache, executing the modified code to bypass authentication
and achieve privilege escalation while leaving the underlying file on disk
completely unaltered.

If immediate patching is not possible, workarounds include:
- Restricting unprivileged user namespace creation to block CAP_NET_ADMIN
acquisition (via sysctl or AppArmor, to mitigate the ESP variant). Note
that this is ineffective if the attacker already possesses host-level
CAP_NET_ADMIN.
- Entirely blacklisting the esp4, esp6, and rxrpc kernel modules to block
the underlying in-place decryption primitives.

More details -
https://research.jfrog.com/post/dissecting-and-exploiting-linux-lpe-variant-dirtyclone-cve-2026-43503/

Best regards,

Or Peles
JFrog Security Research

