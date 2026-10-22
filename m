X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/22/1
Message-ID: <a23855e2-239a-455c-af20-7ce12e5edfe0@oracle.com>
Date: Wed, 21 Oct 2026 17:13:21 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: Header Accordions: QPACK amplification attacks against HTTP/3 servers
Content-Type: text/plain; charset=utf-8

https://foxio.io/blog/header-accordions-qpack-amplification-attacks-against-http-3-servers
reports:
> A remote, unauthenticated client can force an HTTP/3 server to
> allocate tens to thousands of times more memory than it sends.
> One connection is enough to OOM or pin a default-configured server.
> Seven of the ten implementations tested are vulnerable; several are
> already fixed.
> 
> QPACK compresses HTTP/3 headers to minimize traffic sent over the wire.
> Across the affected implementations, decoded-header limits are missing,
> incomplete, or applied too late. A small HEADERS frame can therefore
> expand into hundreds of thousands of header objects in memory.
> Preventing that expansion from exhausting resources requires enforcing
> a cumulative budget as fields are decoded and retained.
> 
> 
> Patched as of October 20, 2026
> ==============================
> 
> Library                 Fixed version           Advisory
> -------                 -------------           --------
> quic-go                 0.57.0                  CVE-2025-64702
> 
> Cloudflare quiche       0.29.3                  CVE-2026-12523
> 
> lsquic                  4.9.0                   no CVE
> 
> Wireshark               4.6.2 / 4.4.12          CVE-2025-13945
> 
> 
> Unpatched as of October 20, 2026
> ================================
> 
> Library
> -------
> Bun 1.4.3
> 
> h3 (hyperium)
> 
> aioquic / mitmproxy
> 
> 
> Mitigations
> ===========
> 
> Bun: Don't expose HTTP/3 servers
> 
> mitmproxy: disable HTTP/3 (pass --set http3=false)
> 
> h3 crate: set a reasonable max_field_section_size
> 
> Not affected: IIS, Envoy, ngtcp2/nghttp3

https://foxio.io/blog/header-accordions-qpack-amplification-attacks-against-http-3-servers
goes into much more detail after providing that summary.

-- 
         -Alan Coopersmith-                 alan.coopersmith@...cle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

