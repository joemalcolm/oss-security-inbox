X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/11/11
Message-ID: <63c0a950-9351-4ee2-bdbe-e4497a64790a@oracle.com>
Date: Fri, 11 Sep 2026 13:17:33 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: Re: pcre2 version 10.48 released with security fixes
Content-Type: text/plain; charset=utf-8

On 9/4/26 16:25, Alan Coopersmith wrote:
>> * (Security fix for very specific API usage, GHSA-2p8c-ff85-vh9x) If
>> pcre2_jit_compile() is called with options for some match modes, and then
>> pcre2_match() is used to perform a match for a different match mode, an
>> out-of-bounds read can occur if the match is attempted against invalid UTF input.

This is now assigned CVE-2026-89156.

>> * (Security fix for pattern conversion, GHSA-q8g2-wprr-34m9) If pcre2_convert()
>> is called on untrusted input on platforms with 32-bit size_t, an out-of-bounds
>> heap write can occur.

This is now assigned CVE-2026-89157.

>> * (Security fix, GHSA-3r4p-g7gg-ppmf) Fixed an out-of-bounds write in DFA
>> matching when using a heap limit; also fixed possible integer overflows which
>> could cause under-allocation of the workspace.

As Salvatore previously noted, this one got CVE-2026-86145.

>> * (Security fix, GHSA-fmgr-6ggq-9859) Added bounds checks for several integer
>> overflows while compiling patterns on 32-bit CPUs, which could cause
>> under-allocation followed by out-of-bounds writes.

This is now assigned CVE-2026-89158.

>> * (Security fix, GHSA-9qww-pwc4-77qq) Applied lower buffer bound to prevent
>> two out-of-bounds reads while scanning backwards through invalid UTF data with
>> PCRE2_MATCH_INVALID_UTF.

This is now assigned CVE-2026-89160.

>> * (Security fix for very specific API usage, #937) Fixed a leak and later
>> invalid free when calling the fast-path pcre2_jit_match() function with a match
>> data object previously used with pcre2_match() and
>> PCRE2_COPY_MATCHED_SUBJECT.

This is now assigned CVE-2026-89161.

>> * (Low-severity security fix, GHSA-q7rw-r7qq-2hx6) Fixed exposure of two
>> uninitialised bytes from malloc() via pcre2_serialize_encode().

This is now assigned CVE-2026-89162.

-- 
         -Alan Coopersmith-                 alan.coopersmith@...cle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris
