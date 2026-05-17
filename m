Received: (qmail 11543 invoked by uid 550); 17 May 2026 19:01:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11498 invoked from network); 17 May 2026 19:01:07 -0000
Date: Sun, 17 May 2026 21:00:55 +0200
From: Christian Brabandt <cb@256bit.org>
To: oss-security@lists.openwall.com
Message-ID: <agoQZ1+n+yF+JEMd@256bit.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cb@256bit.org
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Subject: [oss-security] [vim-security] Vimscript Code Injection in netrw NetrwBookHistSave()
 via crafted directory name affects Vim < 9.2.495

Vimscript Code Injection in netrw NetrwBookHistSave() via crafted directory name affects Vim < 9.2.495
======================================================================================================
Date: 17.05.2026
Severity: Medium
CVE: *requested, not yet assigned*
CWE: Improper Control of Generation of Code (CWE-94) /
     Improper Neutralization of Special Elements in Output Used by a Downstream Component (CWE-74)

## Summary

A Vimscript code injection vulnerability exists in `s:NetrwBookHistSave()`
in the netrw plugin (`runtime/pack/dist/opt/netrw/autoload/netrw.vim`)
when serializing browsed directory paths to the history file
`~/.vim/.netrwhist`.  A directory name derived from the filesystem is
interpolated into a single-quoted Vimscript string literal without
escaping embedded single quotes, allowing a crafted directory name to
break out of the string context and execute arbitrary Vimscript,
including shell commands via `system()` and `:!`, the next time the
history file is sourced.

## Description

netrw records every directory the user browses into a per-user history
file at `~/.vim/.netrwhist`.  `s:NetrwBookHistSave()` writes each entry
as a Vimscript assignment statement:

    call setline(lastline,'let g:netrw_dirhist_'.cnt."='".g:netrw_dirhist_{cnt}."'")

The directory path `g:netrw_dirhist_{cnt}` is inserted between two
literal `'` characters without escaping any single quotes contained in
the path, an embedded single quote therefore terminates the string
early, after which the remainder of the path is parsed as additional
Vimscript statement.  Vim statements may be chained with `|`, so a directory name
of the form

    x'|<injected Vimscript>|let y='z

is serialized as three valid statements on a single line.

The sibling bookmark serializer thirty lines below in the same function
uses `string()` correctly, which is the canonical primitive for this
purpose; only the history serializer was missing the escape.

The history file is read back on every netrw initialization with:

    exe "keepalt NetrwKeepj so ".savefile

The `:source` invocation evaluates every statement in the file, so any
injected Vimscript executes with the privileges of the user running
Vim.  Calls such as `system()`, `:!`, or `writefile()` in the injected
fragment yield arbitrary command execution.

The directory name reaches `s:NetrwBookHistSave()` through the normal
netrw browse flow: when the user navigates into a directory via netrw,
the path is appended to the in-memory history list, which is flushed to
disk by an autocmd on `VimLeave`.  The injection therefore arms on any
netrw browse of a maliciously named directory and fires on any
subsequent Vim invocation that opens a directory through netrw.

The default configuration is affected: `g:netrw_dirhistmax` defaults to
10, which enables the history mechanism.

POSIX forbids `/` inside a single filename component, so the dirname
payload cannot directly construct an absolute path; this constraint is
bypassed via environment-variable expansion (e.g. `$HOME`) or relative
paths evaluated at Vim's current working directory.

## Impact

The vulnerability allows arbitrary Vimscript execution, and by
extension arbitrary shell command execution, with the privileges of the
user running Vim.  Exploitation requires:

- a Unix-like system on which a filename may contain a single quote,
- a crafted directory present in a location the victim browses with
  netrw (e.g. delivered via a cloned repository, extracted archive, or
  shared filesystem), and
- the victim to (1) browse the crafted directory once with netrw, then
  (2) launch Vim on any directory at a later point so that
  `.netrwhist` is sourced.

The severity is rated Medium because exploitation requires a planted
directory name with an unusual name and a deliberate "edit directory" command
by the victim, although the resulting primitive is full
command execution as the victim user.

The injection persists in `.netrwhist` until the entry is rotated out of
the history.

## Acknowledgements

The Vim project would like to thank Srinivas Piskala Ganesh Babu for
reporting and analyzing the issue and suggesting a fix.

## References

The issue has been fixed as of Vim patch [v9.2.0495](https://github.com/vim/vim/releases/tag/v9.2.0495).

- [Commit](https://github.com/vim/vim/commit/f08ab2f4d7d2947c8dd6c179ae08ee6146a2694b)
- [Github Security Advisory](https://github.com/vim/vim/security/advisories/GHSA-crm5-rh6j-2c7c)


Thanks,
Chris
-- 
Wenn die Leute jemanden zu einer Dummheit verleiten wollen, dann sagen
sie: Sei doch vernünftig!
		-- Arthur Miller (Stern-Interview im März 2000)
