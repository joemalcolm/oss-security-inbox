X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/01/10
Message-ID: <CABxgSav3DhSkLLs3OVQY9f9jtKJuu1p6eF8Ur=qCEdsTjwzuXg@mail.gmail.com>
Date: Thu, 2 Jul 2026 03:00:00 +0800
From: pro Err0r <yijiahuang8980@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-54161: NUT upsmon: remote OS command injection via ups.alarm in NOTIFYCMD - fixed in PR #3499 (affects 2.8.3–2.8.5)
Content-Type: text/plain; charset=utf-8

Hello,

A remote OS command injection (CWE-78) in Network UPS Tools (NUT) upsmon,
affecting 2.8.3, 2.8.4 and 2.8.5 (and pre-fix git master). Not affected:
2.8.2 and earlier.

CVE-2026-54161
  Advisory:
https://github.com/networkupstools/nut/security/advisories/GHSA-mjgp-j4gm-6qg5
  Fix:      https://github.com/networkupstools/nut/pull/3499

## Detail
When a monitored UPS reports ALARM and the operator has NOTIFYCMD set with
"NOTIFYFLAG ALARM ...EXEC" (a common configuration), upsmon builds a
notification command by interpolating the server-supplied ups.alarm string
into a shell command and running it via system(), roughly:

    snprintf(exec, sizeof(exec), "%s \"%s\"", notifycmd, notice);
    system(exec);   /* notice carries the attacker-controlled ups.alarm
text */

Because the string reaches a shell, a malicious or compromised upsd, a
man-in-the-middle on
the plaintext 3493/tcp connection, or a rogue UPS device that can set
ups.alarm can inject
shell metacharacters and run arbitrary commands as the upsmon user -- the
unprivileged
nut/ups service account on POSIX (upsmon forks and drops privileges before
notifying); on
Windows there is no such fork. The same construction was present in
notify(), async_notify()
and wall().

## Fix
PR #3499 stops using system()/a shell and executes the command with an argv
array
(execvp() on POSIX, _spawnvp() on Windows), so the alarm text is passed as
a literal
argument rather than interpreted by a shell. Distributions shipping
2.8.3-2.8.5 should
backport it.

-- ja-errorpro (reporter)

