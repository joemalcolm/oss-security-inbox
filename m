X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/24/18
Message-ID: <amKIKbIvTEhUEzrr@256bit.org>
Date: Thu, 23 Jul 2026 23:31:21 +0200
From: Christian Brabandt <cb@...bit.org>
To: oss-security@...ts.openwall.com
Subject: [vim-security] Arbitrary Code Execution via Netrw Menu Construction in Vim < 9.2.0840
Content-Type: text/plain; charset=utf-8


Arbitrary Code Execution via Netrw Menu Construction in Vim < 9.2.0840
=======================================================================

Date: 23.07.2026
Severity: Medium
CVE: *requested, not yet assigned*
CWE: Improper Control of Generation of Code (CWE-94),
     Incomplete List of Disallowed Inputs (CWE-184)

## Summary

The netrw file browser builds its Bookmarks, History and Targets menus by
interpolating directory paths into `:execute`d `:menu` commands.  The paths
are escaped with the character set in `g:netrw_menu_escape`, which did not
include the Ex command separator `|`.  Because `:menu` treats an unescaped
bar as the end of the command, a directory path containing a bar terminates
the `:menu` command and the remainder of the path is executed as Ex
commands, and via `:!` as operating-system commands.  Two of the affected
sites additionally interpolate the path into a single-quoted Vim string
without neutralizing the quote.

## Description

`runtime/plugin/netrwPlugin.vim` loads the netrw package on startup, so no
opt-in is required.  While browsing, netrw records visited directories in
its history and rebuilds its menus, calling `s:NetrwBookmarkMenu()` and
`s:NetrwTgtMenu()` in `runtime/pack/dist/opt/netrw/autoload/netrw.vim`.
Those functions construct the menu entries by concatenation, for example:

    let bmd = escape(bmd, g:netrw_menu_escape)
    exe 'sil! menu ' .. ... .. 'Bookmarks.' .. bmd .. '    :e ' .. bmd .. "\<cr>"

`g:netrw_menu_escape` defaulted to `'.&? \'`, which neutralizes characters
significant to menu rendering but not the bar.  The `:menu` command carries
the `EX_TRLBAR` attribute, so an unescaped bar in the interpolated path ends
the `:menu` command and everything after it is parsed as a further Ex
command.

The Targets menu entries additionally embed the path in a single-quoted Vim
string passed to `netrw#MakeTgt()` without escaping, so a path containing a
single quote can terminate that string early and inject Vim script.

Five construction sites were affected: the bookmark goto and bookmark delete
entries, the history entry, and the bookmark and history entries of the
Targets menu.

Menu construction is guarded by `has("gui")`, `has("menu")`,
`has("gui_running")`, the `'m'` flag in 'guioptions' and `g:netrw_menu`.
Vim running in a terminal is therefore not affected; the issue applies to
the GUI version with the menu bar enabled.

## Impact

Arbitrary Ex command execution, and via the `:!` command arbitrary
operating-system command execution, in the context of the user running Vim.
Exploitation requires:

- the GUI version of Vim with menus enabled (`has("gui_running")`, the `'m'`
  flag in 'guioptions' and `g:netrw_menu` set, which are the defaults),
- a directory path under the attacker's control, for example on a shared
  filesystem or a remote host browsed over FTP or SFTP,
- the victim browsing that path with netrw, or bookmarking it, so that it
  enters netrw's history or bookmark list and the menus are rebuilt.

The severity is rated Medium because the console version of Vim is not
affected and the crafted path must first be recorded in the bookmark list or
the browsing history.

## Acknowledgements

The Vim project would like to thank David Carliez for reporting the issue.

## References

The issue has been fixed as of Vim patch [v9.2.0840](https://github.com/vim/vim/releases/tag/v9.2.0840).

- [Commit](https://github.com/vim/vim/commit/29c6fd090d4520592f8be7d9ec81190edf25ef69)
- [Github Security Advisory](https://github.com/vim/vim/security/advisories/GHSA-rcr7-f3wr-22r2)


Thanks,
Chris
-- 
Wir leben im Zeitalter der medialen Massenverblödung.
		-- Peter Scholl-Latour
