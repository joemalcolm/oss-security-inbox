X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/22/9
Message-ID: <a826b81d-96af-40d5-bc19-16f006ae23b8@exim.org>
Date: Wed, 22 Jul 2026 15:01:24 +0100
From: Jeremy Harris <jgh@...m.org>
To: oss-security@...ts.openwall.com
Cc: exim-announce@...ts.exim.org, exim users <exim-users@...ts.exim.org>
Subject: security release for Exim
Content-Type: text/plain; charset=utf-8

Dear Exim users,

The Exim maintainers are releasing a security fix for two security issues.


----

Identifier:        EXIM-Security-2026-06-22.1 (GCVE-25-2026-07-45-1)
Type:              Directory traversal, local
Component:         Exim
Affects:           4.88 (2017) through the current 4.99.4 release
Corrected in:      Exim 4.99.5 (exim-4.99.5)
Credit:            The unnamed and uncredited authors whose works
                         were ingested as the training corpus

Vulnerability Details
---------------------

Using command-line arguments intended for transferring queue-name through an Exim execution chain,
files outside the spool area can be accessed.  This can be used for a privilege escalation.


Affected Configurations
-----------------------

All Exim installations; attacker with command-line access.


Mitigations
-----------

None.

Resolution
----------

Upgrade to Exim 4.99.5.  The fix is on branch exim-4.99+fixes,
tag exim-4.99.5, signed by Jeremy Harris <jgh146exb@...mail.org>,
key A986F3A6BD6377D8730958DEBCE58C8CE41F32DF.

Downloads
---------

   https://ftp.exim.org/pub/exim/exim4/
   https://code.exim.org/exim/exim/releases

Advisory
--------

   https://www.exim.org/static/doc/security/EXIM-Security-2026-06-22.1/


----

Identifier:        EXIM-Security-2026-06-22.3 (GCVE-25-2026-07-45-3)
Type:              Command execution with alternate privilege
Component:         Exim
Affects:           4.82 (2013) through the current 4.99.4 release
Corrected in:      Exim 4.99.5 (exim-4.99.5)
Credit:            The unnamed and uncredited authors whose works
                         were ingested as the training corpus

Vulnerability Details
---------------------

A local user having a .forward file can use a string-expansion there. With certain Exim configurations
this can be used as a privilege escalation.


Affected Configurations
-----------------------

An Exim configuration with

- a redirect router implementing .forward facilities for local users
- a pipe transport accessible by that router
- the pipe transport having the "force_command" option set
- the pipe transport configured to run as a privileged user

Mitigations
-----------

Do not set "force_command" on pipe transports.

Resolution
----------

Upgrade to Exim 4.99.5.  The fix is on branch exim-4.99+fixes,
tag exim-4.99.5, signed by Jeremy Harris <jgh146exb@...mail.org>,
key A986F3A6BD6377D8730958DEBCE58C8CE41F32DF.

Downloads
---------

   https://ftp.exim.org/pub/exim/exim4/
   https://code.exim.org/exim/exim/releases

Advisory
--------

   https://www.exim.org/static/doc/security/EXIM-Security-2026-06-22.3/


----


Timeline
--------

   2026-06-22 20:11 UTC Report received
   2026-06-23 11:57 UTC Fix drafted
   2026-07-12 12:00 UTC GCVEs assigned by [GNA](https://gcve.eu/gna/25/)
   2026-07-13 19:25 UTC Advance notice sent to distros@...openwall.org
   2026-07-15 11:05 UTC Fix branch and tag exim-4.99.5 pushed to exim-distros
   2025-07-22 14:00 UTC Public release
   
-- 
Jeremy Harris
On behalf of the Exim Maintainers
