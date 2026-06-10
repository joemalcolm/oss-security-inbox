X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/10/20
Message-ID: <N3qCs2mm52MjtGQdhL__9yEHYhVTbFIkpD8lRZK89ThlWgvKoVMgOhNel9Ke6bwC8g3-z7eaJLKLfHVTwy4ONvh0FZcwTCm5dZO3ScS56FQ=@proton.me>
Date: Wed, 10 Jun 2026 19:19:28 +0000
From: bumsrakete <bumsrakede@...ton.me>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-45257: FreeBSD kTLS-RX in-place AES-GCM decrypt over sendfile(2) EXTPG mbufs to page-cache write / local root
Content-Type: text/plain; charset=utf-8

## Summary

An unprivileged local user on a default FreeBSD >= 13.0 system (any
PMAP_HAS_DMAP architecture: amd64, arm64, riscv) can write
attacker-influenced bytes into the page-cache page of any file they can
*read*. The write reaches the backing physical page through the kernel
direct map (DMAP) and never traverses the VFS layer, so it bypasses file
permissions, mount options, and `chflags schg`. This yields a reliable
local privilege escalation (shellcode injection into a SUID-root binary)
and persistent on-disk corruption on UFS.

It is the FreeBSD analogue of Linux's Dirty Pipe. Tracked as
CVE-2026-45257 / FreeBSD-SA-26:26.kTLS.

## Website (Of course, it's a LPE bug!)
https://bumsrake.de

## Merchandise
Sold out! Sorry! :(

## Affected versions

Vulnerable (verified or by inspection):
  - FreeBSD 13.0, 13.1, 13.2, 13.3, 13.4
  - FreeBSD 14.0, 14.1, 14.2
  - FreeBSD 15.0-RELEASE (verified on 15.0-RELEASE-p5/amd64)

Not affected:
  - FreeBSD 12.x and earlier

Preconditions are the stock GENERIC defaults: kern.ipc.mb_use_ext_pgs=1
(the boot-time default on every PMAP_HAS_DMAP arch) and a kernel built
with MK_KERN_TLS (default). No extra module, sysctl, hardware, or
privileged group is required. The vulnerable path was introduced around
2020 (commit 3c0e56850511) and first shipped in 13.0 (April 2021).

## Root cause

The bug is page-cache corruption via an attacker-influenced in-kernel
AES-GCM decrypt running in place over M_EXTPG mbufs produced by
sendfile(2). Three individually-correct subsystems compose unsafely:

  (1) sendfile(2) produces vnode-backed EXTPG mbufs.

      sys/kern/kern_sendfile.c:963
          m0 = mb_alloc_ext_pgs(M_WAITOK, sendfile_free_mext_pg, M_RDONLY);

      m_epg_pa[] then holds the physical addresses of the file's actual
      page-cache pages.

  (2) TCP_RXTLS_ENABLE performs no privilege check.

      sys/netinet/tcp_usrreq.c:2222
          case TCP_RXTLS_ENABLE:
              INP_WUNLOCK(inp);
              error = ktls_copyin_tls_enable(sopt, &tls);
              ...
              error = ktls_enable_rx(so, &tls);

      Any unprivileged user can enable software kTLS RX on a TCP socket
      they own and supply the AES-128-GCM key, salt, and rec_seq of their
      choice.

  (3) The decrypt runs in place against the page-cache page.

      sys/opencrypto/criov.c:273
          return (PHYS_TO_DMAP(m->m_epg_pa[i] + pgoff + skip));

      sys/crypto/aesni/aesni.c:599-605 (AES_GCM_decrypt, in==out)
      The "output buffer" is a DMAP pointer at the file's page-cache page;
      the plaintext is written there.

Because plaintext = ciphertext XOR keystream(K, IV), and both the
ciphertext (the file's existing bytes, delivered by sendfile) and K/IV
(the attacker's) are known, the attacker fully controls every byte
written into the page.

## The three incomplete guards

The kernel has three mechanisms that would normally prevent an EXTPG
mbuf from reaching an in-place decrypt; each is bypassable here:

  Guard 1 - mb_unmapped_compress (uipc_sockbuf.c:153, :1441):
    copies EXTPG bytes into a flat mbuf (kern_mbuf.c:859-897), but is
    gated on m_len <= MLEN (~224 on amd64). Sending records with a
    240-byte payload walks past it.

  Guard 2 - mb_unmapped_to_ext (ip_output.c:746): converts EXTPG chains
    when the outbound ifp lacks IFCAP_MEXTPG (true for loopback). But
    _mb_unmapped_to_ext (kern_mbuf.c:940-1077) does not copy bytes; it
    allocates an sf_buf per page, and on these architectures
    sf_buf_kva == PHYS_TO_DMAP(pa). The "mapped" mbuf still points at the
    same physical page.

  Guard 3 - sb_mark_notready (uipc_ktls.c:1183-1207): moves queued data
    from sb_mb into the kTLS decrypt queue sb_mtls with no M_EXTPG check
    at all.

## Exploitation

A rather stable (who would have thought) exploit (bumsrakete.c) is attached.

Flow: the attacker sendfile(2)s the target file into a TCP socket looped
back to itself (lo0), with TCP_RXTLS_ENABLE configured using its own
key/IV. lo0 lacks IFCAP_MEXTPG, so Guard 2 remaps (not copies) the EXTPG
onto the same physical page; the kTLS RX path then decrypts in place into
the page cache.

To produce a record whose on-wire ciphertext equals the file's current
bytes (so GMAC validates) while the decrypt yields chosen plaintext:

    compute_ks(key, salt, iv8, RECORD_W, ks);   /* AES-CTR keystream */
    for (i = 0; i < RECORD_W; i++)
        pt[i] = file_bytes[i] ^ ks[i];          /* so ct == file_bytes */
    gcm_encrypt(key, iv12, aad, sizeof aad,
                pt, RECORD_W, ct, tag);          /* valid tag for wire */

The PoC injects a 36-byte setuid(0)+execve("/bin/sh") shellcode into the
entry of /usr/bin/su (36 records) or any other suid binary, executes it
for the privilege gain, then restores the original bytes.
End-to-end LPE wall time is ~1.5s.

The target's schg,uarch flags do NOT prevent the overwrite and the
corruption persists to disk (UFS). The chflags schg bypass is a nice
bonus.

## Impact

- Local privilege escalation to root (default, reliable, no race).
- Arbitrary modification of any file the attacker can read, bypassing
  permissions, immutable flags, and read-only intent.
- Affects any multi-tenant FreeBSD deployment (jails, hosting,
  containers) with the default capability set.

## Mitigation

The vendor fix is FreeBSD-SA-26:26.kTLS. Subscribe to
freebsd-security-notifications@ and apply when available.

## Timeline

2026-05-13  Reported to secteam@...eBSD.org
2026-06-09  Advisory and patch published; this disclosure; merchandise sale

## Credit

Discovered, analyzed, and reported by Bumsrakete.
Responsibly disclosed to secteam@...eBSD.org.

## References

- CVE-2026-45257
- FreeBSD-SA-26:26.kTLS

View attachment "bumsrakete.c" of type "text/x-csrc" (19377 bytes)
