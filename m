X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/11/10
Message-ID: <06600a64-e46a-5784-dc28-51b318bf1a11@apache.org>
Date: Fri, 11 Sep 2026 17:39:13 +0000
From: Richard Zowalla <rzo1@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-82617: Apache OpenNLP: ReDoS / stack exhaustion in RegexNameFinderFactory built-in EMAIL and URL patterns 
Content-Type: text/plain; charset=utf-8

Severity: 

Affected versions:

- Apache OpenNLP (org.apache.opennlp:opennlp-core) 3.0.0-M1 before 3.0.0-M6
- Apache OpenNLP (org.apache.opennlp:opennlp-tools) 2.0.0 before 2.5.12

Description:

The two built-in name-finder patterns exposed by
opennlp.tools.namefind.RegexNameFinderFactory - DEFAULT_REGEX_NAME_FINDER.EMAIL
and DEFAULT_REGEX_NAME_FINDER.URL - contain ambiguous nested quantifiers. An
application that obtains these finders through
RegexNameFinderFactory.getDefaultRegexNameFinders(...) and then applies them to
untrusted text through RegexNameFinder.find(String[]) or RegexNameFinder.find(String)
can be driven into super-linear backtracking or into unbounded matcher recursion by a
small crafted input.





For the EMAIL pattern, a long run of local-part characters that is never followed by an
@ forces the matcher to re-scan to end-of-input from every starting offset. Cost grows
quadratically with input length: an input of approximately 32 KB consumes several seconds
of CPU in a single find() call and returns no match, and each doubling of the input
multiplies the cost roughly four-fold.





For the URL pattern, the query-string sub-expression nests a capturing repetition inside
an outer repetition. The JDK matcher recurses once per query token, so an input of
approximately 4 KB containing many &-separated tokens exhausts the thread stack and
causes java.lang.StackOverflowError to propagate out of find(), terminating the
calling thread. On a thread created with a smaller stack (for example -Xss512k, typical
of server worker pools) approximately 1 KB is sufficient.





In both cases an attacker who can supply text for analysis can convert a single request
into seconds to minutes of pinned CPU, or into an abrupt thread death, denying service to
the embedding application. No authentication, special configuration, or model file is
required beyond the application having selected one of the two built-in finders.





This issue affects Apache OpenNLP: from 2.0.0 through 2.5.11; from 3.0.0-M1 through
3.0.0-M5.









Users are recommended to upgrade to version 2.5.12, or to 3.0.0-M6 for users tracking the
3.0.0 milestone line, which fix the issue.

Credit:

n0mi1k (finder)

References:

https://opennlp.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-82617

