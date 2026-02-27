Received: (qmail 32763 invoked by uid 550); 27 Feb 2026 21:42:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32706 invoked from network); 27 Feb 2026 21:42:48 -0000
Date: Fri, 27 Feb 2026 22:41:01 +0100
From: Christian Brabandt <cb@256bit.org>
To: oss-security@lists.openwall.com
Message-ID: <aaIPbS8JzoWltKS3@256bit.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cb@256bit.org
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Subject: [oss-security] [vim-security] Heap-based Buffer Overflow and OOB Read in :terminal
 affects Vim < 9.2.0076

Heap-based Buffer Overflow and OOB Read in :terminal affects Vim < 9.2.0076
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Date: 27.02.2026
Severity: Moderate
CVE: CVE-2026-28420
CWE: Heap-based Buffer Overflow (CWE-122) / Out-of-bounds Read (CWE-125)

### Summary
A heap-based buffer overflow WRITE and an out-of-bounds READ exist in=20
Vim=E2=80=99s terminal emulator when processing maximum combining character=
s=20
from Unicode supplementary planes.

### Description
The vulnerabilities are located in handle_pushline() in src/terminal.c.=20

1) Heap Overflow: Vim reserves 21 bytes (MB_MAXBYTES) per cell via=20
ga_grow(). This assumes characters stay within the BMP (3 bytes max).=20
However, a cell can contain up to 6 characters from supplementary planes=20
(4 bytes each). This requires 24 bytes, causing a 3-byte heap overflow=20
during conversion.

2) OOB Read: The loop iterating over cell characters fails to check the=20
boundary of the vterm_screen_cell_t.chars array. When a cell is fully=20
populated, the loop condition reads index 6 of a 6-element array.

### Impact
An attacker who can control the output of a program running inside a Vim=20
:terminal buffer can trigger a heap buffer overflow. This can result in=20
a crash (Denial of Service) or potential memory corruption.

### Acknowledgements
The Vim project would like to thank the reporter Github users ehdgks0627=20
and un3xploitable for identifying the vulnerability and providing a=20
proof-of-concept.

### References
The issue has been fixed as of Vim patch=20
[v9.2.0076](https://github.com/vim/vim/releases/tag/v9.2.0076)

[Commit](https://github.com/vim/vim/commit/bb6de2105b160e729c34063)
[Github Advisory](https://github.com/vim/vim/security/advisories/GHSA-rvj2-=
jrf9-2phg)

Thanks,
Christian
--=20
Bei uns wird Hand in Hand gearbeitet: Was die eine nicht schafft, l=C3=A4=
=C3=9Ft
die andere liegen. Was keiner kann, das kann ich auch!
