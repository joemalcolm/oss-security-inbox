X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/21/1
Message-ID: <ajhEv1EqUpBII8WK@256bit.org>
Date: Sun, 21 Jun 2026 22:08:31 +0200
From: Christian Brabandt <cb@...bit.org>
To: oss-security@...ts.openwall.com
Subject: [vim-security] Out-of-bounds Write in SOFO Soundfolding in Vim < 9.2.0698
Content-Type: text/plain; charset=utf-8

Out-of-bounds Write in SOFO Soundfolding in Vim < 9.2.0698
==========================================================
Date: 21.06.2026
Severity: Medium
CVE: *requested, not yet assigned*
CWE: Out-of-bounds Write (CWE-787)

## Summary
The single-byte branch of `spell_soundfold_sofo()` in `src/spell.c` translates
a word through a spell file's SOFO (sound-folding) byte map into a caller-owned
result buffer.  Its copy loop advances the output index `ri` with no upper
bound and terminates only on the input NUL, writing one byte per input byte
into the `MAXWLEN`-element stack buffer the caller provides.  A word longer
than `MAXWLEN`, passed to `soundfold()` (or reached via sound-based spell
suggestion) while a SOFO-based spell language is active, therefore writes past
the end of that buffer.  This is a stack out-of-bounds write that corrupts the
call frame and crashes the editor.

## Description
`spell_soundfold_sofo()` has two branches.  The multibyte branch (taken under
multibyte encodings) bounds its output with `if (ri + MB_MAXBYTES > MAXWLEN)
break;`.  The single-byte branch, taken for 8-bit encodings such as `latin1`,
has no equivalent guard:

```C
    else
    {
        // The sl_sal_first[] table contains the translation.
        for (s = inword; (c = *s) != NUL; ++s)      // bound: input NUL only
        {
            if (VIM_ISWHITE(c))
                c = ' ';
            else
                c = slang->sl_sal_first[c];
            if (c != NUL && (ri == 0 || res[ri - 1] != c))
                res[ri++] = c;                      // no ri < MAXWLEN guard
        }
    }
    res[ri] = NUL;                                  // trailing OOB write too
```

The destination `res` is an array of size `[MAXWLEN]`. `f_soundfold()` passes
the user-supplied string straight to `eval_soundfold()` without length-bounding
it, so once the active language carries a SOFO map (`sl_sal_first`), any input
longer than 253 bytes runs `ri` past the end of the buffer.  The two sibling
walkers do bound their output (`spell_soundfold_sal()` truncates its input with
`vim_strncpy(.., MAXWLEN - 1)` and guards `reslen < MAXWLEN`;
`spell_soundfold_wsal()` guards `reslen < MAXWLEN`); the single-byte SOFO
branch was the remaining unguarded walker of this class.

## Impact
This issue is driven by the length of the word handed to the
spell_soundfold_sofo() function, not by the contents of the spell file. any
loaded spell language with a SOFO sound-folding table is enough.  Exploitation
is constrained, however.  The vulnerable single-byte branch is only reached
under a non-multibyte 8-bit encoding (e.g. `set encoding=latin1`); under the
default UTF-8 encoding the multibyte branch, which is already bounded, is taken
instead.  Spell checking must be enabled with such a SOFO-based language, and
`soundfold()`  must be invoked on an over-long word - for instance a script or
plugin that calls `soundfold()` on untrusted input.  When those conditions hold
the out-of-bounds write corrupts the `eval_soundfold()` stack frame and the
process aborts.

## Acknowledgements
The Vim project would like to thank Cipher / Causal Security
(https://causalsecurity.com/) for reporting and analyzing the issue and
suggesting a fix.

## References
The issue has been fixed as of Vim patch [v9.2.0698](https://github.com/vim/vim/releases/tag/v9.2.0698).
- [Commit](https://github.com/vim/vim/commit/497f931f85339d175d7f69588dd249e8ccfed41b)
- [Github Security Advisory](https://github.com/vim/vim/security/advisories/GHSA-q8mh-6qm3-25g4)


Thanks,
Christian
-- 
Wer viel spricht hat weniger Zeit zum Denken.
		-- Indisches Sprichwort
