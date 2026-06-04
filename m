Received: (qmail 23821 invoked by uid 550); 4 Jun 2026 22:53:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3345 invoked from network); 4 Jun 2026 21:18:02 -0000
Date: Thu, 4 Jun 2026 23:17:51 +0200
From: Christian Brabandt <cb@256bit.org>
To: oss-security@lists.openwall.com
Message-ID: <aiHrf7gTq2gMr2Wy@256bit.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cb@256bit.org
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Subject: [oss-security] [vim-security] Arbitrary Code Execution via Python Omni-Completion
 in Vim < 9.2.597

Arbitrary Code Execution via Python Omni-Completion in Vim < 9.2.597
====================================================================

Date: 2026-06-04
Severity: Medium
CVE: *requested, not yet assigned*
CWE: Improper Control of Generation of Code (CWE-94)

## Summary

Vim's Python omni-completion executes reconstructed function and class
definitions from the current buffer with `exec()` as part of populating
the completion dictionary. Python evaluates function default values,
parameter annotations, and class base expressions at definition time,
so a hostile buffer can execute attacker-controlled Python expressions
during omni-completion. The existing `g:pythoncomplete_allow_import`
mitigation (GHSA-52mc-rq6p-rc7c) does not cover this path, because the
attacker-controlled code is not a harvested `import`/`from` statement.

## Description

In `runtime/autoload/python3complete.vim` (and the legacy
`pythoncomplete.vim`), the omni-completion entry point calls
`exec(src, self.compldict)` on source reconstructed from the parsed
buffer. The reconstructed source includes function definitions whose
parameter lists are joined verbatim from tokens harvested by the
internal `_parenparse()` helper, which preserves default expressions
and annotations as written in the buffer. The same applies to class
base lists. When `exec()` runs the reconstructed `def` and `class`
statements, Python evaluates those expressions.

## Impact

An attacker who can convince a user to open or edit a hostile Python
buffer and trigger Python omni-completion (CTRL-X CTRL-O, or a plugin
that invokes the completion function) can execute Python code in the
user's Vim process. The code runs with the user's privileges.

Vim built without `+python3` and `+python` is not affected. Triggering
omni-completion in the hostile buffer is required; opening the file
alone is not sufficient.

## Acknowledgements

The Vim project would like to thank github user DavidCarliez for
reporting and analyzing the issue.

## References

The issue has been fixed as of Vim patch [v9.2.597](https://github.com/vim/vim/releases/tag/v9.2.0597).
- [Commit](https://github.com/vim/vim/commit/c8c63673bc4253212820626aeeb75999d9a539d2)
- [Github Security Advisory](https://github.com/vim/vim/security/advisories/GHSA-65p9-mwwx-7468)
- [Github Security Advisory GHSA-52mc-rq6p-rc7c](https://github.com/vim/vim/security/advisories/GHSA-52mc-rq6p-rc7c)
  (prior mitigation for the same surface)



Thanks,
Christian
-- 
Erfolg ist die Kunst, Fehler zu machen, die kein anderer bemerkt.
		-- Martin Jente
