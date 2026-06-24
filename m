X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/24/9
Message-ID: <ajw8rURp5y5s5Ue6@256bit.org>
Date: Wed, 24 Jun 2026 22:23:09 +0200
From: Christian Brabandt <cb@...bit.org>
To: oss-security@...ts.openwall.com
Subject: [vim-security] Out-of-bounds Write in SAL Soundfolding in Vim < 9.2.0725
Content-Type: text/plain; charset=utf-8

Out-of-bounds Write in SAL Soundfolding in Vim < 9.2.0725
=========================================================
Date: 24.06.2026
Severity: Medium
CVE: *requested, not yet assigned*
CWE: Out-of-bounds Write (CWE-787)

## Summary
The single-byte branch of `spell_soundfold_sal()` in `src/spell.c` translates
a word through a spell file's SAL (sound-folding) rules into a caller-owned
result buffer.  Its result writes are guarded with `reslen < MAXWLEN`, which
allows `reslen` to reach `MAXWLEN`.  The function then terminates the result
with `res[reslen] = NUL`, writing one byte past the end of the `MAXWLEN`-element
stack buffer when `reslen == MAXWLEN`.  A word that reaches the buffer boundary,
passed to `soundfold()` (or reached via sound-based spell suggestion) while a
SAL-based spell language is active, therefore writes past the end of that
buffer.  This is a stack out-of-bounds write that corrupts the call frame and
crashes the editor.

## Description
`spell_soundfold_sal()` writes its translated output into the stack buffer
`res`, an array of size `[MAXWLEN]` (valid indices `0..MAXWLEN - 1`).  The
single-byte branch, taken for 8-bit encodings such as `latin1`, guards each
result write with `reslen < MAXWLEN`, so `reslen` can be incremented up to and
including `MAXWLEN`.  After the translation loop the result is NUL-terminated:

```C
    res[reslen] = NUL;          // reslen may equal MAXWLEN -> OOB write
```

With `reslen == MAXWLEN` this stores at index `MAXWLEN` of a `MAXWLEN`-element
buffer, one byte past the end (CWE-787).  The preceding write sites in this
branch — the no-`<`-rule copy loop, the `"^^"` rule append, and the
double-letter condense — are bounded with `< MAXWLEN` rather than `< MAXWLEN - 1`,
leaving no room for the terminating NUL at the boundary.

`f_soundfold()` passes the user-supplied string to `eval_soundfold()` without
length-bounding it; the input is case-folded to roughly `MAXWLEN - 1` bytes, so
an argument at that boundary length drives `reslen` to `MAXWLEN`.  This is the
SAL counterpart to the SOFO issue fixed in 9.2.0698; the single-byte SAL branch
was the remaining walker of this class with an off-by-one at the terminator.

## Impact
This issue is driven by the length of the word handed to the
`spell_soundfold_sal()` function, not by the contents of the spell file; any
loaded spell language with SAL sound-folding rules is enough.  Exploitation is
constrained, however.  The vulnerable single-byte branch is only reached under
a non-multibyte 8-bit encoding (e.g. `set encoding=latin1`); under the default
UTF-8 encoding the multibyte branch `spell_soundfold_wsal()`, which writes one
full character at a time and breaks on `l + MB_MAXBYTES > MAXWLEN`, is taken
instead and is unaffected.  Spell checking must be enabled with such a
SAL-based language, and `soundfold()` must be invoked on a boundary-length word
— for instance a script or plugin that calls `soundfold()` on untrusted input.
When those conditions hold the out-of-bounds write corrupts the
`eval_soundfold()` stack frame and the process aborts.

## Acknowledgements
The Vim project would like to thank Hirohito Higashi (@h-east) for reporting and
analyzing the issue and suggesting a fix.

## References
The issue has been fixed as of Vim patch [v9.2.0725](https://github.com/vim/vim/releases/tag/v9.2.0725).
- [Commit](https://github.com/vim/vim/commit/d22ff1c955ff87e8273210eae125aab0e85b6c30)
- [Github Security Advisory](https://github.com/vim/vim/security/advisories/GHSA-m3hf-xcm3-xhm2)


Thanks,
Christian
-- 
Das Fürtreffliche ist unergründlich, man mag damit anfangen, was
man will.
		-- Goethe, Maximen und Reflektionen, Nr. 365
