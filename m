X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/14/4
Message-ID: <CAGFbY1cM+rz70hz5FVcOzmO4-JrPx=_pRDsJW9rowA=4skZHiw@mail.gmail.com>
Date: Fri, 14 Aug 2026 17:08:33 +0200
From: Souiri Anas <anassouiri07@...il.com>
To: oss-security@...ts.openwall.com
Subject: croc: Arbitrary File Deletion via received filename, chainable to RCE (fixed in 11.0.3)
Content-Type: text/plain; charset=utf-8

Hello,

This reports an arbitrary file deletion vulnerability in croc, the
end-to-end encrypted file transfer tool [1], which can be chained to
remote code execution on the receiving host. The issue is fixed in
croc 11.0.3 [5].


Affected / fixed
================

Product:  croc (github.com/schollz/croc, Go) [1]
Affected: >= 10.0.13, <= 11.0.2
Fixed in: 11.0.3 (commit c0d51f0 [4], PR #1232 [3])
Type:     CWE-73 (External Control of File Name or Path),
              CWE-22 (Path Traversal), chainable to CWE-94 (code execution)
CVSS 3.1: AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:H/A:H (8.1, High)


Description
===========

croc keeps an internal list of temporary files to delete on exit. The
list is a fixed, relative filename, "croc-marked-files.txt", resolved
against the current working directory. On exit, RemoveMarkedFiles()
(src/utils/utils.go) reads that file and calls os.Remove() on every
line, with no validation and no confinement to the working directory.
Absolute paths and "../" traversal are therefore honored.

RemoveMarkedFiles() runs both on normal completion (main.go:45) and on
SIGINT/Ctrl-C (main.go:51) after a receive.

The receiver writes incoming top-level files into the current working
directory by default (FolderRemote = "./"), and the basename
"croc-marked-files.txt" passes utils.ValidFileName (it is an ordinary
basename with no separators). As a result, a malicious sender who
sends a file *named* croc-marked-files.txt, whose *contents* are a
newline-separated list of victim paths, causes those paths to be
deleted on the receiver when croc exits. The deleted paths are taken
verbatim from attacker-controlled file content. Full details and
proof-of-concept are available in the write-up [2].


Proof of concept
================

On UNIX the code phrase is passed via CROC_SECRET.

Sender crafts and sends the payload:

ATTACKER (sender):
''''
  mkdir -p /tmp/attacker && cd /tmp/attacker
  printf 'secret.txt\n../victim-sibling.txt\n/tmp/absolute-target.txt\n'
> croc-marked-files.txt
  croc send croc-marked-files.txt
''''

VICTIM ( receiver) :
Receiver receives into a directory containing valuable files:
''''
  mkdir -p /tmp/victim && cd /tmp/victim
  echo A > secret.txt
  echo B > /tmp/victim-sibling.txt
  echo C > /tmp/absolute-target.txt
  CROC_SECRET=<SECRET> croc --yes
''''

On completion (or on Ctrl-C after the file arrives), the CWD-relative,
the "../" and the absolute-path targets are all deleted.

Impact and escalation to RCE
============================

A peer you are *receiving from* can delete arbitrary files and empty
directories owned by the receiving user (dotfiles, documents, project files).
With --yes this happens silently. This exceeds the expected
"receive a file into this folder" trust boundary.

The same primitive (sender controls basename, including dotfiles, and
content of files written into the receive directory) escalates to code
execution when the receiver runs croc from their home directory:

  1. Transfer 1 sends croc-marked-files.txt whose contents list the
     receiver's existing shell init file (e.g. ~/.bashrc). On exit,
     RemoveMarkedFiles() deletes it.

  2. Transfer 2 sends a file named .bashrc. Because the original was
     deleted, the overwrite prompt does not fire.

  3. The attacker's ~/.bashrc runs as the victim on the next shell or
     login (for a server, on the next SSH login).

Note: received writes are confined to the working-directory subtree,
so the receiver must run croc from $HOME for its .bashrc to be
replaced; the *delete* primitive is not confined and accepts absolute
and "../" paths. With --yes both transfers are accepted silently;
otherwise the filenames appear in the accept prompt. The full chain,
with screenshots, is documented in the write-up [2].


Timeline
========

  2026-08-10: Reported to the maintainer via a GitHub Security
              Advisory and by email.
  2026-08-10: Fix merged the same day in PR #1232 [3]. No security
              advisory was published, no security note was added to
              the commit, and no CVE was assigned.

References
==========

  [1] croc repository:
      https://github.com/schollz/croc
  [2] Write-up and proof-of-concept:
      https://gist.github.com/elohim666/4de37dea18cd453e414de0d451ca14a5
  [3] Fix (PR #1232):
      https://github.com/schollz/croc/pull/1232
  [4] Fix commit:
      https://github.com/schollz/croc/commit/c0d51f095e3bf91c94208c4db8101c4e60219b03
  [5] Fixed release (11.0.3):
      https://github.com/schollz/croc/releases/tag/v11.0.3


Credit
======

Discovered and reported by Anas Souiri (GitHub: elohim666).

Regards,
Anas Souiri
