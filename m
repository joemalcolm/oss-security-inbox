X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/30/15
Message-ID: <5687888b-9f0a-4301-b0e5-a979237918e9@cpansec.org>
Date: Fri, 30 Oct 2026 13:23:39 +0000
From: Robert Rothenberg <rrwo@...nsec.org>
To: oss-security@...ts.openwall.com
Subject: CallBackery versions before 0.62.0 for Perl (10 CVEs)
Content-Type: text/plain; charset=utf-8

CVE-2026-13576
   CallBackery versions before 0.62.0 for Perl store user passwords as
   unsalted HMAC-SHA1 hashes

CVE-2026-118986
   CallBackery versions before 0.62.0 for Perl allow session cookie
   forgery via a signing secret generated with rand()

CVE-2026-118987
   CallBackery versions before 0.62.0 for Perl accept session cookies of
   any age sent in the X-Session-Cookie header

CVE-2026-118990
   CallBackery versions before 0.62.0 for Perl leave a world-readable
   dump of the configuration database in /tmp when taking a
   configuration backup

CVE-2026-118991
   CallBackery versions before 0.62.0 for Perl encrypt configuration
   backups with the padded password as the AES key

CVE-2026-118992
   CallBackery versions before 0.62.0 for Perl allow OS command
   execution via sqlite3 shell commands in a restored configuration
   backup

CVE-2026-118993
   CallBackery versions before 0.62.0 for Perl allow denial of service
   via the request path interpolated as a regular expression under CGI,
   FastCGI and PSGI

CVE-2026-118994
   CallBackery versions before 0.62.0 for Perl allow log injection via
   newlines in the login name

CVE-2026-118995
   CallBackery versions before 0.62.0 for Perl accept unintended values
   in form fields checked by createRxValidator

CVE-2026-118996
   CallBackery versions before 0.62.0 for Perl send users their own
   password hash and the admin-only user note via getUserConfig


========================================================================
CVE-2026-13576                                       CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-13576

   Distribution:  CallBackery
       Versions:  before 0.62.0
       MetaCPAN:  https://metacpan.org/dist/CallBackery
       VCS Repo:  https://github.com/oetiker/callbackery


CallBackery versions before 0.62.0 for Perl store user passwords as
unsalted HMAC-SHA1 hashes

Description
-----------
CallBackery versions before 0.62.0 for Perl store user passwords as
unsalted HMAC-SHA1 hashes.

Passwords are hashed with hmac_sha1_sum() from Mojo::Util with no key,
a single fast SHA-1 HMAC. There is no salt, so equal passwords give
equal hashes, and no work factor slows down guessing.

An attacker who obtains the user table can recover passwords by fast
offline guessing.

Problem types
-------------
- CWE-916 Use of Password Hash With Insufficient Computational Effort
- CWE-759 Use of a One-Way Hash without a Salt

Solutions
---------
Upgrade to CallBackery 0.62.0 or later.

References
----------
https://metacpan.org/release/OETIKER/CallBackery-0.62.0/changes


========================================================================
CVE-2026-118986                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-118986

   Distribution:  CallBackery
       Versions:  before 0.62.0
       MetaCPAN:  https://metacpan.org/dist/CallBackery
       VCS Repo:  https://github.com/oetiker/callbackery


CallBackery versions before 0.62.0 for Perl allow session cookie
forgery via a signing secret generated with rand()

Description
-----------
CallBackery versions before 0.62.0 for Perl allow session cookie
forgery via a signing secret generated with rand().

The secret that signs session cookies is built from two calls to the
built-in rand(), which is seeded with 32 bits. The secret therefore has
at most 2**32 possible values, and one signed cookie is enough to test
each candidate offline.

An attacker who obtains a single session cookie can recover the secret
and sign cookies for any user, including an administrator.

Problem types
-------------
- CWE-338 Use of Cryptographically Weak Pseudo-Random Number Generator
   (PRNG)

Solutions
---------
Upgrade to CallBackery 0.62.0 or later.

References
----------
https://metacpan.org/release/OETIKER/CallBackery-0.62.0/changes


========================================================================
CVE-2026-118987                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-118987

   Distribution:  CallBackery
       Versions:  before 0.62.0
       MetaCPAN:  https://metacpan.org/dist/CallBackery
       VCS Repo:  https://github.com/oetiker/callbackery


