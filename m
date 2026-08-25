X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/25/6
Message-ID: <7adeafc6a71f5215c52c4b4431e71b64@cpansec.org>
Date: Tue, 25 Aug 2026 18:22:39 -0300
From: Timothy Legge <timlegge@...nsec.org>
To: Cve Announce <cve-announce@...urity.metacpan.org>, Oss Security <oss-security@...ts.openwall.com>
Subject: CVE-2026-78619: Punk::Plugin::TOTP versions before 0.05 for Perl accept another account's recovery code at the two-factor challenge because totp_use_recovery compares user identifiers numerically
Content-Type: text/plain; charset=utf-8

========================================================================
CVE-2026-78619                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-78619
   Distribution:  Punk-TOTP
       Versions:  before 0.05

       MetaCPAN:  https://metacpan.org/dist/Punk-TOTP


Punk::Plugin::TOTP versions before 0.05 for Perl accept another
account's recovery code at the two-factor challenge because
totp_use_recovery compares user identifiers numerically

Description
-----------
Punk::Plugin::TOTP versions before 0.05 for Perl accept another
account's recovery code at the two-factor challenge because
totp_use_recovery compares user identifiers numerically.

The helper searches the recovery model for the submitted code's digest
alone, across every user's rows, so the ownership test that follows is
the only thing binding a code to the account it was issued to. That
test compares the row's user_id with the challenged user's id through
Perl's integer coercion, and an identifier with no leading digits
coerces to zero, so any two of them compare equal. User models keyed on
a username, an email address or a UUID hit that case, and a numeric key
compares as intended.

The challenge route feeds a submitted value to the helper once TOTP
verification fails, so an attacker who knows a victim's password and
holds a recovery code of their own passes the victim's second factor.

Problem types
-------------
- CWE-305 Authentication Bypass by Primary Weakness
- CWE-1025 Comparison Using Wrong Factors

Workarounds
-----------
For deployments that cannot upgrade to 0.05, stop issuing recovery
codes and delete the existing totp_recovery rows from the token table.
The challenge route then has nothing to match and the second factor
rests on TOTP codes alone.

Solutions
---------
Upgrade to Punk-TOTP 0.05 or later.

References
----------
https://metacpan.org/release/LNATION/Punk-TOTP-0.04/source/include/ptotp/ptotp_plugin.h#L801-827
https://metacpan.org/release/LNATION/Punk-TOTP-0.04/view/lib/Punk/Plugin/TOTP.pm
https://metacpan.org/release/LNATION/Punk-TOTP-0.05/source/Changes

