X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/24/6
Message-ID: <beb09b69-5c48-4525-93e6-2d7812866650@oracle.com>
Date: Sat, 24 Oct 2026 09:34:21 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com, Jan Schaumann <jschauma@...meister.org>
Subject: Re: Brotli CVE-2026-111497
Content-Type: text/plain; charset=utf-8

On 10/23/26 12:12, Jan Schaumann wrote:
> Alan Coopersmith <alan.coopersmith@...cle.com> wrote:
>>> Node.js Brotli decoder out-of-bounds write permits remote code execution
>>> (CVE-2026-111497) - (high)
>>>
>>> A flaw in Node.js can cause Node.js Brotli decoder out-of-bounds write
>>> permits remote code execution.
>>>
>>> This vulnerability affects Node.js 26.x, 24.x, and 22.x.
> 
> It's not quite obvious from this advisory, but the
> underlying problem is not restricted to Node.js alone,
> but rather in Google brotli:
> 
> https://github.com/advisories/GHSA-9v8h-qqgm-4m35
> 
> This trickles down into any consumer, including, e.g.,
> Envoy:
> 
> https://github.com/envoyproxy/envoy/security/advisories/GHSA-3wvj-j6qm-62mr

Yes, https://patchtheplanet.org/brotli reports this as well.

https://github.com/google/brotli/releases/tag/v1.2.1 has been published for
the library itself.

The patchtheplanet page lists releases from Node.js, Bun, Envoy Proxy, & Istio
incorporating it and gives suggestions on what other software to check.

https://www.aikido.dev/blog/python-packages-vulnerable-node2shell-brotli-cve-2026-111497
adds the PyPi brotli packages to the list as well.

-- 
         -Alan Coopersmith-                 alan.coopersmith@...cle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
