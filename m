Received: (qmail 18369 invoked by uid 550); 15 Jul 2025 20:40:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18312 invoked from network); 15 Jul 2025 20:40:23 -0000
Date: Tue, 15 Jul 2025 22:40:12 +0200
From: Christian Brabandt <cb@256bit.org>
To: oss-security@lists.openwall.com,
	Yee Cheng Chin <ychin.macvim@gmail.com>,
	"T.J. Townsend" <tj@mrsk.me>, Ken Takata <ktakata65536@gmail.com>,
	Jiaqi Zhou <zeertzjq@outlook.com>,
	Dominique Pelle <dominique.pelle@gmail.com>, mattn.jp@gmail.com,
	sthen@openbsd.org, adamw@freebsd.org,
	James McCoy <jamessan@jamessan.com>,
	Yegappan Lakshmanan <yegappanl@gmail.com>,
	Doug Kearns <dougkearns@gmail.com>, glepnir <glephunter@gmail.com>,
	Hirohito Higashi <h.east.727@gmail.com>
Message-ID: <aHa8rOZSxkihIukN@256bit.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: cb@256bit.org
X-SA-Exim-Scanned: No (on 256bit.org); SAEximRunCond expanded to false
Subject: [oss-security] [vim-security]: path traversal issue with zip.vim and special
 crafted zip archives in Vim < v9.1.1551

path traversal issue with zip.vim and special crafted zip archives in Vim < v9.1.1551
=====================================================================================
Date: 15.07.2025
Severity: Low
CVE: CVE-2025-53906
CWE: Improper Limitation of a Pathname to a Restricted Directory ('Path Traversal') (CWE-22)

### Summary
A path traversal issue in Vim’s zip.vim plugin can allow overwriting of
arbitrary files when opening specially crafted zip archives.

### Description
Vim includes the zip.vim plugin, which enables viewing and editing of files
within zip archives.

An attacker can create a zip archive that contains member files with relative
paths (e.g., ../../somefile). If such an archive is opened in Vim, and the user
saves one of these malicious files, Vim may overwrite files outside the
intended working directory.

Exploitation requires several conditions:
- The user opens a specially crafted archive in Vim.
- The user selects and attempts to edit one of the files within the archive.
- Vim writes the file back to disk using :w!.

Only after all these steps are performed would Vim overwrite an existing file
on disk.

**Note**:
- Vim does display the full path to be written, so a careful user may notice
  suspicious behavior.
- Standard zip utility typically do not extract such paths and will warn or
  skip them. This issue only affects Vim's internal handling, not the zip tool
  itself.


### Proof of Concept
As a Proof of Concept, the following code crafts a malicious archive:
```python
import zipfile
import os
zip_path='evil.zip'
fname='file'
arcname='/etc/ax-pwn'
arcname='../../../../etc/ax-pwn'
with open(fname, 'w') as f:
	f.write(f"pwned\n")
with zipfile.ZipFile(zip_path, 'w') as zipf:
	zipf.write(fname, arcname)
print(f"Created {zip_path}" )
```
If the file contained in the evil.zip archive is edited through vim, typing
':w' to save it will create /etc/ax-pwn on the host filesystem (provided that
the user has sufficient permissions to write into the /etc directory.

### Impact
Impact is **low** because this exploit requires direct user interaction:

However successfully exploitation can lead to overwriting sensitive files or
placing executable code in privileged locations, depending on the permissions
of the process editing the archive.

The victim must edit such a file using Vim which will reveal the filename
and the file content, a careful user may suspect some strange things going on.
Successful exploitation could results in the ability to execute
arbitrary commands on the underlying operating system.

The Vim project would like to thank @ax for reporting this issue.

The issue has been fixed as of Vim patch v9.1.1551

[Commit](https://github.com/vim/vim/commit/586294a04179d855c3d1d4ee5ea83931963680b8)
[Github Advisory](https://github.com/vim/vim/security/advisories/GHSA-r2fw-9cw4-mj86)


Liebe Grüße
Christian
-- 
Wir suchen die Wahrheit, finden wollen wir sie aber nur dort, wo es
uns beliebt.
		-- Marie von Ebner-Eschenbach
