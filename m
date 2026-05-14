Received: (qmail 28236 invoked by uid 550); 14 May 2026 18:55:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3602 invoked from network); 14 May 2026 16:56:01 -0000
Date: Thu, 14 May 2026 18:55:50 +0200
From: Christian Brabandt <cblists@256bit.org>
To: oss-security@lists.openwall.com
Message-ID: <agX+lrPZrSvoV2jW@256bit.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cblists@256bit.org
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Subject: [oss-security] [vim-security] Vimscript Code Injection in netrw NetrwMarkFile() via
 crafted filename affects Vim < 9.2.480


Vimscript Code Injection in netrw NetrwMarkFile() via crafted filename affe=
cts Vim < 9.2.480
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Date: 14.05.2026
Severity: Medium
CVE: CVE-2026-43961
CWE: Improper Control of Generation of Code (CWE-94) /
     Improper Neutralization of Special Elements in Output Used by a Downst=
ream Component (CWE-74)

## Summary
A Vimscript code injection vulnerability exists in `s:NetrwMarkFile()` in t=
he
netrw plugin (`runtime/pack/dist/opt/netrw/autoload/netrw.vim`) when
unmarking files from the global marked-file list.  A filename derived
from the buffer's directory listing is interpolated into a string
expression passed to `filter()`, allowing a crafted filename containing
a double quote to break out of the quoted string literal and execute
arbitrary Vimscript, including shell commands via `execute()` and `:!`.

## Description
`s:NetrwMarkFile()` maintains two marked-file lists: a buffer-local list
and a global list.  When a file is unmarked, both lists are updated.
The buffer-local list uses the safe pattern:

    call filter(s:netrwmarkfilelist_{curbufnr},'v:val !=3D a:fname')

where `a:fname` is referenced as a variable inside the filter expression
and resolved at evaluation time.  The global list, however, interpolated
the filename's value directly into the expression string:

    let dname =3D netrw#fs#ComposePath(b:netrw_curdir, a:fname)
    ...
    call filter(s:netrwmarkfilelist, 'v:val !=3D "'.dname.'"')

When `filter()` receives a string argument, the string is parsed as a
Vimscript expression.  A filename containing `"` terminates the quoted
literal early, after which the remainder of the filename is evaluated as
Vimscript.  Calls such as `execute("!cmd")` inside the injected fragment
run arbitrary Ex commands with the privileges of the user running Vim.
The filename reaches `s:NetrwMarkFile()` through the `mf` mapping, which
calls `s:NetrwGetWord()` to read the filename from the current line of
the netrw directory listing.  The injection only triggers on the second
`mf` press for a given entry, because the first press takes the
`add()` branch and only the second takes the vulnerable `filter()`
branch.

## Impact
The vulnerability allows arbitrary Vimscript execution, and by extension
arbitrary shell command execution, with the privileges of the user
running Vim.  Exploitation requires:
- a Unix-like system on which a filename may contain a double quote,
- a crafted file present in a directory the victim browses with netrw,
  and
- the victim to invoke `mf` twice on that specific entry to mark and
  then unmark it.
The severity is rated Medium because exploitation requires a planted
file with an unusual name and a deliberate mark/unmark action by the
victim on that specific entry, although the resulting primitive is full
command execution as the victim user.

Note: due to the nature of the issue, it seems highly unlikely that a user
would press mf twice on such a suspicious filename.

## Acknowledgements
The Vim project would like to thank Aisle Research for reporting and
analyzing the issue.

## References
The issue has been fixed as of Vim patch [v9.2.480](https://github.com/vim/=
vim/releases/tag/v9.2.0480).
- [Commit](https://github.com/vim/vim/commit/8af0f098c3a42a28661d0295364e)
- [Github Security Advisory](https://github.com/vim/vim/security/advisories=
/GHSA-66hr-7p6x-x5j3)


Thanks,
Chris
--=20
Lee's Law:
	Mother said there would be days like this,
	but she never said that there'd be so many!
