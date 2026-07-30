X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/30/22
Message-ID: <edd15e51-42c2-4927-b52c-fd9a3ce3eba5@oracle.com>
Date: Thu, 30 Jul 2026 09:50:54 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: 33 Vulnerabilities in cJSON
Content-Type: text/plain; charset=utf-8

https://joshua.hu/cjson-json-parser-cve-vulnerabilities says:
> cJSON is probably the most widely used JSON parser in the C world. It’s
> vendored into ESP-IDF, into a lot of embedded firmware, and into a whole lot
> more server-side C. I found 33 security issues in it, using a mix of AI and
> some manual fuzzing and review. They affect every version up to and including
> v1.7.19, and every one of them is still in the current code.
> 
> Looking at cJSON’s GitHub, several of these issues have been reported before,
> some with working proofs of concept attached, and a few of those reports are
> years old by now. Development has been more or less stagnant for four
> years. Memory-safety reports sit open and unanswered, and in a few cases the
> patch that would fix them is sitting right there in the same thread,
> unmerged. For most of what follows there is simply nothing available to
> apply. So this is a writeup instead of another bug report. If you ship cJSON,
> you need to know what’s in it, because nobody is going to hand you a fixed
> version.
> 
> Every proof of concept below is complete and self-contained. I compiled them
> all with:
> 
>   cc -fsanitize=address,undefined -fno-omit-frame-pointer -g -O0 \
>      -I. cJSON.c cJSON_Utils.c poc.c -o poc -lm
> 
> One thing to know before you try to reproduce any of this. A few of them only
> crash with AddressSanitizer and UndefinedBehaviorSanitizer enabled together,
> on an unoptimised build, because it’s the instrumentation that fattens the
> stack frames enough to run off the end. With ASan alone, or at -O2, some of
> them quietly return NULL instead. Test with a partial sanitizer set and this
> library looks considerably healthier than it is.
> 
> The first thirteen are memory-safety issues and a denial of service. The rest
> are logic bugs, most of which lose data or operate on the wrong object member
> without saying so. In a library whose whole job is applying somebody else’s
> patch document to your data, I count those.
> 
> Note: I used AI to help write this post, mostly because there are so many of
> them and doing 33 of these by hand is miserable. I have no emotional
> attachment to this project or to these findings, and getting them published
> seemed more useful than getting the prose exactly the way I’d write it myself.
> 
> If cJSON is parsing attacker-controlled JSON anywhere in your stack, look at
> what it would take to move off it. And don’t just merge the unlanded patches
> sitting on the GitHub repository and call it done, either. Some of those
> introduce fresh bugs of their own, from what I saw.

See https://joshua.hu/cjson-json-parser-cve-vulnerabilities for the
writeups of each claimed vulnerability.

CVE-2026-67215, CVE-2026-67216, & CVE-2026-67217 cite this URL as
references for the assigned CVE's.

https://cert.pl/en/posts/2026/07/CVE-2026-16554/ appears to cover
an unrelated vulnerability also disclosed this week.
