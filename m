Received: (qmail 14056 invoked by uid 550); 2 Mar 2025 18:44:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14023 invoked from network); 2 Mar 2025 18:44:26 -0000
Date: Sun, 2 Mar 2025 19:44:16 +0100
From: Christian Brabandt <cb@256bit.org>
To: oss-security@lists.openwall.com
Message-ID: <Z8SnANYsD5hP68pY@256bit.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cb@256bit.org
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Subject: [oss-security] [vim-security] potential code execution with tar.vim and special
 crafted tar files


potential code execution with tar.vim and special crafted tar files
===================================================================
Date: 02.03.2025
Severity: High
CVE: <not-yet-assigned>
CWE: Improper Input Validation (CWE-20)

Vim is distributed with the tar.vim plugin, that allows easy editing and
viewing of (compressed or uncompressed) tar files.

Since commit 129a8446d23cd9cb4445fcfea259cba5e0487d29
(Nov 11, 2024 runtime(tar): Update tar.vim to support permissions), the
tar.vim plugin uses the ":read <fname>" ex command line to append 
<fname> below the cursor position, however the <fname> is not sanitized 
and is taken literaly from the tar archive. This allows to execute shell
commands via special crafted tar archives. Whether this really happens,
depends on the shell being used ('shell' option, which is set using
$SHELL).

Impact is **high** but a user must be convinced to edit such a file 
using Vim which will reveal the filename, so a careful user may suspect 
some strange things going on.

The Vim project would like to thank RyotaK (GMO Flatt Security Inc) for
reporting this issue.

The issue has been fixed as of Vim patch v9.1.1164

[Commit](https://github.com/vim/vim/commit/334a13bff78aa0ad206bc436885f63e3a0bab399)
[Github Advisory](https://github.com/vim/vim/security/advisories/GHSA-wfmf-8626-q3r3)

Thanks,
Christian
-- 
Pecor's Health-Food Principle:
	Never eat rutabaga on any day of the week that has a "y" in it.
