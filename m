Received: (qmail 22066 invoked by uid 550); 11 Mar 2026 19:07:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22030 invoked from network); 11 Mar 2026 19:07:02 -0000
Date: Wed, 11 Mar 2026 20:05:04 +0100
From: Christian Brabandt <cb@256bit.org>
To: oss-security@lists.openwall.com
Message-ID: <abG84F0/uwem7Qe2@256bit.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cb@256bit.org
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Subject: [oss-security] [vim-security] NFA regex engine NULL pointer dereference affects Vim
 < 9.2.0137



NFA regex engine NULL pointer dereference affects Vim < 9.2.0137
================================================================
Date: 11.03.2026
Severity: Moderate
CVE: *not-yet-assigned*
CWE: NULL Pointer Dereference (CWE-476)

## Summary

A NULL pointer dereference occurs in `nfa_max_width()` when the NFA regex
engine processes a look-behind assertion containing a collection with a
combining Unicode character as a range endpoint.

## Description

Vim's NFA regex compiler, when encountering a collection containing a
combining character as the endpoint of a character range (e.g.
`[0-0\u05bb]`), incorrectly emits the composing bytes of that character
as separate NFA states. This corrupts the NFA postfix stack, resulting in
`NFA_START_COLL` having a NULL `out1` pointer. When `nfa_max_width()`
subsequently traverses the compiled NFA to estimate match width for the
look-behind assertion, it dereferences `state->out1->out` without a NULL
check, causing a segmentation fault.

The bug was introduced by patch [9.1.0011](https://github.com/vim/vim/commit/d2cc51f9a1a5a30ef5d2e732f49d7f495cae24cf).

## Impact

Any user or process that can supply a regex pattern to Vim - including via
plugins or command-line arguments - can trigger a crash.

## Acknowledgements

The Vim project would like to thank  Nathan Mills for identifying the
vulnerability through fuzzing and providing a minimal reproducer and detailed analysis.

## References

The issue has been fixed as of Vim patch [v9.2.0137](https://github.com/vim/vim/releases/tag/v9.2.0137)
- [Commit](https://github.com/vim/vim/commit/36d6e87542cf823d833e451e09a90ee429899cec)
- [GitHub Advisory](https://github.com/vim/vim/security/advisories/GHSA-9phh-423r-778r)

Thanks,
Christian
-- 
Nun kommt es im Leben darauf an, wer eine Wahrheit ausspricht. In
gewissen Munde wird auch Wahrheit zu Lüge.
		-- Thomas Mann
