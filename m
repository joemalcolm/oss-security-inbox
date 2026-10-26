X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/26/12
Message-ID: <e1d28ae3-327d-45f5-8886-531c607aa9b8@oracle.com>
Date: Sun, 25 Oct 2026 19:03:22 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com, Jan Schaumann <jschauma@...meister.org>
Subject: Re: Brotli CVE-2026-111497
Content-Type: text/plain; charset=utf-8

On 10/24/26 09:34, Alan Coopersmith wrote:
> Yes, https://patchtheplanet.org/brotli reports this as well.
> 
> https://github.com/google/brotli/releases/tag/v1.2.1 has been published for
> the library itself.
> 
> The patchtheplanet page lists releases from Node.js, Bun, Envoy Proxy, & Istio
> incorporating it and gives suggestions on what other software to check.
https://broccoli2shell.com/ lists even more including:
  - .NET runtime
  - 7-Zip-zstd
  - Apache Arrow
  - Brotli4j
  - brotlicffi
  - CatBoost
  - Chromium
  - ClickHouse
  - DuckDB
  - EDK II
  - Firefox
  - Ghostscript
  - GraalJS (graal-nodejs)
  - libjxl
  - MuPDF
  - NanaZip
  - ngx_brotli
  - p7zip
  - PHP brotli extension
  - Ruby brotli gem
  - SumatraPDF
  - UEFITool
  - v8-jsi
  - woff2
  - YDB
  - YTsaurus

Some of these fixed it unknowingly, by pulling in updates from the Google
brotli repo before the vulnerability was announced.

For instance, Ghostscript appears to have brought in the fix to it's
bundled copy of brotli in their 10.07.1rc1 release:
https://github.com/ArtifexSoftware/ghostpdl/commit/0f318d9a288a4016b8a3ef11a52e536443aa8e2b
in which you can see the changes are present from
https://github.com/ArtifexSoftware/ghostpdl/commit/0f318d9a288a4016b8a3ef11a52e536443aa8e2b

-- 
         -Alan Coopersmith-                 alan.coopersmith@...cle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
