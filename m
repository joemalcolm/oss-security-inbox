Received: (qmail 15791 invoked by uid 550); 13 May 2026 01:14:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14318 invoked from network); 13 May 2026 01:14:20 -0000
Date: Wed, 13 May 2026 03:14:13 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Jim Meyering <jim@meyering.net>
Message-ID: <20260513011413.GA4475@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
User-Agent: Mutt/1.4.2.3i
Subject: [oss-security] CVE-2026-5958: GNU sed: TOCTOU race in sed -i --follow-symlinks

Hi,

Jim kindly brought the below to linux-distros last month (thank you,
Jim!), but seems to have failed to bring it to oss-security on the
public disclosure date as required.  I only discovered this now while
processing the distros list statistics for April.

Gentoo and Amazon failed to stay on top of this, even though that was
their contributing-back task.  We already figured this out with Gentoo
in context of another issue, but I am yet to hear from Amazon.

Also, in the brief discussion on linux-distros and with Jim we did
realize this may need to have been on the full distros list rather than
just linux-distros, as GNU sed exists e.g. in pkgsrc, which is a member
of the full distros list.  However, we decided that this time the issue
was too minor, so noted this for next time.

I now see that Jim indeed made public announcements - just not here:

https://lists.gnu.org/archive/html/info-gnu/2026-04/msg00009.html
https://lists.gnu.org/archive/html/sed-devel/2026-04/msg00012.html

> * Noteworthy changes in release 4.10 (2026-04-21) [stable]
> 
> ** Bug fixes

>   'sed --follow-symlinks -i' no longer has a TOCTOU race that could let
>   an attacker swap a symlink between resolution and open, causing sed to
>   read attacker-chosen content and write it to the original target.
>   [bug introduced in sed 4.1e]

Also listed are many other bug fixes that are not considered security.

There's also:

https://cert.pl/en/posts/2026/04/CVE-2026-5958/

> Vulnerability in GNU sed software
> 20 April 2026 | CERT Polska | #vulnerability, #warning, #cve
> 
> CVE ID 	CVE-2026-5958
> Publication date 	20 April 2026
> Vendor 	GNU
> Product 	sed
> Vulnerable versions 	From 4.1e below 4.10
> Vulnerability type (CWE) 	Time-of-check Time-of-use (TOCTOU) Race Condition (CWE-367)
> Report source 	Report to CERT Polska
> 
> Description
> 
> CERT Polska has received a report about vulnerability in GNU sed
> software and participated in coordination of its disclosure.
> 
> The vulnerability CVE-2026-5958: When sed is invoked with both -i
> (in-place edit) and --follow-symlinks, the function open_next_file()
> performs two separate, non-atomic filesystem operations on the same
> path: 1. resolves symlink to its target and stores the resolved path for
> determining when output is written, 2. opens the original symlink path
> (not the resolved one) to read the file. Between these two calls there
> is a race window. If an attacker atomically replaces the symlink with a
> different target during that window, sed will: read content from the new
> (attacker-chosen) symlink target and write the processed result to the
> path recorded in step 1. This can lead to arbitrary file overwrite with
> attacker-controlled content in the context of the sed process.
> 
> This issue was fixed in version 4.10.
> 
> Credits
> 
> We thank Michał Majchrowicz and Marcin Wyczechowski (AFINE Team) for
> the responsible vulnerability report.

and NIST NVD lists this score:

> CNA:  CERT.PL
> CVSS-B 2.1 LOW
> Vector:  CVSS:4.0/AV:L/AC:L/AT:P/PR:N/UI:N/VC:N/VI:L/VA:N/SC:N/SI:N/SA:N

Alexander

----- Forwarded message from Jim Meyering <jim@meyering.net> -----

From: Jim Meyering <jim@meyering.net>
To: linux-distros@vs.openwall.org
Subject: [vs-plain] GNU sed: CVE-2026-5958: TOCTOU race in sed -i --follow-symlinks
CC: Michał Majchrowicz <mmajchrowicz@afine.com>,
 Paul Eggert <eggert@cs.ucla.edu>
Date: Fri, 10 Apr 2026 18:40:17 -0700

A TOCTOU race in GNU sed allows an attacker to cause sed -i
--follow-symlinks to read attacker-controlled content and write it to
an unintended file. This can lead to arbitrary file overwrite as the
sed process's user when a privileged process (e.g., root) runs sed on
a path the attacker can influence.

CVE: CVE-2026-5958
CWE: CWE-367 (Time-of-Check Time-of-Use Race Condition)
Affected: GNU sed 4.1e through 4.9 (all current releases with --follow-symlinks)
Severity: Moderate: requires privileged sed invocation on an
attacker-influenced path; a survey of Debian and GitHub shows
--follow-symlinks is overwhelmingly used on root-owned paths

Bug: follow_symlink() resolves the symlink via readlink(), then
ck_fopen() reopens the original symlink path. Between these two
syscalls, the symlink can be swapped, causing sed to read from one
file and write to another. Reproduces reliably in ~14 attempts.

Fix: One-line change -- open the already-resolved path instead of
re-traversing the symlink:

--- a/sed/execute.c
+++ b/sed/execute.c
@@ -562,7 +562,7 @@ open_next_file (const char *name, struct input *input)
       if (follow_symlinks)
         input->in_file_name = follow_symlink (name);

-      if ( ! (input->fp = ck_fopen (name, read_mode, false)) )
+      if ( ! (input->fp = ck_fopen (input->in_file_name, read_mode, false)) )
         {
           const char *ptr = strerror (errno);
           fprintf (stderr, _("%s: can't read %s: %s\n"), program_name,

Proposed disclosure date: 2026-04-19. I plan to push the fix and
release GNU sed 4.10 on that date. If someone would like an extra
week, that's fine, too. Let me know.

Credit: Micha?? Majchrowicz and Marcin Wyczechowski (AFINE Team).

Jim Meyering
GNU sed maintainer

----- End forwarded message -----
