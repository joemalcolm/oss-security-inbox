X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/20/6
Message-ID: <daae47ef01065c611c9fd109d2245756@cpansec.org>
Date: Thu, 19 Nov 2026 22:09:52 -0400
From: Timothy Legge <timlegge@...nsec.org>
To: Oss Security <oss-security@...ts.openwall.com>
Subject: Convert-ASN1 versions before 0.37 for Perl (8 CVEs)
Content-Type: text/plain; charset=utf-8

CVE-2026-126540
   Convert::ASN1 versions before 0.37 for Perl allow CPU exhaustion via
   quadratic bigint loop in os2ip

CVE-2026-126568
   Convert::ASN1 versions before 0.37 for Perl allow memory exhaustion
   via unbounded MSG_PEEK buffer doubling in asn_recv

CVE-2026-126576
   Convert::ASN1 versions before 0.37 for Perl allow CPU exhaustion via
   unchecked exponent length in binary REAL decoding

CVE-2026-126682
   Convert::ASN1 versions before 0.37 for Perl allow CPU exhaustion via
   exponent-notation string in INTEGER encoding

CVE-2026-126819
   Convert::ASN1 versions before 0.37 for Perl allow memory exhaustion
   via zero-length BIT STRING content

CVE-2026-126956
   Convert::ASN1 versions before 0.37 for Perl allow memory exhaustion
   via unlimited recursion depth in constructed-form string decoding

CVE-2026-131868
   Convert::ASN1 versions before 0.37 for Perl allow memory exhaustion
   via a declared element length passed unchecked to sysread in asn_read
   and asn_get

CVE-2026-131877
   Convert::ASN1 versions before 0.37 for Perl allow CPU exhaustion via
   unbounded arc length in OBJECT IDENTIFIER decoding and encoding


========================================================================
CVE-2026-126540                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-126540

   Distribution:  Convert-ASN1
       Versions:  before 0.37
       MetaCPAN:  https://metacpan.org/dist/Convert-ASN1
       VCS Repo:  https://github.com/cpan-authors/perl-Convert-ASN1


Convert::ASN1 versions before 0.37 for Perl allow CPU exhaustion via
quadratic bigint loop in os2ip

Description
-----------
Convert::ASN1 versions before 0.37 for Perl allow CPU exhaustion via
quadratic bigint loop in os2ip.

Every INTEGER or ENUMERATED longer than four content octets reaches
os2ip, which iterates over each content octet with $result = ($result *
256) + $octet. Each multiplication operates on a bigint that grows by
one octet per step, so decoding an n-octet value takes O(n^2) bigint
work. Nothing limits content length before this loop runs.

An attacker who controls the decoded data can exhaust CPU with a single
oversized INTEGER or ENUMERATED value.

Problem types
-------------
- CWE-407 Inefficient Algorithmic Complexity

Solutions
---------
Upgrade to Convert-ASN1 0.37 or later.

References
----------
https://github.com/cpan-authors/perl-Convert-ASN1/commit/49b362c527e0af05fca9be1e97e4a340d95afa75.patch
https://metacpan.org/release/TIMLEGGE/Convert-ASN1-0.37/changes
https://github.com/cpan-authors/perl-Convert-ASN1/issues


========================================================================
CVE-2026-126568                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-126568

   Distribution:  Convert-ASN1
       Versions:  before 0.37
       MetaCPAN:  https://metacpan.org/dist/Convert-ASN1
       VCS Repo:  https://github.com/cpan-authors/perl-Convert-ASN1


Convert::ASN1 versions before 0.37 for Perl allow memory exhaustion via
unbounded MSG_PEEK buffer doubling in asn_recv

Description
-----------
Convert::ASN1 versions before 0.37 for Perl allow memory exhaustion via
unbounded MSG_PEEK buffer doubling in asn_recv.

asn_recv peeks the socket in a loop, doubling the buffer size on each
pass until a tag and length can be decoded. An inverted boolean guard
($tb || rather than $tb &&) prevents the need-more-data exit from
firing once a tag byte has been decoded. When asn_decode_length returns
no value because the length is absent or incomplete, no exit fires for
that case either. MSG_PEEK leaves socket data unconsumed, so each
re-peek returns at once while the buffer size doubles.

A single truncated BER header sent to a process calling asn_recv
doubles the peek buffer until memory is exhausted. Perl's realloc
failure is fatal and not catchable with eval.

Problem types
-------------
- CWE-835 Loop with Unreachable Exit Condition

Solutions
---------
Upgrade to Convert-ASN1 0.37 or later.

