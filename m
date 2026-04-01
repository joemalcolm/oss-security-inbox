Received: (qmail 21642 invoked by uid 550); 1 Apr 2026 16:33:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 21602 invoked from network); 1 Apr 2026 16:33:22 -0000
Date: Wed, 1 Apr 2026 18:31:08 +0200
From: Christian Brabandt <cb@256bit.org>
To: oss-security@lists.openwall.com
Message-ID: <ac1ITEgogng5SRlF@256bit.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cb@256bit.org
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Subject: [oss-security] [vim-security] Path traversal issue with zip.vim and special crafted
 zip archives in Vim < v9.2.0280

Path traversal issue with zip.vim and special crafted zip archives in Vim < v9.2.0280
=====================================================================================
Date: 01.04.2026
Severity: Low
CVE: *not yet assigned*
CWE: Improper Limitation of a Pathname to a Restricted Directory ('Path Traversal') (CWE-22)

## Summary

A path traversal bypass in Vim's zip.vim plugin allows overwriting of arbitrary
files when opening specially crafted zip archives, circumventing the previous fix
for CVE-2025-53906.

## Description

Vim includes the zip.vim plugin, which enables viewing and editing of files
within zip archives. A prior fix for CVE-2025-53906 added a check rejecting
archive member paths beginning with `../`. However, that check can be bypassed
by prefixing the traversal with a dummy directory component (e.g.,
`a/../../../../../../tmp/foobar`). The leading `a/` causes the original pattern
`^[.]\?[.]/` to not match, while the path still escapes the intended directory
after normalization.

Exploitation requires the same conditions as CVE-2025-53906:

- The user opens a specially crafted archive in Vim.
- The user selects and attempts to edit one of the malicious files within the archive.
- Vim writes the file back to disk using `:w`.

Only after all these steps are performed would Vim overwrite an existing file
outside the intended working directory.

- Vim does display the full path to be written, so a careful user may notice
  suspicious behavior.
- Standard zip utilities typically do not extract such paths and will warn or
  skip them. This issue only affects Vim's internal handling, not the zip tool
  itself.

## Impact

Impact is **low** because exploitation requires direct user interaction.
However, successful exploitation can lead to overwriting sensitive files or
placing executable code in privileged locations, depending on the permissions
of the process editing the archive.

The victim must edit such a file using Vim, which will reveal the filename
and file content - a careful user may suspect something suspicious.

## Acknowledgements
The Vim project would like to thank Michał Majchrowicz for identifying the
vulnerability chain, providing a detailed root cause analysis and reproduction
steps.

## References
The issue has been fixed as of Vim patch [v9.2.0280](https://github.com/vim/vim/releases/tag/v9.2.0280).

- [Commit](https://github.com/vim/vim/commit/7088926316d8d4a7572a242d0765)
- [GitHub Advisory](https://github.com/vim/vim/security/advisories/GHSA-jc86-w7vm-8p24)


Best,
Christian
-- 
Wie man sein Kind nicht nennen sollte: 
  Tino Saurier 