CallBackery versions before 0.62.0 for Perl accept session cookies of
any age sent in the X-Session-Cookie header

Description
-----------
CallBackery versions before 0.62.0 for Perl accept session cookies of
any age sent in the X-Session-Cookie header.

cookieConf() rejects a cookie older than 300 seconds only when it
arrives in the xsc query parameter. The same cookie sent in the
X-Session-Cookie header is accepted however old it is.

A session cookie that leaks through a log, a Referer header or browser
history authenticates as its user indefinitely.

Problem types
-------------
- CWE-1463 Insufficient Session Timeout Value

Solutions
---------
Upgrade to CallBackery 0.62.0 or later and set max_session_age in the
BACKEND section.

References
----------
https://metacpan.org/release/OETIKER/CallBackery-0.62.0/changes


========================================================================
CVE-2026-118990                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-118990

   Distribution:  CallBackery
       Versions:  before 0.62.0
       MetaCPAN:  https://metacpan.org/dist/CallBackery
       VCS Repo:  https://github.com/oetiker/callbackery


CallBackery versions before 0.62.0 for Perl leave a world-readable dump
of the configuration database in /tmp when taking a configuration
backup

Description
-----------
CallBackery versions before 0.62.0 for Perl leave a world-readable dump
of the configuration database in /tmp when taking a configuration
backup.

getConfigBlob() has the sqlite3 shell write the dump to
/tmp/cbdump<pid> and never removes it. The file takes the process
umask, and a symlink planted at that predictable name is followed.

The dump holds every user's password hash and every value saved by the
application's forms. A local user can read these after any backup, and
may redirect the dump to a file of their choosing.

Problem types
-------------
- CWE-379 Creation of Temporary File in Directory with Insecure
   Permissions
- CWE-59 Improper Link Resolution Before File Access

Solutions
---------
Upgrade to CallBackery 0.62.0 or later, and delete any leftover
/tmp/cbdump* files.

References
----------
https://metacpan.org/release/OETIKER/CallBackery-0.62.0/changes


========================================================================
CVE-2026-118991                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-118991

   Distribution:  CallBackery
       Versions:  before 0.62.0
       MetaCPAN:  https://metacpan.org/dist/CallBackery
       VCS Repo:  https://github.com/oetiker/callbackery


CallBackery versions before 0.62.0 for Perl encrypt configuration
backups with the padded password as the AES key

Description
-----------
CallBackery versions before 0.62.0 for Perl encrypt configuration
backups with the padded password as the AES key.

getCrypt() pads the backup password with "x" characters and cuts it to
32 bytes to form the AES key, with no salt and no key derivation. The
first block of a backup holds a 16 hex digit length field, so
decrypting one block confirms a password guess at raw AES speed.

An attacker who obtains a backup can recover its password by fast
offline guessing, and with it every credential the backup holds.

Problem types
-------------
- CWE-916 Use of Password Hash With Insufficient Computational Effort

Solutions
---------
Upgrade to CallBackery 0.62.0 or later.

References
----------
https://metacpan.org/release/OETIKER/CallBackery-0.62.0/changes


========================================================================
CVE-2026-118992                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-118992

   Distribution:  CallBackery
       Versions:  before 0.62.0
       MetaCPAN:  https://metacpan.org/dist/CallBackery
       VCS Repo:  https://github.com/oetiker/callbackery


CallBackery versions before 0.62.0 for Perl allow OS command execution
via sqlite3 shell commands in a restored configuration backup

Description
-----------
CallBackery versions before 0.62.0 for Perl allow OS command execution
via sqlite3 shell commands in a restored configuration backup.

restoreConfigBlob() feeds the database dump in a backup to the sqlite3
command-line shell. The shell runs lines starting with a dot as its own
commands, so .shell or .system in the dump runs an OS command and .load
loads native code.

Anyone who can supply a backup to be restored can run arbitrary
commands as the application user.

Problem types
-------------
- CWE-78 Improper Neutralization of Special Elements used in an OS
   Command

Solutions
---------
Upgrade to CallBackery 0.62.0 or later.

References
----------
https://metacpan.org/release/OETIKER/CallBackery-0.62.0/changes


