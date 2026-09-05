X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/05/4
Message-ID: <apvIObgXJAgH2trx@eldamar.lan>
Date: Sat, 5 Sep 2026 09:43:53 +0200
From: Salvatore Bonaccorso <carnil@...ian.org>
To: oss-security@...ts.openwall.com
Subject: Re: Vulnerabilities fixed in libxml2-2.15.4
Content-Type: text/plain; charset=utf-8

Hi,

On Fri, Sep 04, 2026 at 06:35:56PM +0100, Sam James wrote:
> From libxml2-2.15.4:
> 
> +v2.15.4: Sep 01 2026
> +
> +### Security
> +
> +- xmlregexp: Prevent out-of-bounds read in NXT macro
> +- fix: add missing overflow checks in dict.c, uri.c, and valid.c
> +- xmlregexp: Calc string length after null checking
> +- xpointer: Check overflow in xmlXPtrEvalXPtrPart
> +- xmlIO: Check for int overflow before calling writecallback
> +- fix(xinclude): propagate parseFlags in xmlXIncludeProcess and xmlXIncludeProcessTree
> +
> + [...]
> 
> I possess no further details.

FTR, some CVEs got assigned for issues fixed in 2.15.4: 

https://www.cve.org/CVERecord?id=CVE-2026-86137:
| In libxml2 before 2.15.4, xmlFAParsePosCharGroup has an out-of-bounds
| read, aka an out-of-bounds read in the NXT macro in xmlregexp.

https://www.cve.org/CVERecord?id=CVE-2026-86138
| In libxml2 before 2.15.4, xmlDictAddQString in dict.c has an integer
| overflow and resultant heap-based buffer overflow.

https://www.cve.org/CVERecord?id=CVE-2026-86139
| In libxml2 before 2.15.4, xmlURIEscapeStr in uri.c has an integer
| overflow.

https://www.cve.org/CVERecord?id=CVE-2026-86140
| In libxml2 before 2.15.4, xmlSnprintfElements in valid.c has a strcat
| stack-based buffer overflow.

https://www.cve.org/CVERecord?id=CVE-2026-86141
| xmlregexp in libxml2 before 2.15.4 has a NULL pointer dereference in
| xmlRegNewParserCtxt after a strdup failure, i.e., it does not
| calculate a string length after NULL checking.

https://www.cve.org/CVERecord?id=CVE-2026-86142
| In libxml2 before 2.15.4, there is a heap-based buffer overflow in
| xmlXPtrEvalXPtrPart because of xmlXPtrEval xpointer length saturation.

https://www.cve.org/CVERecord?id=CVE-2026-86143
| In xmlIO in libxml2 before 2.15.4, an inconsistency in
| xmlOutputWriteCallback and xmlBufUse causes negative lengths to reach
| write callbacks, aka a lack of a check for integer overflow before
| calling writecallback. This has security relevance for many types of
| uses of that length value within a callback.

https://www.cve.org/CVERecord?id=CVE-2026-86144
| In xinclude in libxml2 before 2.15.4, xmlXIncludeProcess and
| xmlXIncludeProcessTree do not propagate parseFlags. This has security
| relevance for, for example, the XML_PARSE_NONET flag, if (without it)
| a custom resource loader accesses the internet and triggers XML
| external entity injection, SSRF, or a denial of service (e.g., for an
| attacker-controlled internet resource that is intentionally slow).

Regards,
Salvatore
