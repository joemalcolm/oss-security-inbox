X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["720" "Monday" "14" "December" "2015" "12:14:39" "+0100" "Jason A. Donenfeld" "Jason@zx2c4.com" "<CAHmME9rjqikpOLkw50Ug0a2gYNkRbB_z9gY7LXmvnjQ=0h2edw@mail.gmail.com>" "24" "[oss-security] CVE Request: Local Privilege Escalation in QEMU virtfs-proxy-helper" nil nil nil "12" "2015121411:14:39" "[oss-security] CVE Request: Local Privilege Escalation in QEMU virtfs-proxy-helper" (number mark "U       Jason@zx2c4. Dec 14   24/720   " thread-indent "\"[oss-security] CVE Request: Local Privilege Escalation in QEMU virtfs-proxy-helper\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15455 invoked by uid 550); 14 Dec 2015 11:14:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15430 invoked from network); 14 Dec 2015 11:14:53 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
	:date:message-id:subject:from:to:cc:content-type; s=mail; bh=sSV
	0eh3JINHRQBG6DaEjj3/E3Iw=; b=dHL2Hdxo/K9uoSyFH+d6/pETqAECOhHv/yx
	f4DblMiF64r/OG259Yw3f2W3AMwuS9d6esZ13hzbO/5Ecr5wxCVslLdacIURTNv0
	hwFSFadShfnkUTkmL4Ppb3tqg5rqoWjs139sAHvWmVIGtNXlxAiZRIE9gyRQCDbX
	hoguBwIfmWy79VCRc+dpcnQB9GP8BkMQbxADVyQkR0SyUXy/HUDo07ROqnpAQAn3
	zo1a63qz8K/eg4C5lS1cHImYMLolr0imf6AfOt/ThTTfK8B9DBzN8IqO6aJzv73D
	88tFQzsRg8brh2FavyG9PncP8HMSUI9OKI5LGuAvKCTh1bp7Zbw==
MIME-Version: 1.0
X-Received: by 10.28.85.129 with SMTP id j123mr25194176wmb.77.1450091679892;
 Mon, 14 Dec 2015 03:14:39 -0800 (PST)
Date: Mon, 14 Dec 2015 12:14:39 +0100
X-Gmail-Original-Message-ID: <CAHmME9rjqikpOLkw50Ug0a2gYNkRbB_z9gY7LXmvnjQ=0h2edw@mail.gmail.com>
Message-ID: <CAHmME9rjqikpOLkw50Ug0a2gYNkRbB_z9gY7LXmvnjQ=0h2edw@mail.gmail.com>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: oss-security <oss-security@lists.openwall.com>
Cc: Gentoo Security <security@gentoo.org>
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] CVE Request: Local Privilege Escalation in QEMU virtfs-proxy-helper

Hi folks,

Some distros make qemu's virtfs-proxy-helper binary either SUID or
give it filesystem capabilities such as cap_chown. This is completely
insane for a wide variety of reasons; there are quite a few ways of
abusing this to elevate privileges.

This commit fixes the issue in Gentoo:

https://gitweb.gentoo.org/repo/gentoo.git/commit/?id=183dd7394703b49c7af441a9c4227b4b91453510

The commit message contains a TOCTOU PoC.

Can we get a CVE for this blunder?

Other distributions - you might want to double check that you're not
making a similar mistake.

I have no idea if QEMU upstream recommends suid/fscaps in some
documentation, or something similar, in which case that'll need to be
changed.

Thanks,
Jason