========================================================================
CVE-2026-118993                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-118993

   Distribution:  CallBackery
       Versions:  before 0.62.0
       MetaCPAN:  https://metacpan.org/dist/CallBackery
       VCS Repo:  https://github.com/oetiker/callbackery


CallBackery versions before 0.62.0 for Perl allow denial of service via
the request path interpolated as a regular expression under CGI,
FastCGI and PSGI

Description
-----------
CallBackery versions before 0.62.0 for Perl allow denial of service via
the request path interpolated as a regular expression under CGI,
FastCGI and PSGI.

The before_dispatch hook installed by startup() removes PATH_INFO from
the end of the request URI with a substitution that interpolates
PATH_INFO unquoted. Under CGI, FastCGI and PSGI both values come from
the request, so the client chooses both the pattern and the string it
is matched against.

A short unauthenticated request with a backreference in the path
backtracks exponentially and can keep a worker process busy for
minutes.

Problem types
-------------
- CWE-1333 Inefficient Regular Expression Complexity

Solutions
---------
Upgrade to CallBackery 0.62.0 or later.

References
----------
https://metacpan.org/release/OETIKER/CallBackery-0.62.0/changes


========================================================================
CVE-2026-118994                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-118994

   Distribution:  CallBackery
       Versions:  before 0.62.0
       MetaCPAN:  https://metacpan.org/dist/CallBackery
       VCS Repo:  https://github.com/oetiker/callbackery


CallBackery versions before 0.62.0 for Perl allow log injection via
newlines in the login name

Description
-----------
CallBackery versions before 0.62.0 for Perl allow log injection via
newlines in the login name.

login() writes the login name to the application log without escaping
control characters. The login RPC method needs no authentication, so a
name containing a newline followed by text in the log record format
adds a forged record.

An unauthenticated attacker can forge log records, such as a successful
administrator login from an address of their choosing.

Problem types
-------------
- CWE-117 Improper Output Neutralization for Logs

Solutions
---------
Upgrade to CallBackery 0.62.0 or later.

References
----------
https://metacpan.org/release/OETIKER/CallBackery-0.62.0/changes


========================================================================
CVE-2026-118995                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-118995

   Distribution:  CallBackery
       Versions:  before 0.62.0
       MetaCPAN:  https://metacpan.org/dist/CallBackery
       VCS Repo:  https://github.com/oetiker/callbackery


CallBackery versions before 0.62.0 for Perl accept unintended values in
form fields checked by createRxValidator

Description
-----------
CallBackery versions before 0.62.0 for Perl accept unintended values in
form fields checked by createRxValidator.

createRxValidator() is documented to anchor the supplied pattern at
both ends, but builds /^${rx}$/ without grouping the pattern. An
alternation such as yes|no then accepts any value starting with yes or
ending with no, and $ also accepts a value with one trailing newline.

An authenticated user can submit values the pattern was meant to
reject, which an application may then write into generated
configuration files.

Problem types
-------------
- CWE-625 Permissive Regular Expression

Solutions
---------
Upgrade to CallBackery 0.62.0 or later.

References
----------
https://metacpan.org/release/OETIKER/CallBackery-0.62.0/changes


========================================================================
CVE-2026-118996                                      CPAN Security Group
========================================================================

         CVE ID:  CVE-2026-118996

   Distribution:  CallBackery
       Versions:  before 0.62.0
       MetaCPAN:  https://metacpan.org/dist/CallBackery
       VCS Repo:  https://github.com/oetiker/callbackery


CallBackery versions before 0.62.0 for Perl send users their own
password hash and the admin-only user note via getUserConfig

Description
-----------
CallBackery versions before 0.62.0 for Perl send users their own
password hash and the admin-only user note via getUserConfig.

getUserConfig() returns the caller's whole cbuser row, including the
stored password hash and the note field that the user interface shows
only to administrators. getTableData() and getAllFieldValues() in the
user management plugins also return the note to users without the admin
right.

A non-administrator can read the notes administrators keep about them,
and an attacker who obtains a session token can get that user's
password hash and crack it offline.

Problem types
-------------
- CWE-212 Improper Removal of Sensitive Information Before Storage or
   Transfer

Solutions
---------
Upgrade to CallBackery 0.62.0 or later.

References
----------
https://metacpan.org/release/OETIKER/CallBackery-0.62.0/changes

