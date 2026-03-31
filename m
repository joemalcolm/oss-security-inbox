Received: (qmail 30252 invoked by uid 550); 31 Mar 2026 18:39:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30213 invoked from network); 31 Mar 2026 18:39:20 -0000
Date: Tue, 31 Mar 2026 20:37:06 +0200
From: Christian Brabandt <cb@256bit.org>
To: oss-security@lists.openwall.com
Message-ID: <acwUUpdAhrOoJu0H@256bit.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cb@256bit.org
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Subject: [oss-security] [vim-security] Vim modeline bypass via various options affects Vim <
 9.2.0276

Vim modeline bypass via various options affects Vim < 9.2.0276
==============================================================
Date: 31.03.2026
Severity: High
CVE: *not yet assigned*
CWE: Improper Neutralization of Special Elements used in an OS Command ('OS Command Injection') (CWE-78)

## Summary
A modeline sandbox bypass in Vim allows arbitrary OS command execution 
when a user opens a crafted file. The `complete`, `guitabtooltip` and 
`printheader` options are missing the `P_MLE` flag, allowing a modeline 
to be executed. Additionally, the `mapset()` function lacks a 
`check_secure()` call, allowing it to be abused from sandboxed 
expressions.

## Description
The `complete` option (`src/optiondefs.h:684`) accepts `F{func}` syntax 
to register completion callbacks (added in patch 9.1.1178), similar to 
how `completefunc` works. However, unlike `completefunc` which has 
`P_SECURE`, `complete` has neither `P_SECURE` nor `P_MLE`, so the 
modeline security check at `src/option.c:1565-1571` is bypassed and 
arbitrary lambda expressions are accepted from modelines.

Similar effects can be achieved by setting the `guitabtooltip` and
`printheader` options via a modeline and abusing the `mapset()` function 
to execute arbitrary code on random key mappings.

## Impact
An attacker who can deliver a crafted file to a victim achieves 
arbitrary command execution with the privileges of the user running Vim.

## Acknowledgements
The Vim project would like to thank "dfwjj x" and "Avishay Matayev" for 
identifying the vulnerability chain, providing a detailed root cause 
analysis and reproduction steps

## References
The issue has been fixed as of Vim patch 
[v9.2.0276](https://github.com/vim/vim/releases/tag/v9.2.0276)

- [Commit](https://github.com/vim/vim/commit/75661a66a1db1e1f3f1245c615f13a7)
- [GitHub Advisory](https://github.com/vim/vim/security/advisories/GHSA-8h6p-m6gr-mpw9)

Best,
Christian
-- 
Der Mann ist Lyrisch, die Frau Episch, die Ehe dramatisch
		-- Novalis (eig. Georg Philipp Friedrich Leopold von Hardenberg)
