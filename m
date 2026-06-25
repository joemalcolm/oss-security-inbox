X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/25/10
Message-ID: <63605bc9-306b-4d61-9409-1f76f7b9d516@pipping.org>
Date: Thu, 25 Jun 2026 18:23:01 +0200
From: Sebastian Pipping <sebastian@...ping.org>
To: oss-security@...ts.openwall.com
Subject: libexpat 2.8.2 fixes 14 vulnerabilities (integer overflow, out-of-bounds write, ..)
Content-Type: text/plain; charset=utf-8

Hello oss-security,


just a quick note that libexpat 2.8.2 (or "Expat 2.8.2") released
today is fixing 13 vulnerabilities of three classes:

  - 1x out-of-bounds write
  - 3x missing control flow integrity checks
  - 9x integer overflow

The related section of the change log says this:

       #1246  CVE-2026-50219 -- Disallow calls to functions
                `XML_GetBuffer`, `XML_Parse`, `XML_ParseBuffer`,
                `XML_ParserFree`, `XML_ParserReset` to guard e.g.
                Expat bindings from memory corruption;
                this CPython issue is related:
                https://github.com/python/cpython/issues/146169
       #1267  CVE-2026-56131 -- Protect XML_ResumeParser from being
                                called from a handler, plugging a hole in
                                the fix to CVE-2026-50219
       #1272  CVE-2026-56132 -- Fix out-of-bound scaffolding index store
                                in `doProlog`
#1229 #1232  CVE-2026-56403 -- Integer overflow in `storeAtts`
       #1249  CVE-2026-56404 -- Integer overflow in `addBinding`
       #1251  CVE-2026-56405 -- Integer overflow in `getAttributeId`
       #1255  CVE-2026-56406 -- Integer overflow in `XML_ParseBuffer`
       #1262  CVE-2026-56407 -- Integer overflow in `textLen` handling
        #565  CVE-2026-56408 -- Integer overflow in `copyString`
                (commit 16e2efd867ea8567ffa012210b52ef5918e20817)
       #1259  CVE-2026-56409 -- xmlwf: Integer overflow in output path
                                       join
       #1252  CVE-2026-56410 -- xmlwf: Integer overflow in
                `resolveSystemId`
       #1263  CVE-2026-56411 -- xmlwf: Integer overflow in notation list
                allocation
       #1278  CVE-2026-56412 -- Guard XML_TOK_DATA_CHARS handler calls in
                `doCdataSection`, plugging a hole in the fix to
                CVE-2026-50219

Some key links are:

- The blog post about it
   https://blog.hartwork.org/posts/expat-2-8-2-released/

- The change log of release 2.8.2
   https://github.com/libexpat/libexpat/blob/R_2_8_2/expat/Changes

- The related pull requests
  
https://github.com/libexpat/libexpat/pulls?q=is%3Apr+label%3Asecurity+milestone%3A2.8.2+is%3Aclosed

Best



Sebastian