References
----------
https://github.com/cpan-authors/perl-Convert-ASN1/commit/a30eae1dc6a977716b76f79f228fa0432e28bc5a.patch
https://metacpan.org/release/TIMLEGGE/Convert-ASN1-0.37/changes
https://github.com/cpan-authors/perl-Convert-ASN1/issues


========================================================================
CVE-2026-126576                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-126576

   Distribution:  Convert-ASN1
       Versions:  before 0.37
       MetaCPAN:  https://metacpan.org/dist/Convert-ASN1
       VCS Repo:  https://github.com/cpan-authors/perl-Convert-ASN1


Convert::ASN1 versions before 0.37 for Perl allow CPU exhaustion via
unchecked exponent length in binary REAL decoding

Description
-----------
Convert::ASN1 versions before 0.37 for Perl allow CPU exhaustion via
unchecked exponent length in binary REAL decoding.

Binary REAL decoding never bounds-checks the exponent length against
the available content. For a minimal one-byte binary REAL, the exponent
byte is read from outside the element, making the mantissa length -1.
Perl reads a negative length as an offset from the end of the string,
so the mantissa is nearly all of the input that follows the element.
The long-form exponent path also omits the extra length octet when
sizing the mantissa.

An attacker who controls the decoded data can exhaust CPU with a list
of such values, as each mantissa loop iterates over the remaining
input. The decoded values are also computed from bytes outside each
element.

Problem types
-------------
- CWE-130 Improper Handling of Length Parameter Inconsistency
- CWE-407 Inefficient Algorithmic Complexity

Solutions
---------
Upgrade to Convert-ASN1 0.37 or later.

References
----------
https://github.com/cpan-authors/perl-Convert-ASN1/commit/6158dbb33cc3d248a95b4ab4948a135e18141b51.patch
https://metacpan.org/release/TIMLEGGE/Convert-ASN1-0.37/changes
https://github.com/cpan-authors/perl-Convert-ASN1/issues


========================================================================
CVE-2026-126682                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-126682

   Distribution:  Convert-ASN1
       Versions:  before 0.37
       MetaCPAN:  https://metacpan.org/dist/Convert-ASN1
       VCS Repo:  https://github.com/cpan-authors/perl-Convert-ASN1


Convert::ASN1 versions before 0.37 for Perl allow CPU exhaustion via
exponent-notation string in INTEGER encoding

Description
-----------
Convert::ASN1 versions before 0.37 for Perl allow CPU exhaustion via
exponent-notation string in INTEGER encoding.

The encoder routes any value with abs >= 2**31 to i2osp without
validating that it is an integer. A string in exponent notation such as
"1e8000" passes that threshold. Math::BigInt expands it to an
8001-digit integer, and i2osp's per-octet conversion loop is quadratic
in that size.

An attacker who controls encoded INTEGER values can exhaust CPU with a
short exponent-notation string.

Problem types
-------------
- CWE-407 Inefficient Algorithmic Complexity
- CWE-1284 Improper Validation of Specified Quantity in Input

Solutions
---------
Upgrade to Convert-ASN1 0.37 or later.

References
----------
https://github.com/cpan-authors/perl-Convert-ASN1/commit/f259213110a90f38cfd1c7e7ff6789178ce9105f.patch
https://metacpan.org/release/TIMLEGGE/Convert-ASN1-0.37/changes
https://github.com/cpan-authors/perl-Convert-ASN1/issues


========================================================================
CVE-2026-126819                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-126819

   Distribution:  Convert-ASN1
       Versions:  before 0.37
       MetaCPAN:  https://metacpan.org/dist/Convert-ASN1
       VCS Repo:  https://github.com/cpan-authors/perl-Convert-ASN1


Convert::ASN1 versions before 0.37 for Perl allow memory exhaustion via
zero-length BIT STRING content

Description
-----------
Convert::ASN1 versions before 0.37 for Perl allow memory exhaustion via
zero-length BIT STRING content.

A BIT STRING with zero content octets passes -1 to substr as the
length. Perl reads a negative length as an offset from the end of the
string, so the decoded value is nearly all of the input that follows
the element. In the constructed form each zero-length segment copies
the rest of the input again, so memory grows with the square of the
input size.

An attacker who controls the decoded data can exhaust memory with a
short constructed BIT STRING. The resulting value also contains bytes
from adjacent input.

Problem types
-------------
- CWE-1284 Improper Validation of Specified Quantity in Input

Solutions
---------
Upgrade to Convert-ASN1 0.37 or later.

