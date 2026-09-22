X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/22/19
Message-ID: <CADk+mPB6411LD1RfPSYsMuZ3KQ3CBrcUh9OEqxToF=gC7+UFow@mail.gmail.com>
Date: Tue, 22 Sep 2026 18:25:00 +0200
From: Rainer Gerhards <rgerhards@...adiscon.com>
To: oss-security@...ts.openwall.com
Subject: rsyslog imdtls permitted-peer authorization bypass
Content-Type: text/plain; charset=utf-8

Hello,

The optional rsyslog imdtls input module did not enforce
tls.permittedpeer after a successful CA-authenticated DTLS handshake
when configured with tls.authmode="name" or
tls.authmode="fingerprint".

After SSL_accept() succeeds, imdtls performs the permitted-peer
identity check. When that check fails, the module logged a warning but
left the DTLS session active. The session was subsequently read and
received records were passed to the configured ruleset.

Impact
======

A remote peer whose certificate is accepted by the listener's
configured CA, but whose name or fingerprint is not listed in
tls.permittedpeer, could inject chosen syslog records into the
configured input stream.

This is an integrity issue for that input stream. It does not provide
access to stored logs, modification or deletion of existing records,
confidentiality loss, memory corruption, or code execution.

Affected configurations
=======================

The issue affects only deployments where all of the following apply:

- rsyslog was built with the optional imdtls module and the module is
explicitly loaded;
- a reachable imdtls listener is configured with tls.authmode="name"
or tls.authmode="fingerprint" together with tls.permittedpeer; and
- the attacker possesses the private key for a client certificate
accepted by the listener's configured CA.

Normal DTLS certificate-chain verification remains effective.
Arbitrary remote clients, including clients using self-signed or
otherwise untrusted certificates, cannot exploit this issue.
tls.authmode="certvalid" is not affected.

Affected versions
=================

v8.2402.0 and later.

Fixed version: 2026-09-23 daily stable

Fix
===

The following change in plugins/imdtls/imdtls.c, in
DTLSAcceptSession(), immediately removes a session that failed
post-handshake permitted-peer verification:

    if (status == 0) {
        LogMsg(0, RS_RET_NO_ERRCODE, LOG_WARNING,
               "imdtls: Cert Verify FAILED for DTLS client idx (%d)", idx);
        DTLScleanupSession(inst, idx);
    }

Regression coverage verifies rejection of CA-signed but non-permitted
clients for both name- and fingerprint-based permitted-peer
authorization, while retaining the permitted-peer positive control.

Severity
========

We assess this as Medium severity.

CVSS v3.1:
CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:N/I:L/A:N (4.3, Medium)

CVE assignment is pending.

Credits
=======

This issue was found by Anthropic using Claude to study the security
of open-source software and was manually validated by David Korczynski
from Ada Logics. Please credit Claude and Ada Logics in public
advisories.

Regards,
Rainer Gerhards
rsyslog project
