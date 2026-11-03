X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/03/1
Message-ID: <aulnCeICYF-TmbY_@sultan-box>
Date: Mon, 2 Nov 2026 20:46:01 -0800
From: Sultan Alsawaf <sultan@...neltoast.com>
To: oss-security@...ts.openwall.com
Cc: Rui Sousa <c3srm@...dex.com>
Subject: Re: CVE-2026-98432: init_on_free=1 as an additional interim mitigation
Content-Type: text/plain; charset=utf-8

On Sat, Oct 31, 2026 at 04:01:47PM +0000, Rui Sousa wrote:
> Hello,
> 
> An additional hardening option for CVE-2026-98432 (the IPv4 TCP inet_opt
> use-after-free), for systems that cannot take a fixed kernel yet.
> 
> The interim mitigations published so far (for example AlmaLinux's, at
> <https://almalinux.org/blog/2026-10-30-cve-2026-98432/>) are an nftables
> rule dropping inbound TCP that carries IPv4 options and disabling MPTCP.
> They do not mention the init_on_free=1 kernel boot parameter.
> 
> init_on_free=1 (mainline since 5.3) zeroes slab objects and pages when
> they are freed. It does not fix this bug: the stale pointer is still
> dereferenced. But a use-after-free read of the freed object then returns
> zeroes instead of its previous contents, which narrows what an attacker
> can learn through it.

Hi Rui,

I'm a member of the kernel team at CIQ.

I looked into your init_on_free=1 suggestion, and unfortunately it doesn't do
anything meaningful against this CVE. The remote KASLR defeat uses pointers
leaked from _live_ slab objects via an out-of-bounds read on the freed object.
The previous contents of the freed object aren't useful.

I had Claude Mythos analyze the code and Anthropic's exploit description [1],
and this is what it found:

    The freed object is a struct ip_options_rcu: a 32-byte header that holds the
    u8 optlen, followed by the option bytes to echo. The allocation is sized
    from the SYN's option length of at most 40 bytes, putting the object in
    kmalloc-64 or kmalloc-96. As long as the slot hasn't been reused, the stored
    length is still the one the kernel wrote, which never exceeds the space
    allocated for the option bytes. The SYN-ACK then echoes options built from
    the attacker's own SYN, plus at most an obfuscated freelist pointer, and the
    copy never reaches past the object. With init_on_free=1, the stored length
    is zero instead and the SYN-ACK simply carries no options.

    Anthropic describes stage one as making the kernel "read an
    attacker-controlled length field to copy extra bytes and send them back to
    the attacker". The kernel never stores a length larger than the space it
    allocated, so an attacker-controlled length can only come from another
    allocation that has reused the slot and placed its own data where optlen
    lives. The overread then starts in that live object and runs into its
    neighbors, and init_on_free=1 never touches live memory. Zeroing on free
    only affects free slots, and an overread that returns no pointer costs the
    attacker nothing but another attempt. The attacker keeps trying until the
    overread lands on a live neighbor that holds a kernel pointer. Stage two
    depends on the same reused slot and is unaffected for the same reason.
    Anthropic didn't name the reusing allocation. The reuse is inferred from the
    code, not from their write-up.

    So init_on_free=1 is harmless, but it isn't a mitigation for this CVE and
    shouldn't carry weight in advisories. Dropping inbound TCP with IP options
    stops the object from being allocated at all, though traffic between
    containers on the same host can bypass that filter. Disabling MPTCP alone
    isn't enough, since the bug is in plain IPv4 TCP.

[1] https://www.anthropic.com/research/discovering-vulnerabilities-with-claude

Sultan
