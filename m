X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/01/3
Message-ID: <CAAZhgk41XSv-YWTqzxUGz3aKPdxog2oBG4e-ipzARZRK8R9oyA@mail.gmail.com>
Date: Wed, 2 Sep 2026 02:07:21 +0530
From: Aditi Bhatnagar <aditi@...gridsec.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-80205 : ReDoS in NLTK Text.findall() (CVSS 8.7 High)
Content-Type: text/plain; charset=utf-8

Hello,


We are reporting a high-severity vulnerability in NLTK, a leading Python
natural language processing library (14,000+ GitHub stars) with over a
billion downloads.


  CVE:      CVE-2026-80205
  CVSS:     8.7 (High, CVSSv4) / 7.5 (High, CVSSv3.1)
  GHSA:     https://github.com/nltk/nltk/security/advisories/GHSA-rrv8-h7p8-rx55
  <https://github.com/nltk/nltk/security/advisories/GHSA-rrv8-h7p8-rx55>

  Affected: nltk <= 3.9.4
  Fixed:    3.10.0 (commit d8e4753)


*Summary:  *

The Text.findall() and TokenSearcher.findall() methods accept user-supplied
regex patterns and pass them to Python's re engine without timeout
protection or backtracking complexity validation, enabling a Regular
Expression Denial of Service (ReDoS) attack.

The root cause is that user input undergoes syntactic transformation
(angle-bracket to standard regex conversion), but this preprocessing is
purely structural and does not constrain catastrophic backtracking
potential. The transformed pattern reaches re.findall() unprotected,
allowing nested quantifiers to force exponential state enumeration —
pinning the CPU and hanging the process indefinitely.

*Proof of concept:*

  from nltk.text import Text
  text = Text(["aaaaaaaaaaaaaaaaaaaaaaaa!"])
  text.findall(r"<((a+)+)b>")  # CPU @ 100%, indefinite hang

 * Fix:*

  Upgrade to nltk 3.10.0+:


  pip install "nltk>=3.10.0"


The fix replaces stdlib re with the regex library, which supports timeout
parameters. Both vulnerable methods now accept an explicit timeout argument
with a system-wide default from
nltk.redos.DEFAULT_TIMEOUT, raising TimeoutError instead of allowing
indefinite saturation.
Full writeup: https://www.offgridsec.com/blog-nltk-redos.html

  Reported by: Offgrid Security (https://offgridsec.com)

  Found by: Kira, model-agnostic autonomous AI security agent

