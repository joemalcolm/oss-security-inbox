X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/23/19
Message-ID: <8b3b7844-19ed-4884-a047-7bf190626621@pipping.org>
Date: Mon, 23 Nov 2026 20:09:00 +0100
From: Sebastian Pipping <sebastian@...ping.org>
To: oss-security@...ts.openwall.com
Subject: libexpat 2.11.0 fixes three vulnerabilities
Content-Type: text/plain; charset=utf-8

Hello oss-security,


just a quick note that libexpat 2.11.0 (or "Expat 2.11.0") released
today is fixing three vulnerabilities:

- CVE-2026-124317
- CVE-2026-128241
- CVE-2026-134703

The related part of the change log is this:

   #1492⁠  CVE-2026-124317 -- Fix overread in unknown encoding decoder
            It needs use of `XML_SetUnknownEncodingHandler` to be
            affected.
   #1502⁠  CVE-2026-128241 -- xmlwf: Plug symlink attacks with the
            `-d <directory>` mode. The xmlwf CLI of libexpat was
            vulnerable to symlink attacks in the `-d <directory>` mode
            with a target directory writable by other users, e.g. /tmp.
            The attack allowed truncation or overwriting the symlink
            target file depending on the well-formedness of the XML
            being parsed.
   #1519  CVE-2026-134703 -- Malformed UTF-16 content ending in
            isolated high surrogates could be passed to character data
            and default handlers depending on their location in the
            parsed document and could cause arbitrary damage depending
            on the handler code in the application using libexpat.
            Applications can expect text free from isolated surrogates
            from Expat.
            Similar to past CVE-2026-93990 and CVE-2022-25235.
   #1495  Restore and document `-fno-strict-aliasing` for security
            with both GCC and Clang >=20.
            libexpat continues to be `-Wstrict-aliasing=3` clean and
            to reject violations via CI but there are multiple known
            strict aliasing violations within libexpat that despite
            `-Wstrict-aliasing=3` are not detected by GCC and which
            are hard to impossible to resolve without a mess. These and
            potentially other cases run the risk of miscompilation(!)
            with `-O2/-O3/Os` without explicit `-fno-strict-aliasing`.
            Hence `-fno-strict-aliasing` is brought back to both build
            systems and is recommended to everyone embedding libexpat
            in particular (but not only) to avoid surprises from
            potential miscompilation. If curious, for the 2016 article
            by John Regehr that motivated this move please see:
            https://blog.regehr.org/archives/1307 .

Some key links are:

- The blog post about it
   https://blog.hartwork.org/posts/expat-2-11-0-released/

- The full change log of release 2.11.0
   https://github.com/libexpat/libexpat/blob/R_2_11_0/expat/Changes

- The fixing pull requests
   - https://github.com/libexpat/libexpat/pull/1492
   - https://github.com/libexpat/libexpat/pull/1502⁠
   - https://github.com/libexpat/libexpat/pull/1519
   - https://github.com/libexpat/libexpat/pull/1495

- The NVD CVE metadata
   - https://nvd.nist.gov/vuln/detail/cve-2026-124317
   - https://nvd.nist.gov/vuln/detail/cve-2026-128241
   - https://nvd.nist.gov/vuln/detail/cve-2026-134703

Best



Sebastian

