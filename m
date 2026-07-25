X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/25/2
Message-ID: <87tspnc2di.fsf@gmail.com>
Date: Fri, 24 Jul 2026 17:57:29 -0700
From: Collin Funk <collin.funk1@...il.com>
To: oss-security@...ts.openwall.com
Cc: Pádraig Brady <P@...igBrady.com>, Jim Meyering <jim@...ering.net>, Paul Eggert <eggert@...ucla.edu>
Subject: CVE-2026-53910: GNU diffutils bug, and some thoughts on "security" reports
Content-Type: text/plain; charset=utf-8

The CVE id CVE-2026-53910 was assigned to GNU diffutils. In my personal
opinion, the CVE description is an absolute joke [1]:

    An attacker who can control the output of the diff program used by
    diff3 (e.g. via --diff-program pointing to a malicious script) can
    trigger out-of-bounds writes, resulting in a crash and potentially
    remote code execution depending on the environment.

An LLM generated report was sent to myself and a few others on
2026-04-20, showing that you could write a script and pass it to 'diff3'
as the option to '--diff-program' to overflow an integer and then write
4 bytes of data into a bogus address, crashing it with ASAN enabled.

This is a bug of course, and we are thankful the report. However, Paul
Eggert and I responded to the private report saying the obvious, that if
someone has access your system to execute arbitrary programs, surely
there are more productive things to do than feeding 'diff3' garbage.

More annoying is the fear-mongering that every single out-of-bounds
memory access is "potentially remote code execution" by definition,
without any attempt to provide evidence of such.

My annoyance from CVE reports like this is due to the fact that they
waste everyones time. Customers ask vendors for CVEs in their images to
be fixed, as they should, to avoid potential vulnerabilities.
Distribution maintainers rightfully ask for new releases to fix
vulnerabilities, likewise, as they should, as they did in this case [2].
This becomes a nuisance when every little bug, with dubious security
implications is reported as a security issue.

As an example, at my day job I constantly see GNU coreutils
CVE-2025-5278 in CVE scans [3]. Here is the NEWS entry associated with
the bug fix:

    'sort' with key character offsets of SIZE_MAX, could induce
    a read of 1 byte before an allocated heap buffer. For example:
    'sort +0.18446744073709551615R input' on 64 bit systems.
    [bug introduced in coreutils-7.2]

Obviously, this is not really a security concern. It was brought up on
oss-security and Simon McVittie brought up some similar criticisms to
the ones I mention [4]. Likewise the report to the Debian package says
something similar [5]:

    Not sure why this got a CVE assigned, it seems like a regular crash
    without genuine security implications.

I'm beginning to consider if becoming a CNA would save everyones time,
to avoid treating every bug as a security issue if the reported could
dream up a hypothetical scenario where it is one. I mentioned this on
coreutils@....org after seeing CVE-2026-56391 and CVE-2026-56392
assigned, which feel more like bugs than security issues [6]. But I
figured maybe people oss-security would have some interesting input as
well.

Collin

[1] https://nvd.nist.gov/vuln/detail/CVE-2026-53910
[2] https://lists.gnu.org/archive/html/bug-diffutils/2026-07/msg00005.html
[3] https://nvd.nist.gov/vuln/detail/CVE-2025-5278
[4] https://www.openwall.com/lists/oss-security/2025/05/29/1
[5] https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=1106733
[6] https://lists.gnu.org/archive/html/coreutils/2026-07/msg00048.html
