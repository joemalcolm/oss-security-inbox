X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/05/10
Message-ID: <6bd62fa3-d4ec-4347-b396-54ca240977bd@oracle.com>
Date: Thu, 5 Nov 2026 11:44:25 -0800
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: zlib 1.4 released with security fixes
Content-Type: text/plain; charset=utf-8

https://github.com/madler/zlib/releases/tag/v1.4 lists these security fixes:
> * Non-blocking gzwrite() had a buffer overflow; CVE-2026-85091 (reported by
>   mat-mo; also TOB-ZLIB-003).
> * inflateGetDictionary() could write up to 8 MB past the caller's 32K buffer
>   (Theorem THM-ZLIB-001). This took a zlib header with an invalid window size,
>   then inflateReset() or inflateSync(). Affects 1.3.1 and 1.3.2.
> * inflateSync() before the window size was known allocated a one-byte window
>   that could later be overrun (TOB-ZLIB-004).
> * inflatePrime() could lead inflate() to read before the start of the input
>   (TOB-ZLIB-014).
> * Repeated deflatePrime() calls could write past the pending buffer
>   (TOB-ZLIB-013).
> * inflateBack() failed to detect distances too far back, and copied
>   uninitialized memory to the output (reported by Kornel Lesiński).
> * gzseek() forward before any data was written could write uninitialized
>   memory to the gzip output (found by Claude Opus 5.5).
> * deflateResetKeep() used mid-stream could read outside the window (reported
>   by Jason Gross).
> * gzdopen() now sets close-on-exec with the correct flag (TOB-ZLIB-008).
> 
> * minizip:
> 
>   * A double free in block_central_name() (reported by Oculytic), and a NULL
>     dereference on repeated zipAlreadyThere() calls after a bad central
>     directory (reported by Naveed Khan).
>   * Validation of extra-field sizes, plus portable, alignment-safe reading,
>     in zipRemoveExtraInfoBlock() (reported by Naveed Khan and jmestwa-coder).
>   * unzip no longer reads Zip64 values from outside their extra-field record
>     (reported by Mohamed Elnady). It also uses only the Zip64 locator
>     immediately before the end of central directory record (reported by
>     snajafov). Crafted archives could make minizip report different entries
>     than other readers.
>   * miniunz could create directories outside the extraction directory
>     (reported by Naveed Khan), and on Windows write files anywhere (reported
>     by Trail of Bits). Fixed by Naveed Khan. Path names are now processed by
>     component.
> 
> * contrib/infback9: removed out-of-bounds pointer arithmetic in inftree9.c;
>   CVE-2026-4738 (fix by npt-1707, submitted by CrossVR). The pointers return
>   in bounds before use and no known compiler mishandles this, so the critical
>   rating overstates it, though it could trap on capability hardware such as
>   CHERI.
