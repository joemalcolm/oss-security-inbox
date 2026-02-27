Received: (qmail 3421 invoked by uid 550); 27 Feb 2026 21:42:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3357 invoked from network); 27 Feb 2026 21:42:58 -0000
Date: Fri, 27 Feb 2026 22:41:11 +0100
From: Christian Brabandt <cb@256bit.org>
To: oss-security@lists.openwall.com
Message-ID: <aaIPd0B3Nz0z1OAw@256bit.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cb@256bit.org
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Subject: [oss-security] [vim-security] Multiple Vulnerabilities in Swap File Recovery affect
 Vim < 9.2.0077

Multiple Vulnerabilities in Swap File Recovery affect Vim < 9.2.0077
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Date: 27.02.2026
Severity: Moderate
CVE: CVE-2026-28421
CWE: Heap-based Buffer Overflow (CWE-122) / Improper Input Validation (CWE-=
20)

### Summary
A heap-buffer-overflow and a segmentation fault (SEGV) exist in Vim's=20
swap file recovery logic. Both are caused by unvalidated fields read=20
from crafted pointer blocks within a swap file.

### Description
During swap file recovery, ml_recover() reads pointer block entries=20
(pe_bnum, pe_line_count, pe_page_count, etc.) directly from the file.

1) Heap Overflow: If a crafted swap file provides bogus block numbers=20
(`pe_bnum`) or page counts (`pe_page_count`) that exceed the swap file=20
size, `mf_get()` fails. Vim attempts to recover by appending "???MANY=20
LINES MISSING" via ml_append(). A crafted file can trigger this enough=20
times to overflow the db_index array in the current data block.

2) SEGV: If `pe_bnum` is negative, Vim attempts to read from the=20
original file using `readfile()`. Because the offsets (`pe_old_lnum`)=20
and counts (`pe_line_count`) from the swap file are not validated, Vim=20
passes garbage parameters to `readfile()`, resulting in a segmentation=20
fault.

### Impact
An attacker who can provide a crafted swap file to a user (e.g., via a=20
shared project directory) can trigger a crash or potentially execute=20
arbitrary code when the user attempts to recover the file.

### Acknowledgements
The Vim project would like to thank the reporter Github users ehdgks0627=20
and un3xploitable for identifying the vulnerability and providing a=20
proof-of-concept.

### References
The issue has been fixed as of Vim patch=20
[v9.2.0077](https://github.com/vim/vim/releases/tag/v9.2.0077)

[Commit](https://github.com/vim/vim/commit/65c1a143c331c886dc28)
[Github Advisory](https://github.com/vim/vim/security/advisories/GHSA-r2gw-=
2x48-jj5p)

Thanks,
Christian
--=20
Hei=C3=9Ft der Bildschirm Bildschirm, weil er Bilder abschirmt?
