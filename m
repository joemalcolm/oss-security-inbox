X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/04/10/13
Message-ID: <20260410151433.GA15774@oevtugenva.nrevsny.pk>
Date: Fri, 10 Apr 2026 11:14:52 -0400
From: Rich Felker <dalias@...c.org>
To: musl@...ts.openwall.com, oss-security@...ts.openwall.com
Subject: CVE-2026-40200: musl libc: stack corruption in qsort with sufficiently large inputs
Content-Type: text/plain; charset=utf-8

Overview:

musl libc's implementation of the qsort function may write past the
end of a stack-based buffer when the number of elements to be sorted
exceeds a certain threshold beyond 7 million elements on 32-bit
systems. On 64-bit systems, the threshold is large enough not to
practical, exceeding 34 trillion.



Impact:

Not yet determined. At least a crash and possibly code execution on
32-bit systems. 64-bit systems without at least terrabyte-scale
virtual memory available are not affected.



Details:

The malfunction occurs when the Leonardo heap structure used by the
smoothsort algorithm has a subtree whose size is the Leonardo number
with index equal to the number of bits in the system word size.

Generating this condition depends on the size of the input array and
the preexisting order relationships between the elements according to
the comparison function. It has not been determined whether an
attacker could arrange to obtain control over the flow of execution
through a particular crafting of the input array. However, given that
there are indirect calls to a comparison function in the code path,
the risk is high, possibly even with stack protector enabled.

The root cause is a logic errors in the double-word "count trailing
zeros" and double-word bitshift primitives used here. A first set bit
at the boundary between the low and high word was wrongly counted as
bit 0 rather than bit 32 or 64, and a shift by exactly the number of
bits in a word invoked undefined behavior, possibly corrupting the
bitset.



Affected versions:

The vulnerable code has been present since version 0.7.10.

All subsequent versions up through 1.2.6 are affected.



Mitigation:

All users should apply the patch included/attached below, or upgrade
to 1.2.7 once it becomes available.



Credits:

This bug was first reported by Hankins on the public musl libc mailing
list, but without any indication that it might be a vulnerability.
Subsequent analysis determined that it is. A previously-overlooked
aspect of UB in the bit shifting was discovered by Luca Kellermann.

View attachment "CVE-2026-40200.diff" of type "text/plain" (5594 bytes)