References
----------
https://github.com/cpan-authors/perl-Convert-ASN1/commit/a369bb1c39061d67454216a6a1d0eae11932806e.patch
https://metacpan.org/release/TIMLEGGE/Convert-ASN1-0.37/changes
https://github.com/cpan-authors/perl-Convert-ASN1/issues


========================================================================
CVE-2026-126956                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-126956

   Distribution:  Convert-ASN1
       Versions:  before 0.37
       MetaCPAN:  https://metacpan.org/dist/Convert-ASN1
       VCS Repo:  https://github.com/cpan-authors/perl-Convert-ASN1


Convert::ASN1 versions before 0.37 for Perl allow memory exhaustion via
unlimited recursion depth in constructed-form string decoding

Description
-----------
Convert::ASN1 versions before 0.37 for Perl allow memory exhaustion via
unlimited recursion depth in constructed-form string decoding.

Any constructed-form string element causes the decoder to recurse on
the element's contents. The BER encoding controls nesting depth at four
bytes per level, with no bound checked. Perl recursion is
heap-allocated, so the process grows without a stack crash.

An attacker who controls the decoded data can exhaust memory with a
small deeply nested constructed string.

Problem types
-------------
- CWE-674 Uncontrolled Recursion

Solutions
---------
Upgrade to Convert-ASN1 0.37 or later.

References
----------
https://github.com/cpan-authors/perl-Convert-ASN1/commit/99a96139a322ba0a5183c7e40a8857f3550daace.patch
https://metacpan.org/release/TIMLEGGE/Convert-ASN1-0.37/changes
https://github.com/cpan-authors/perl-Convert-ASN1/issues


========================================================================
CVE-2026-131868                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-131868

   Distribution:  Convert-ASN1
       Versions:  before 0.37
       MetaCPAN:  https://metacpan.org/dist/Convert-ASN1
       VCS Repo:  https://github.com/cpan-authors/perl-Convert-ASN1


Convert::ASN1 versions before 0.37 for Perl allow memory exhaustion via
a declared element length passed unchecked to sysread in asn_read and
asn_get

Description
-----------
Convert::ASN1 versions before 0.37 for Perl allow memory exhaustion via
a declared element length passed unchecked to sysread in asn_read and
asn_get.

The length an element declares in its BER header is passed to sysread
as the read size. Perl grows the target buffer to that size before
reading, so memory is allocated from the declared length, not from the
data received. A 6-byte header can declare a length of up to 4GB.

A single header makes the reading process allocate the declared size.
Where the allocation fails, perl exits with "Out of memory", which eval
cannot catch.

Problem types
-------------
- CWE-789 Memory Allocation with Excessive Size Value

Solutions
---------
Upgrade to Convert-ASN1 0.37 or later.

References
----------
https://github.com/cpan-authors/perl-Convert-ASN1/commit/88bd86b5a3ce3430ebb8b78fe5307f234198bf16.patch
https://metacpan.org/release/TIMLEGGE/Convert-ASN1-0.37/changes


========================================================================
CVE-2026-131877                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-131877

   Distribution:  Convert-ASN1
       Versions:  before 0.37
       MetaCPAN:  https://metacpan.org/dist/Convert-ASN1
       VCS Repo:  https://github.com/cpan-authors/perl-Convert-ASN1


Convert::ASN1 versions before 0.37 for Perl allow CPU exhaustion via
unbounded arc length in OBJECT IDENTIFIER decoding and encoding

Description
-----------
Convert::ASN1 versions before 0.37 for Perl allow CPU exhaustion via
unbounded arc length in OBJECT IDENTIFIER decoding and encoding.

The content of an OBJECT IDENTIFIER or RELATIVE-OID element is passed
to unpack "w*" on decode, and the arcs of an OID string to pack "w*" on
encode. Perl converts each arc to or from its decimal string in time
quadratic in the arc's length, and nothing limits that length.

An attacker who controls the decoded data, or an OID string passed to
encode, can exhaust CPU with a single oversized arc.

Problem types
-------------
- CWE-407 Inefficient Algorithmic Complexity

Solutions
---------
Upgrade to Convert-ASN1 0.37 or later.

References
----------
https://github.com/cpan-authors/perl-Convert-ASN1/commit/805a7ee7d6c01a7dd6e0479fabcaadd7f9116e70.patch
https://metacpan.org/release/TIMLEGGE/Convert-ASN1-0.37/changes
https://github.com/cpan-authors/perl-Convert-ASN1/issues
