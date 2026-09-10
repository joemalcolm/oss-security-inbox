X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/10/8
Message-ID: <20260910010706.GA26807@openwall.com>
Date: Thu, 10 Sep 2026 03:07:06 +0200
From: Solar Designer <solar@...nwall.com>
To: oss-security@...ts.openwall.com
Subject: Postfix: SMTP smuggling, remote crash, and hardening fixes in 3.11.7 and related legacy releases
Content-Type: text/plain; charset=utf-8

----- Forwarded message from Wietse Venema via Postfix-announce <postfix-announce@...tfix.org> -----

To: Postfix announce <postfix-announce@...tfix.org>
Date: Tue, 8 Sep 2026 07:56:36 -0400 (EDT)
CC: Postfix users <postfix-users@...tfix.org>
Subject: [pfx-ann] Postfix stable release 3.11.7 and legacy releases 3.10.14, 3.9.15,
From: Wietse Venema via Postfix-announce <postfix-announce@...tfix.org>
Reply-To: Wietse Venema <wietse@...cupine.org>

[An on-line version of this announcement will be available at
https://www.postfix.org/announcements/postfix-3.11.7.html]

This release addresses medium-impact problems that need to be fixed
as some enable remote DOS or SMTP smugggling.

The fixes below, and more, are also released in the unstable version
postfix-3.12-20260902.

In addition to updated releases for the supported Postfix versions
3.8-3.11, releases will also be available for the out-of-support
Postfix versions 3.5-3.7. NOTE: these do not include the patches
for out-of-support Postfix versions that have been issued for "large
SMTP inputs (June 2026)", and for "TLSA parsing (June 2026)". Those
patches still need to be applied.

These defects were found by "Qualys assisted by Claude Mythos
Preview", and by "OpenAI Security"; three date from 20 or more years
ago.

SMTP smuggling:

  * Bug (introduced: Postfix 3.9, date: 20240106) SMTP smuggling
    was still possible with smtpd_proxy_filter (disabled by default)
    when the after-filter SMTP server used the default policy
    settings "smtpd_forbid_bare_newline_exclusions = $mynetworks"
    and "smtpd_forbid_bare_newline = normalize". Reported by OpenAI
    Security. Fix by Wietse.

    As suggested by OpenAI Security, eliminate stray CR characters
    from the smtpd_proxy_filter input stream. The before-proxy-filter
    SMTP server already eliminated stray LF.

  * Bug (introduced: Postfix 3.11, date: 20250917): SMTP smuggling
    was possible with smtpd_proxy_filter (disabled by default) when
    the before-filter SMTP server added a "Require-TLS-ESMTP: yes"
    message header, due to implementation edge cases. Adding this
    header is enabled with the "requiretls_esmtp_header = yes"
    default setting. Reported by OpenAI Security. Fix by Wietse.

Server crashes and panic()s:

  * Bug (defect introduced: Postfix 3.0, date: 20140707): null
    pointer read error after receiving MAIL FROM, RCPT TO, and VRFY
    with an UTF8 address but no SMTPUTF8 parameter. This requires
    "smtputf8_enable = yes" (the default) and "strict_smtputf8 =
    yes" (not default). With this, the SMTP server did an unnecessary
    MAIL FROM reset without RCPT TO reset. A crafted remote SMTP
    client could then send a DATA command and crash a Postfix SMTP
    server process with a null pointer read error. Reported by
    Wonyoung Jung (78ResearchLab AI).

Other bugs

  * Bug (defect introduced: Postfix 3.4, date: 20180303): the MySQL
    client setting "tls_verify_cert = yes" had no effect with Oracle
    MySQL 8 and later. Report and fix by OpenAI Security.

  * Bug (defect introduced: Postfix-beta, date: 19990119): the
    pipe(8) delivery agent deleted a command-line argument if the
    argument contained $user AND $user expanded to an empty string,
    breaking the positional order of arguments. This was a workaround
    for a problem that hopefully no longer exists. Reported by
    Qualys, assisted by Claude Mythos Preview.

  * Bug (defect introduced: Postfix 2.3, date: 20050323): the SMTP
    client enhanced status code parser could process stale data
    when a remote SMTP server sent a three-digit reply without other
    text. Reported by Qualys, assisted by Claude Mythos Preview.

TLS

  * Isolation: stamp Postfix SMTP server TLS session tickets with
    their master.cf service name. With this, an SMTP server defined
    in master.cf will no longer accept tickets issued by a different
    SMTP server defined in the same master.cf file. Fix by OpenAI
    security.

Configuration safety

  * The postmap and postalias commands now log a warning when
    creating a root-owned database file in a directory that is not
    owned by root. They log that the database source file, indexed
    file(s), and parent directory should have the same owner, to
    prevent a privilege-escalation attack. Problem reported by
    OpenAI Security, remediation strategy (don't break production
    deployment) by Wietse.

Read after free, memory over-read

  * Bug (introduced: Postfix 2.3, date: 20060629): a malicious
    Milter or attacker-in-the-middle could trigger a null-terminated
    heap memory overread in the SMTP daemon while formatting a
    malformed multiline response. Fix from OpenAI Security adopted
    with minor changes.

  * Bug (defect introduced: Postfix 3.0, date: 20141117): in the
     postqueue command don't free() text before logging a fatal error
    message. Reported by Qualys, assisted by Claude Mythos Preview.

  * Code hygiene: in the SMTP client protocol engine, evaluate a
    RETURN() macro argument before freeing resources. Reported by
    Qualys, assisted by Claude Mythos Preview.

Code hardening (defense in depth, prevention)

  * (Postfix 3.11) Hardening: in the non-BerkeleyDB migration
    service, delay the decision between running postmap or postalias
    until after the database file/directory owner/permission checks.
    The benefit from making the decision early (better error messages)
    was not worth the risk. Qualys, assisted by Claude Mythos
    Preview.

  * (Postfix-3.11) Hardened the database parent directory permission
    checks for automatic re-indexing with the non-Berkeley-DB
    migration service.

  * Hardening command-line email submission: the postdrop command
    now disallows null and line-break characters in queue file
    envelope records (line-break characters in non-envelope queue
    file records are already neutralized by default with
    "cleanup_replace_stray_cr_lf = yes").

    The new constraint not only eliminates line-break injection
    into local mailbox files as reported by OpenAI Security, but
    also prevents other forms of misuse. Later, this constraint may
    be moved into the Postfix core. Fix by Wietse.

  * Shut up nagging from multiple AIs and harden the virtual delivery
    agent against an evil (LDAP or SQL) database.

  * Code hygiene: myrealloc(ptr, 0) still resulted in a panic.
    Reported by Qualys, assisted by Claude Mythos Preview. Also
    adopt a mystrndup() fix from Postfix 3.12.

Other:

  * Portability: OpenBSD does not define NS_INT16SZ. Brad Smith.

You can find the updated Postfix source code on the mirrors
listed at https://www.postfix.org/.

	Wietse
_______________________________________________
Postfix-announce mailing list -- postfix-announce@...tfix.org
To unsubscribe send an email to postfix-announce-leave@...tfix.org

----- End forwarded message -----
