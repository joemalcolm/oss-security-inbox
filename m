X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/04/09/2
Message-ID: <alpine.LRH.2.21.2004082122240.17854@mail.gathman.org>
Date: Wed, 8 Apr 2020 21:26:07 -0400 (EDT)
From: Stuart D Gathman <stuart@...hman.org>
To: oss-security@...ts.openwall.com
Subject: Re: [CVE-2019-16782] Possible Information Leak / Session Hijack Vulnerability in Rack
Content-Type: text/plain; charset=utf-8

On Thu, 9 Apr 2020, Brian May wrote:

>> 1. The attacker could send various bogus session ids, starting with
>> all possible valid bytes. The database, if it uses a trie (yes,
>> strawman example - is it used by any real-world database?) as a data
>> structure to speed up looking up sessions, will terminate the
>> comparison early on invalid bytes, thus disclosing them.

Not real-world as the number of installations is maybe 6 now, but
the one I wrote removes leading duplicates from index records (replacing
with a dup count).  I believe that timing the lookups could disclose
bytes as described.  It's super efficient, though.  :-)

