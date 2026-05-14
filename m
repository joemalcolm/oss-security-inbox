Received: (qmail 26301 invoked by uid 550); 14 May 2026 18:55:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5540 invoked from network); 14 May 2026 15:54:20 -0000
Date: Thu, 14 May 2026 17:54:10 +0200
From: Christian Brabandt <cblists@256bit.org>
To: oss-security@lists.openwall.com
Message-ID: <agXwIrvbXxGulKbo@256bit.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cblists@256bit.org
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Subject: [oss-security] [vim-security] Command Injection in tar.vim affects Vim < 9.2.479


Command Injection in tar.vim affects Vim < 9.2.479
==================================================
Date: 14.05.2026
Severity: Medium
CVE: *requested, not yet assigned*
CWE: Improper Neutralization of Special Elements used in an OS Command (CWE-78) /
     Improper Neutralization of Argument Delimiters in a Command (CWE-88)

## Summary
A command injection vulnerability exists in `tar#Vimuntar()` in
`runtime/autoload/tar.vim` when decompressing `.tgz` archives on
Unix-like systems.  The function builds `:!gunzip` and `:!gzip -d`
commands using `shellescape(tartail)` without the `{special}` flag,
allowing a crafted archive filename to trigger Vim cmdline-special
expansion and execute shell commands in the user's context.

## Description
In `tar#Vimuntar()` (`runtime/autoload/tar.vim`), the archive tail name
derived from the current buffer filename is incorporated into a `:!`
command via `shellescape()` without the second argument.  For `:!`
commands, Vim re-expands cmdline-special characters (`%`, `#`, `!`, and
similar) before passing the command to the shell.  As documented under
`:help shellescape()`, the second argument must be set to a non-zero
value (`shellescape({string}, 1)`) whenever the result is used inside
`:!` or `:r !`.  Because the flag is omitted here, a filename containing
both shell metacharacters and Vim special characters can break out of
the intended single-quoted argument and inject arbitrary shell commands.

## Impact
The vulnerability allows arbitrary shell command execution with the
privileges of the user running Vim.  Exploitation requires:
- a Unix-like system with the tar plugin enabled,
- a crafted `.tgz` archive on disk whose filename contains both a
  single quote and Vim cmdline-special characters, and
- the victim to open the file and invoke the non-routine `:Vimuntar`
  command.
The severity is rated Medium because successful exploitation yields
arbitrary command execution, but the requirement for a user-initiated
`:Vimuntar` invocation on an attacker-supplied suspicious filename limits the
practical attack surface.

## Acknowledgements
The Vim project would like to thank Aisle Research for reporting and
analyzing the issue.

## References
The issue has been fixed as of Vim patch [v9.2.479](https://github.com/vim/vim/releases/tag/v9.2.0479).
- [Commit](https://github.com/vim/vim/commit/3fb5e58fbc63d86a3e65f1a141b0d67af2aa38a1)
- [Github Security Advisory](https://github.com/vim/vim/security/advisories/GHSA-2fpv-9ff7-xg5w)



Thanks,
Chris
-- 
I'm prepared for all emergencies but totally unprepared for everyday life.
