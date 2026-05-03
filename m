Received: (qmail 11470 invoked by uid 550); 3 May 2026 18:47:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 31906 invoked from network); 3 May 2026 18:30:17 -0000
Date: Sun, 3 May 2026 20:30:06 +0200
From: Christian Brabandt <cblists@256bit.org>
To: oss-security@lists.openwall.com
Message-ID: <afeULjoRjfjh3mzK@256bit.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cblists@256bit.org
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Subject: [oss-security] [vim-security] OS Command Injection via 'path' completion affects
 Vim < 9.2.0435

OS Command Injection via 'path' completion affects Vim < 9.2.0435
=================================================================
Date: 02.05.2026
Severity: Medium
CVE: *requested, not yet assigned*
CWE: Improper Neutralization of Special Elements used in an OS Command ('OS Command Injection') (CWE-78)

## Summary
An OS command injection vulnerability exists in Vim's `:find`
command-line completion.  When the `path` option contains
backtick-enclosed shell commands, those commands are executed during
file name completion. Because the `path` option lacks the `P_SECURE`
flag, it can be set from a modeline, allowing an attacker who controls
the contents of a file to execute arbitrary shell commands when the user
opens that file in Vim and triggers `:find` completion.

## Description
The `path` option is used by `:find` Ex commands to locate files.  When
command-completion is invoked on these commands, the value of `path` is
processed by `expand_in_path()`, which ultimately reaches
`mch_expand_wildcards()`.  The latter constructs a shell command from
each path entry and any matching glob characters; in the process, text
enclosed in backticks is executed by the shell.

The `expand_in_path()` code path has no check for backtick expansion.
Additionally, the `path` option is missing the `P_SECURE` flag in
`optiondefs.h`, so a modeline can set it to a value containing
backticks.  Once the modeline has been applied, the `secure` global is
no longer set, and the subsequent `:find` completion executes the
backtick contents.

## Impact
The vulnerability allows arbitrary shell command execution in the
context of the Vim process when the user invokes `:find`, `:sfind`,
`:tabfind` or related completion and the path option has been set to
include backticks.

Exploitation via modeline requires `'modeline'` to be enabled (the
default in Vim <9.2.0350) and the user to trigger file completion after
opening the file.

The severity is rated Medium because exploitation requires opening an
attacker-controlled file and pressing Tab during a common completion
operation.

Vim 9.2.0350 and later are not affected from the modeline vulnerability
because the `'modelinestrict'` hardening prevents `'path'` from being
set via modeline.

## Acknowledgements
The Vim project would like to thank github user @q1uf3ng for reporting
the issue.

## References
The issue has been fixed as of Vim patch [v9.2.0435](https://github.com/vim/vim/releases/tag/v9.2.0435).
- [Commit](https://github.com/vim/vim/commit/190cb3c2b9c769a3972bcfd991a7b5b6cb771ef0)
- [Github Security Advisory](https://github.com/vim/vim/security/advisories/GHSA-hwg5-3cxw-wvvg)

Best,
Christian
-- 
Yow!  Maybe I should have asked for my Neutron Bomb in PAISLEY --
