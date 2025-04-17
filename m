Received: (qmail 17509 invoked by uid 550); 17 Apr 2025 15:42:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16369 invoked from network); 17 Apr 2025 12:35:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=aevum.de; s=mail;
	t=1744893290; bh=lKgUFcchMg4xfYlxyzm5BWWO1FL7WjyX0feZTfjHMes=;
	h=From:Subject:Date:To:From;
	b=EDq3f80UhEsPP1VXQFsZq506zqttnb2euzjEslLGyVrzEQhxtLW/v6EydyM/rQ3aV
	 NpgGamRPKFZBv7MzNxi2/jAtc+FZ+5ZaCJ5T5y2kwCMr3xq0d5Lyh8f7bjE0tg+Q6C
	 hu9TGeMBoFGTrfj1fMPrgyB+T1wFvefu/QNfJ9dM=
From: Nick Wellnhofer <wellnhofer@aevum.de>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.500.181.1.5\))
Message-Id: <8CED60C5-6E49-42C3-A517-33E02F74F7DE@aevum.de>
Date: Thu, 17 Apr 2025 14:34:40 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3826.500.181.1.5)
Subject: [oss-security] Multiple vulnerabilities in libxml2

These issues are fixed in 2.14.2 and 2.13.8. Older branches won't receive o=
fficial updates.

[CVE-2025-32414] Buffer overflow when parsing text streams with Python API
https://gitlab.gnome.org/GNOME/libxml2/-/issues/889

The Python Package Index contains an outdated and unsanctioned upload based=
 on libxml2 2.9.5 which is vulnerable. I tried to inform the PyPI maintaine=
rs but I'm not sure my message made it through.

[CVE-2025-32415] Heap-based Buffer Overflow in xmlSchemaIDCFillNodeTables
https://gitlab.gnome.org/GNOME/libxml2/-/issues/890

Nick

