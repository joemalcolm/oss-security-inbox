X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/20/1
Message-ID: <CADk+mPA-rT4nXSHB2Jku4Mfbw5Sw_2eTAYY0C0-BcBma72yV9g@mail.gmail.com>
Date: Mon, 20 Jul 2026 12:14:52 +0200
From: Rainer Gerhards <rgerhards@...adiscon.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-61548: rsyslog mmpstrucdata stack overflow
Content-Type: text/plain; charset=utf-8

Hello,

A CVE identifier, CVE-2026-61548, has been assigned to a
stack-based buffer overflow in rsyslog's optional
mmpstrucdata module.

GitHub advisory:

  GHSA-8qmr-c66f-g368

Affected versions:

  rsyslog 7.5.4 and later, before 8.2606.0

Fixed version:

  rsyslog 8.2606.0

Severity:

  High, CVSS 3.1 score 8.1

Weakness:

  CWE-121: Stack-based Buffer Overflow


Technical details
-----------------

The issue occurs while mmpstrucdata parses RFC 5424
structured-data parameter values.

In affected versions, parseSD_PARAM() allocates a fixed
32,768-byte stack buffer:

  uchar pVal[32 * 1024];

It then passes this buffer to parsePARAM_VALUE() without
providing its size.

parsePARAM_VALUE() writes the parameter value into the
buffer without checking the destination size. Its loop is
bounded only by the length of the structured-data input.

If rsyslog accepts a structured-data parameter value larger
than the fixed buffer, attacker-controlled data can overwrite
the stack.


Affected configurations
-----------------------

A deployment is affected only when all of the following
conditions are met:

- the optional mmpstrucdata plugin is installed;

- the plugin is explicitly loaded and used in the rsyslog
  configuration;

- attacker-controlled RFC 5424 structured data reaches the
  mmpstrucdata action; and

- the effective MaxMessageSize setting permits a
  structured-data parameter value exceeding the historical
  32 KiB buffer.

Default configurations that do not load and use
mmpstrucdata, or whose effective message-size limit is below
the required threshold, are not affected by this specific
issue.

Downstream packaging differs between distributions. The
module may be included in the main rsyslog package, provided
as a separate package, or not shipped at all.

Users and distributions should therefore verify both the
presence of the module and whether it is used by the active
configuration.

Raising MaxMessageSize above the upstream default is used in
some larger log-processing deployments and should not be
treated as a purely theoretical configuration.


Impact
------

A remote, unauthenticated attacker who can send crafted
RFC 5424 messages through an input path processed by
mmpstrucdata can crash the rsyslog process.

This can cause denial of service and interruption of log
collection.

The demonstrated impact is a process crash.

Because this is a stack overwrite containing
attacker-controlled data, code execution may be possible on
some platforms or builds, depending on compiler, libc, and
runtime hardening.

The rsyslog project has not demonstrated code execution on
standard hardened glibc-based distribution builds.

The reporter reproduced the crash on Debian 12 with rsyslog
8.2302.0 over both TCP and UDP.

The test configuration used:

  global(maxMessageSize="40000")

with mmpstrucdata loaded and an action invoking the module.


Fix
---

The vulnerable code path is no longer present in upstream
main.

After the vulnerability was reported, PR #6991 was merged as
part of broader mmpstrucdata cleanup and refactoring.

That refactoring removed the fixed-size structured-data
parameter buffer and therefore also removed the
vulnerability.

The PR was merged publicly before coordination of the
private advisory had been completed. This was a process
error on our side.

As a consequence, the security-relevant code change became
public earlier than intended.

The public PR did not disclose the vulnerability details,
proof of concept, CVSS analysis, or exploitability
assessment.

Nevertheless, it contained the effective correction and was
therefore regarded by some distributions as an already
public fix.

For stable downstream versions, taking the complete
refactoring is not required.

The recommended minimal backport is to replace the fixed
stack buffer with a dynamically allocated buffer sized
according to the already validated structured-data length,
including space for the terminating NUL byte.

Conceptually, the relevant change is:

  uchar *pVal = malloc((size_t)lenbuf + 1);
  if (pVal == NULL) {
      iRet = RS_RET_OUT_OF_MEMORY;
      goto finalize_it;
  }

  CHKiRet(parsePARAM_VALUE(sdbuf, lenbuf, &i, pVal));

  ...

  finalize_it:
      free(pVal);

The first upstream release containing the fix is rsyslog
8.2606.0.


Workarounds
-----------

Users unable to update immediately can reduce exposure by:

- not loading or using mmpstrucdata unless it is required;

- restricting network inputs whose messages reach an
  mmpstrucdata action; or

- keeping MaxMessageSize below the threshold required for
  an oversized structured-data parameter value, where
  operationally possible.

These mitigations may not be suitable for deployments that
require both mmpstrucdata and large RFC 5424 messages.


Credits
-------

The vulnerability was reported by Mike Cole, GitHub user
mikecole-mg.

Regards,
Rainer Gerhards
rsyslog project
