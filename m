X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/24/31
Message-ID: <amO/luVbEUw+cBMw@256bit.org>
Date: Fri, 24 Jul 2026 21:40:06 +0200
From: Christian Brabandt <cb@...bit.org>
To: oss-security@...ts.openwall.com
Subject: [vim-security] Arbitrary Command Execution via the Vimball Record File in Vim < 9.2.0847
Content-Type: text/plain; charset=utf-8

Arbitrary Command Execution via the Vimball Record File in Vim < 9.2.0847
=========================================================================

Date: 24.07.2026
Severity: Medium
CVE: *requested, not yet assigned*
CWE: Improper Control of Generation of Code (CWE-94),
     Inclusion of Functionality from Untrusted Control Sphere (CWE-829)

## Summary

The vimball plugin records the files it extracts in a plain text file named
`.VimballRecord`, so that they can be removed again later.  Each line of that
file holds the commands to undo one installation, and they were executed
without being checked.  The plugin refused to extract members whose name
could inject into that file, but it did not refuse a member that *is* the
record file.  A crafted vimball can therefore write chosen commands into the
record, which are then executed the next time any vimball operation consults
it.

## Description

`runtime/autoload/vimball.vim` writes one line per installed vimball into
`.VimballRecord` in the directory used for vimball installations, listing the
commands that delete the files that were extracted.  When a vimball is
installed or removed, `vimball#RmVimball()` searches that file for the line
belonging to the archive, strips the archive name from the front of it and
runs the remainder:

    sil! keepalt keepjumps exe exestring

The name of each member of an archive was already checked, and names that
contain a bar, a quote or a closing parenthesis were rejected, precisely so
that a file name could not inject commands into the record.  That check does
not apply to a member whose name is `.VimballRecord` itself: extracting it
overwrites the record with content taken straight from the archive, and the
content of a member is not examined at all.

The commands placed there are run later, when a vimball with the matching
name is installed or removed, and not while the crafted archive is being
extracted.

The issue has been addressed by refusing to extract a member named
`.VimballRecord`, and by executing only entries of the expected form, namely
a single call that deletes one file or directory.  Anything else in the
record is reported and skipped.

## Impact

Execution of arbitrary Ex commands, and through commands such as `:!`
arbitrary operating-system commands, in the context of the user running Vim.

Exploitation requires the victim to install a vimball from a source
controlled by the attacker, either by sourcing it or through the getscript
plugin, which downloads and sources vimballs automatically.  Installing a
vimball already runs the commands contained in it, so the attacker does not
gain the ability to run commands as such.  What the issue adds is that the
archive itself can appear harmless while leaving commands behind that run at
a later time, during an unrelated vimball installation or removal, and that
continue to do so after the archive that placed them has been removed.

The severity is rated Medium because installing a vimball from an untrusted
source already permits commands from that vimball to run, so the issue
extends the reach of such an installation rather than creating it.

## Acknowledgements

The Vim project would like to thank tdjackey for reporting the issue.

## References

The issue has been fixed as of Vim patch [v9.2.0847](https://github.com/vim/vim/releases/tag/v9.2.0847).

- [Commit](https://github.com/vim/vim/commit/581a2f3ac9c6f96a26324f6b2c8c11415fd0d452)
- [Github Security Advisory](https://github.com/vim/vim/security/advisories/GHSA-r22p-fhw4-84p2)

Best,
Chris
-- 
Man sagt nicht 'Nichts!', man sagt dafür 'Jenseits' oder 'Gott'.
		-- Friedrich Wilhelm Nietzsche
