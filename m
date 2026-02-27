Received: (qmail 28196 invoked by uid 550); 27 Feb 2026 21:42:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28071 invoked from network); 27 Feb 2026 21:42:23 -0000
Date: Fri, 27 Feb 2026 22:40:36 +0100
From: Christian Brabandt <cb@256bit.org>
To: oss-security@lists.openwall.com
Message-ID: <aaIPVDjoNGmseZIp@256bit.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cb@256bit.org
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Subject: [oss-security] [vim-security] Heap-based Buffer Overflow in Emacs tags parsing
 affects Vim < 9.2.0074

Heap-based Buffer Overflow in Emacs tags parsing affects Vim < 9.2.0074
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Date: 27.02.2026
Severity: Low
CVE: CVE-2026-28418
CWE: Heap-based Buffer Overflow (CWE-122) / Out-of-bounds Read (CWE-125)

### Summary
A heap-based buffer overflow out-of-bounds read exists in Vim's=20
Emacs-style tags file parsing logic. When processing a malformed tags=20
file, Vim can be tricked into reading up to 7 bytes beyond the allocated=20
memory boundary.

### Description
The vulnerability is located in the `emacs_tags_new_filename()`=20
function. When Vim encounters a section header in an Emacs-style tags=20
file, it reads the following line into a fixed 512-byte heap buffer.

The code then searches for a comma delimiter to separate the filename=20
from the section metadata. If a crafted tags file provides a line=20
exceeding the buffer capacity without a comma, the search loop reaches=20
the end of the allocation.=20

Because the code assumes a comma was found, it proceeds to check for an=20
"include" directive by accessing memory immediately following the buffer=20
boundary. This results in an out-of-bounds read of up to 7 bytes.

### Impact
The vulnerability allows for an out-of-bounds heap read. An attacker who=20
induces a user to perform a tag lookup using a crafted Emacs tags file=20
(e.g., in a malicious repository) can crash Vim.

The severity is rated **low** because it is a read-only overflow and=20
requires the user to load and interact with a malicious emacs tags file.

### Acknowledgements
The Vim project would like to thank the reporter Github users ehdgks0627=20
and un3xploitable for identifying the vulnerability and providing a=20
proof-of-concept.

### References
The issue has been fixed as of Vim patch=20
[v9.2.0074](https://github.com/vim/vim/releases/tag/v9.2.0074).

[Commit](https://github.com/vim/vim/commit/f6a7f469a9c0d09e84cd6cb)
[Github Advisory](https://github.com/vim/vim/security/advisories/GHSA-h4mf-=
vg97-hj8j)

Thanks
Christian
--=20
Ein einziger Aufwiegler taugt manchmal mehr als alle Abwiegler
zusammen.
		-- Georg B=C3=BCchner
