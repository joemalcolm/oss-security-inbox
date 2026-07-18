X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/18/1
Message-ID: <alt_7PSe11TN0CVx@netmeister.org>
Date: Sat, 18 Jul 2026 09:30:20 -0400
From: Jan Schaumann <jschauma@...meister.org>
To: oss-security@...ts.openwall.com
Subject: OpenSSL "HollowByte" DoS via attacker-controlled memory allocation size in glibc
Content-Type: text/plain; charset=utf-8

Hi,

There's a DoS vector against OpenSSL TLS ClientHello
by which a remote attacker can trigger increasing
glibc memory allocations by specifying a larger size
than what is actually sent and that glibc does not
immediately return even after the client
disconnects.

The vulnerability is described here:

https://sec.okta.com/articles/2026/06/openssl-hollowbtye-a-dos-hiding-in-11-bytes/

OpenSSL fixed it here:
https://github.com/openssl/openssl/pull/30792
https://github.com/openssl/openssl/pull/30793
https://github.com/openssl/openssl/pull/30794

but did not treat this as a security issue:

"This change is as a result of a security issue
reported to the openssl-security team by Okta Red
Team. The openssl-security team have decided to handle
this as a "bug or hardening" only fix."

As a result, people who follow OpenSSL and merge only
security-related changes into their local forks might
have missed this changeset.

Full text of the blog post from Okta:

-------------
July 16, 2026
OpenSSL HollowByte: A DoS Hiding in 11 Bytes
Okta Red Team

Every so often, a vulnerability reminds us how deeply
our digital infrastructure relies on foundational
libraries. Recently, the Okta Red Team discovered
HollowByte, a Denial of Service (DoS) vulnerability in
OpenSSL. By sending a malicious payload of just 11
bytes, a remote, unauthenticated attacker can force a
server to allocate disproportionate chunks of memory
before any security handshake even begins.

Here is the breakdown of how it works.

Trusting the Header

The TLS handshake begins with a ClientHello message
wrapped in a record. Each handshake message carries a
4-byte header that declares how large the incoming
message body will be.

Older versions of OpenSSL allocate a receive buffer
based on that attacker-declared length before any data
has actually arrived.

When a rogue header lands, the state machine triggers
an unvalidated allocation. When the malicious 11-byte
payload arrives, the TLS state machine reads the
4-byte handshake header and triggers an unvalidated
pre-allocation based on the header's 3-byte length
declaration:

Read
Header⟶grow_init_buf()⟶OPENSSL_clear_realloc()⟶malloc(attacker_size)

Because there is no payload validation at this early
stage, malloc() allocates up to 131 KB based solely on
the untrusted packet's claims. The worker thread then
blocks, waiting indefinitely for data that will never
arrive.

Permanent Memory Fragmentation

Holding connections open to exhaust threads is a
classic trick (like Slowloris). HollowByte introduces
a nastier compounding effect due to how the GNU C
Library (glibc) handles memory.

When an attacking connection drops, OpenSSL frees the
buffer. However, glibc does not immediately return
small-to-medium allocations to the operating system;
it keeps them for potential reuse.

By launching waves of connections with randomized
claimed sizes, an attacker prevents the allocator from
reusing those freed chunks. The heap fragments
heavily, causing the server’s Resident Set Size (RSS)
to climb continuously.

Even after the attacker disconnects, the server
remains permanently bloated. The only way to reclaim
that memory is to terminate the process.

Real-World Testing & Ecosystem Impact

To measure the threat, we tested unpatched and patched
OpenSSL instances running NGINX under various load
conditions.

In a standard 1 GB RAM environment, the unpatched
server was OOM-killed at 547 MB of frozen, fragmented
memory. In higher-spec testing (16 GB RAM), the attack
successfully locked up 25% of the system's total
memory while staying safely under the connection
ceiling, meaning standard connection-limiting defenses
won't stop it.

Because OpenSSL is widely used and embedded, this
vulnerability affects a variety of software, including
web servers (Apache, NGINX), language runtimes
(Node.js, Python, Ruby, PHP), and databases (MySQL,
PostgreSQL).

The Fix and Next Steps

The OpenSSL team resolved this by moving to
incremental buffer growth (merged in PRs #30792,
#30793, and #30794). This fix was silently included as
part of the OpenSSL v4.0.1 release, with silent
backports to release versions 3.6.3, 3.5.7, 3.4.6, and
3.0.21. Instead of trusting the header outright,
OpenSSL now grows the buffer only as bytes actually
land on the wire. A claim with no follow-through now
costs the server nothing.

While OpenSSL handled this as a hardening fix rather
than a CVE security advisory, we recommend upgrading
your distribution's OpenSSL packages immediately.

-------------

-Jan
