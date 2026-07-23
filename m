X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/23/6
Message-ID: <1d01fedf-7c88-48f1-88a9-fc18d243b738@frasunek.com>
Date: Thu, 23 Jul 2026 21:31:01 +0200
From: Przemyslaw Frasunek <przemyslaw@...sunek.com>
To: oss-security@...ts.openwall.com
Subject: Knot Resolver 6.3.0 DNS-over-QUIC heap buffer overflow (RCE)
Content-Type: text/plain; charset=utf-8

Hello,

The following is a report of a remotely triggerable heap buffer
overflow in Knot Resolver's DNS-over-QUIC (DoQ) receive path, leading
to remote code execution. The issue was reported to CZ.NIC on
2026-06-08 and fixed in Knot Resolver 6.4.1, released on 2026-07-22.


Background
==========

Knot Resolver is an open-source caching DNS recursive resolver
developed by CZ.NIC (the .cz registry). It is popular in large ISP
environments thanks to its rich feature set and performance, and it
supports encrypted transports including DNS-over-TLS, DNS-over-HTTPS
and DNS-over-QUIC.


Summary
=======

   Product         : Knot Resolver
   Affected        : 6.3.0 (verified on 6.3.0-cznic.1, Debian 12)
   Fixed in        : 6.4.1 (released 2026-07-22)
   Component       : kresd DoQ listener (daemon/quic_conn.c)
   Vulnerability   : heap out-of-bounds write (CWE-787)
   Authentication  : none
   Attack vector   : remote; a single unauthenticated QUIC connection
   Impact          : remote code execution as the knot-resolver user;
                     at minimum, remote denial of service

Root cause
==========

kresd reassembles inbound DoQ STREAM frames into a per-connection
input buffer (pers_inbuf). The receive callback
kr_recv_stream_data_cb() grows this buffer with an accumulating
assignment:

     pers_inbuf.size += datalen;

instead of setting the tracked size to the new total length. Across
several frames the tracked "size" drifts above the real allocation.
A later frame whose datalen fits under the inflated "size" skips the
reallocation, yet the subsequent memcpy() is bounded by that inflated
size and writes past the end of the object. Because jemalloc keeps the
object pinned to its real size class, the excess bytes land in the
adjacent slab slot.


Exploitation
============

A single QUIC connection carrying six STREAM frames on one stream
drives pers_inbuf through five jemalloc size classes into the
6144-byte class and then performs a controlled ~814-byte out-of-bounds
write into the neighbouring slab slot:

     F1  datalen=8                    initial 1200-byte allocation
     F2  datalen=1440   realloc ->    1536-class
     F3  datalen=1440   realloc ->    3072-class
     F4  datalen=1440   realloc ->    5120-class
     F5  datalen=1440   realloc ->    6144-class
     F6  datalen=1200, FIN            no realloc; OOB write into slot+1

The accumulated size drift is exactly what lets the final frame bypass
the reallocation check, while jemalloc's real usable size still
enforces the slab boundary -- so the copy runs off the end of the
object into the adjacent slot.

Lightweight connection grooming (opening several DoQ connections and
freeing half of them just before the final frame) arranges for that
neighbouring slot to hold a libgnutls cleanup handler object. The
overflow overwrites a function pointer in that object, its first
argument, and the flag that gates the call. During connection teardown
libgnutls performs, in effect:

     if (handler->flag)                /* attacker-set, nonzero */
         handler->fn(handler->arg);    /* fn and arg both controlled */

i.e. an indirect call through an attacker-controlled pointer with an
attacker-controlled first argument (controlled RIP and RDI). The
proof-of-concept routes this to system() with a pointer to a command
string placed in the same slot, yielding code execution as the
knot-resolver user.


Impact
======

An unauthenticated attacker who can reach the DoQ port obtains a
deterministic, controlled out-of-bounds heap write and, with grooming,
control of the instruction pointer and first argument at connection
teardown. This yields remote code execution as the service user. A
failed attempt crashes the worker (denial of service); the worker is
automatically respawned, so attempts can be retried.


Reliability and ASLR
====================

Control of the instruction pointer via the grooming primitive is
reliable (about 7 of 8 attempts per round on the reference build).
Completing a full system() call succeeds less often, because system()
executes on a heap the overflow just corrupted; the exploit simply
retries across worker respawns until one lands.

The published proof-of-concept demonstrates end-to-end remote code
execution against a target with ASLR disabled. With ASLR off, the two
addresses the exploit needs (the target slab slot and libc's system())
are deterministic constants, so no information leak is required and the
attack is fired entirely over the network. Defeating ASLR is a
separate problem and is intentionally out of scope for the released
PoC; with ASLR enabled the same primitive would additionally require
an information disclosure.


Proof of concept
================

     https://github.com/venglin/knot-doq

The repository contains the network trigger (probe, RIP-control and
RCE modes), the one-time deterministic-address probe, and a write-up.


Reference environment
=====================

     Debian 12 (bookworm), glibc 2.36
     knot-resolver6  6.3.0-cznic.1~bookworm
     libgnutls30     3.7.9-2+deb12u7


Timeline
========

     2026-06-08   Reported to the vendor (CZ.NIC).
     2026-07-22   Fixed in Knot Resolver 6.4.1; advisory published.
     2026-07-23   This report and proof-of-concept published.


Mitigation
==========

Upgrade to Knot Resolver 6.4.1.


Credit
======

Przemyslaw Frasunek (venglin)
