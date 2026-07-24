X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/24/30
Message-ID: <amO/hMtuHzeRJe8I@256bit.org>
Date: Fri, 24 Jul 2026 21:39:48 +0200
From: Christian Brabandt <cb@...bit.org>
To: oss-security@...ts.openwall.com
Subject: [vim-security] Heap Buffer Overflow when Loading a Spell File in Vim < 9.2.0846
Content-Type: text/plain; charset=utf-8

Heap Buffer Overflow when Loading a Spell File in Vim < 9.2.0846
================================================================

Date: 24.07.2026
Severity: Medium
CVE: *requested, not yet assigned*
CWE: Heap-based Buffer Overflow (CWE-122),
     Out-of-bounds Write (CWE-787)

## Summary

A spell file may contain a section holding sound-folding rules and a section
holding a simple character mapping used for the same purpose.  Reading the
first of these fills an index table with the value minus one for every entry.
Reading the second uses that same table to count how many mappings share a
byte, but did not reset it beforehand, so every count came out one too low.
The buffer allocated from that count is then too small for the mappings that
are stored into it, and the surplus is written past its end.  A crafted spell
file therefore causes an out-of-bounds write when it is loaded, with part of
the written data taken from the file.

## Description

Vim loads a spell file when a language is selected with the 'spelllang'
option.  The file is a sequence of sections, and the loader in
`src/spellfile.c` dispatches on the section identifier without imposing an
order on them or requiring them to be unique.

Reading the sound-folding section ends with a call to `set_sal_first()`,
which sets all 256 entries of the language's first-index table to minus one.
This happens even when that section contains no rules at all.

Reading the character mapping section calls `set_sofo()`, which reuses the
same table as a temporary counter.  For every mapped character above 255 it
increments the entry belonging to the low byte of that character, allocates
one list per entry from the resulting counts, and only afterwards clears the
table again.  Since the counting started from minus one rather than zero,
each count is one too low.  For a byte value used by two mapped characters
the list is allocated for one pair and two are written into it, so the
storing loop writes past the end of the allocation; part of what is written
is the mapped-to character taken from the file.  For a byte value used by
exactly one mapped character the count becomes zero, no list is allocated at
all, and the storing loop follows a null pointer.

The two sections are mutually exclusive by construction and the tool that
generates spell files never emits both, but nothing in the loader rejected a
file that contains them in that order.

The issue has been addressed by clearing the table before it is used as a
counter.

## Impact

An out-of-bounds write to the heap, or a null pointer dereference, while a
spell file is being loaded.  Part of the written data is taken from the
spell file, and the sizes of the other sections in the same file influence
the surrounding heap layout, so the effect is not limited to a crash,
although no further consequence has been demonstrated.

Exploitation requires the victim to load a crafted spell file, which happens
when 'spelllang' is set to a value naming that file, or to a language for
which the crafted file is found in the directories searched for spell files.
Vim must be built with the spell checking and multi-byte features, which is
the case for the "huge" feature set used by most distributions.

The severity is rated Medium because a spell file has to be placed where Vim
will load it and the option has to be set to select it.

## Acknowledgements

The Vim project would like to thank Yazan Balawneh for reporting the issue.

## References

The issue has been fixed as of Vim patch [v9.2.0846](https://github.com/vim/vim/releases/tag/v9.2.0846).

- [Commit](https://github.com/vim/vim/commit/05c41c922309c7a11b6ec2f124be66551c90d66a)
- [Github Security Advisory](https://github.com/vim/vim/security/advisories/GHSA-9jqx-hgpr-6v64)


Best,
Chris
-- 
"Friede seiner Asche" wird geschüttelreimt zu
"Ade seiner Frische", was auf das gleiche hinauskommt.
