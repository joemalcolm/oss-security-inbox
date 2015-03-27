X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3365" "Friday" "27" "March" "2015" "19:48:01" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150327234801.AB6AC6C003B@smtpvmsrv1.mitre.org>" "78" "[oss-security] Re: CVE Request: Multiple vulnerabilities in freexl 1.0.0g" nil nil nil "3" "2015032723:48:01" "[oss-security] Re: CVE Request: Multiple vulnerabilities in freexl 1.0.0g" (number mark "        cve-assign@m Mar 27   78/3365  " thread-indent "\"[oss-security] Re: CVE Request: Multiple vulnerabilities in freexl 1.0.0g\"\n") "<CABfY0L1Y2CYFQ-Hd-kohtzLKDy9aFFKmQM_drwsiR3MpEZ+KJA@mail.gmail.com>" ("<CABfY0L1Y2CYFQ-Hd-kohtzLKDy9aFFKmQM_drwsiR3MpEZ+KJA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3624 invoked by uid 550); 27 Mar 2015 23:48:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3606 invoked from network); 27 Mar 2015 23:48:13 -0000
In-Reply-To: <CABfY0L1Y2CYFQ-Hd-kohtzLKDy9aFFKmQM_drwsiR3MpEZ+KJA@mail.gmail.com>
Message-Id: <20150327234801.AB6AC6C003B@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Fri, 27 Mar 2015 19:48:01 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: Multiple vulnerabilities in freexl 1.0.0g
To: jodie.cunningham@gmail.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

>> #4: FreeXL 1.0.0g did not properly check requests for workbook memory
>> allocation. A specially crafted input file could cause a Denial of
>> Service, or possibly write onto the stack.

> This vulnerability is related to the missing "> 1024 * 1024" test in
> the parse_SST function.

Use CVE-2015-2776.


>>> #2: A flaw was found in the function allocate_cells(). A specially
>>> crafted file with invalid workbook dimensions could possibly result in
>>> stack corruption near freexl.c:1074

>> Does this refer to the missing "== NULL" tests within the
>> allocate_cells function?

> Yes

>> Is a NULL pointer dereference going to occur
>> before the code reaches a point where there can be stack corruption?

> I don't believe so. It looks like these are initialized as NULL, and
> if they are still NULL at this point in execution then we assume the
> input file was malformed and exit with the appropriate return code.

In that case, we don't know what vulnerability you mean for #2.

Between the unpatched code and the patched code, the only change in
the allocate_cells function is the addition of checks for whether
workbook or workbook->active_sheet is NULL. In the unpatched code, if
either of these were NULL, workbook->active_sheet->rows would result
in a NULL pointer dereference. As far as we know, this outcome is not
typically described as "stack corruption."

If the design of the allocate_cells function was supposed to
anticipate that callers might provide a NULL value for workbook or
workbook->active_sheet, then the unpatched code had a vulnerability in
the allocate_cells function that might loosely be described as a "NULL
pointer dereference vulnerability."

We think you may mean that, in some cases, stack corruption has
occurred because of invalid workbook dimensions before the
allocate_cells function is called. In some or all of these cases, a
side effect of the stack corruption is that either workbook or
workbook->active_sheet is NULL. The patched code, instead of
preventing the stack corruption (or detecting the stack corruption
before calling allocate_cells), chooses to use these "== NULL" tests
to infer that stack corruption has occurred. Is this correct?

(The concern here is that this would not typically be described as "A
flaw was found in the function allocate_cells()." It might instead be
described as something like "a missed opportunity to use the function
allocate_cells() to address stack corruption elsewhere."

Maybe this is a subtle distinction but it, in general, affects both
the meaning of the CVE and the usefulness of doing some additional
types of security research on the FreeXL code.)

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVFetiAAoJEKllVAevmvmsljMH/3NyPgTVznHzMQ3VFi1x8IIL
HLbNwB+sGlU6mgN4lnuyLf2rMQVpYHeXbFo3A7oXzBQF4OctEBFv/9Qa2GRcL6N7
EYBtFOYZkPGRy4bDT5ucgUW79ZTSkwHCZM3bTbmj/FceoOZWCu84GwhuspLDa1Wt
lSzwkwidfuAu83pBj2UiQPmxjE6dKsriYOfZL8Ru3ZstbO80dmxXgZLQ28D58LaY
kXV0D8GdO/i1Uwmmei1D6jzkysyZKm2boV4cEiUmJ6t6oS5hJZeD/KG/+IHPyGrg
vhMVAF10dU/nxCk3GBlE3jXvq9CzI1p53e8bT9pgDkx93fvNY6Vj8rnrFdS7vTM=
=IKyu
-----END PGP SIGNATURE-----
