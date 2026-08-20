X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/20/5
Message-ID: <87fr09v5gx.fsf@gentoo.org>
Date: Thu, 20 Aug 2026 04:25:02 +0100
From: Sam James <sam@...too.org>
To: oss-security@...ts.openwall.com
Subject: Fwd: [pfx] Postfix stable release 3.11.6 and legacy releases 3.10.13, 3.9.14, 3.8.20, 3.7.22, 3.6.20, 3.5.27
Content-Type: text/plain; charset=utf-8

The first round Wietse fixed was a few months ago in
https://www.openwall.com/lists/oss-security/2026/05/04/25.

See his summary below for details, but they're all at most DoS.

-------------------- Start of forwarded message --------------------
To: Postfix announce <postfix-announce@...tfix.org>
Date: Mon, 10 Aug 2026 11:50:35 -0400 (EDT)
CC: Postfix users <postfix-users@...tfix.org>
Subject: [pfx] Postfix stable release 3.11.6 and legacy releases 3.10.13, 3.9.14,
 3.8.20, 3.7.22, 3.6.20, 3.5.27
From: Wietse Venema via Postfix-users <postfix-users@...tfix.org>

[An on-line version of this announcement will be available at
https://www.postfix.org/announcements/postfix-3.11.6.html]

This release addresses medium-impact problems that need to be fixed
as some enable remote DOS or policy bypass.

The fixes below, and more, are also released in the unstable version
postfix-3.12-20260809.

In addition to updated releases for the supported Postfix versions
3.8-3.11, releases will also be available for the out-of-support
Postfix versions 3.5-3.7. NOTE: these do not include the patches
for out-of-support Postfix versions that have been issued for "large
SMTP inputs (June 2026)", "TLSA parsing (June 2026)", and "SMTP
smuggling fixes". Those patches still need to be applied.

These defects were found by Qualys assisted by Claude Mythos Preview,
and by OpenAI Security; more than half date from 20 or more years
ago. When I implemented Postfix, I knew that there were going to
be mistakes. That is the reason why Postfix has its architecture
and safety nets. The number of defects may seem large, but considering
that they were found in a code base of over 150 thousand lines, the
error rate is still lower than what I designed for.

Policy bypass:

  * Bug (introduced: Postfix 2.2, date: 20041102): missing SMTP
    server resets of MAIL FROM and RCPT TO command state after
    smtpd_end_of_data_restrictions rejected a message. This resulted
    in SMTP protocol state desynchronization between the remote
    SMTP client and the Postfix SMTP server.

    A crafted remote SMTP client could then send RCPT TO and DATA
    without MAIL FROM, and deliver a second message. Then,
    smtpd_end_of_data_restrictions skipped check_recipient_access
    constraints, because a recipient counter was > 1. Reported by
    OpenAI Security. File: smtpd/smtpd.c.

    As reported by OpenAI Security, the failure to reset MAIL FROM
    and RCPT TO state also affected Milter support (added in Postfix
    2.3). Here, after a Milter replied with "accept this message"
    based on the message envelope, and smtpd_end_of_data_restrictions
    rejected the message, the Postfix SMTP server as before accepted
    RCPT TO and DATA without MAIL FROM, and smtpd_end_of_data_restrictions
    as before skipped check_recipient_access constraints for the
    second message. Under these conditions, the Postfix Milter
    client remained in the "accept this message" state, skipping
    Milter policy enforcement for the second message.

Denial of service:

  * Bug (defect introduced: Postfix 3.4, date: 20180805): SMTP
    server command history memory exhaustion with a large number
    of very small BDAT requests. Reported by OpenAI security. File:
    smtpd.c.

  * Bug (defect introduced: Postfix 1.1, date: 20021116): address
    verification cache poisoning. A local user could use the postdrop
    command to submit an address verification probe with envelope
    or message content that Postfix rejected later, resulting in a
    negative address verification cache entry for that address. On
    systems that enable address verification, the negative address
    verification cache entry would force the Postfix SMTP server
    to reject a message that it should accept (denial of service).
    Problem reported by OpenAI Security. File: postdrop.c.

Server crashes and panic()s:

  * Bug (defect introduced: Postfix 3.4, date: 20180805): missing
    SMTP server reset of RCPT TO state, after a BDAT command error.
    A crafted remote SMTP client could then send a DATA command
    without MAIL FROM or RCPT TO, and crash a Postfix SMTP daemon
    process with a null pointer read error. Reported by OpenAI
    Security. File: smtpd/smtpd.c.

  * Bug (defect introduced: Postfix 2.4, date: 20051222): null
    pointer read crash while parsing a malformed Dovecot AUTH server
    response. Reported by Qualys, assisted by Claude Mythos Preview.
    File: xsasl_dovecot_server.c.

Read after free, uninitialized read, under/over read:

  * Bug (defect introduced: Postfix 2.8, date: 20100914): read-after-free
    in the PSC_CALL_BACK_NOTIFY() macro. This had no effect on
    program execution, because myfree() wiped memory, and that
    memory was not yet reused. Problem reported by Qualys, assisted
    by Claude Mythos Preview. File: postscreen_dnsbl.c.

  * Read after free (no privilege escalation) in debug logging
    (defect introduced: Postfix 2.2, date: 20050117). Reported by
    Qualys, assisted by Claude Mythos Preview. File: util/inet_connect.c.

  * Bug (defect introduced: Postfix 2.10, date: 20120617): uninitialized
    memory read in postscreen HaProxy client after remote I/O
    exception, causing garbage to be logged. Reported by Qualys,
    assisted by Claude Mythos Preview. File: postscreen_haproxy.c.

  * Latent bug (defect introduced: Postfix 2.7, date: 20090618):
    uninitialized memory read after dnsblog(8) returns a string
    that is not an IPv4 address. Reported by Qualys, assisted by
    Claude Mythos Preview. File: postscreen_dnsbl.c.

  * Bug (defect introduced: before Postfix alpha, date 19970424):
    the DNS client could read up to two bytes past the end of an
    MX record, before discovering that the record was too short.
    This behavior was later copied with SRV records, potentially
    over-reading up to six bytes. Problem reported by Qualys,
    assisted by Claude Mythos Preview. File: dns_lookup.c.

  * Bug (defect introduced: Postfix 1,1, date: 20010524): the
    postsuper command under-read or over-read a very short queue
    filename. No crash, information leak, or privilege escalation.
    Reported by Qualys, assisted by Claude Mythos Preview. Files:
    postsuper.c, mail_queue.h.

Other code hygiene:

  * Bug (defect introduced: before Postfix alpha, date: 19971106):
    'int' over-shift, in the queue file record-length parser. Postfix
    programs do not generate such records, but an attacker could
    cause postdrop to reject input or panic(). Reported by Qualys,
    assisted by Claude Mythos Preview. File: record.c.

  * Bug (defect introduced: Postfix 2.2, date: 20050117): non-transitive
    comparison of IPv4 addresses. Reported by Qualys, assisted by
    Claude Mythos Preview. File: sock_addr.c.

  * Bug (defect introduced: Postfix 1.0, date: 20000928): the fast
    flush server, used by the SMTP command "ETRN", and by the
    commands "postqueue -s site" and "postqueue -i queue_id" (and
    their sendmail(1) equivalents), used the wrong duplicate
    suppression API, resulting in unnecessary queue scans by the
    queue manager. Reported by Qualys, assisted by Claude Mythos
    Preview. File: flush.c.

  * Queue hygiene: the postdrop command accepted the null record
    type which the rest of Postfix ignores. Reported by OpenAI
    Security. File: postdrop.c.

You can find the updated Postfix source code at the mirrors
listed at https://www.postfix.org/.

	Wietse
_______________________________________________
Postfix-users mailing list -- postfix-users@...tfix.org
To unsubscribe send an email to postfix-users-leave@...tfix.org
-------------------- End of forwarded message --------------------

Download attachment "signature.asc" of type "application/pgp-signature" (419 bytes)
