X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["717" "Monday" "14" "December" "2015" "12:13:21" "+0100" "Jason A. Donenfeld" "Jason@zx2c4.com" "<CAHmME9r6jQX-Zwaub6J=C2WavsFiGMR0GR19aWppUZkYztcYfw@mail.gmail.com>" "22" "[oss-security] CVE Request: Local Privilege Escalation in QEMU virtfs-proxy-helper" nil nil nil "12" "2015121411:13:21" "[oss-security] CVE Request: Local Privilege Escalation in QEMU virtfs-proxy-helper" (number mark "U       Jason@zx2c4. Dec 14   22/717   " thread-indent "\"[oss-security] CVE Request: Local Privilege Escalation in QEMU virtfs-proxy-helper\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5916 invoked by uid 550); 14 Dec 2015 11:13:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5879 invoked from network); 14 Dec 2015 11:13:36 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
	:date:message-id:subject:from:to:cc:content-type; s=mail; bh=voy
	cuaaCbkbune+D4FUc6/dQ288=; b=IOxwmrCV3oA78RstSbYnAdZn0AVbjRQTrDI
	OxV42IBgnShUieHJFL7ad+Wo9kpDaGOWMkpzGAnhWvafU1vEZgds+ug1QTDQCdg7
	ejh18my7CluEtHVUZ9QTq2Mklgx2Xc4a40bJNgxhseWXVrbSCSyuYdBZRDJ8DP9r
	ja4b2+nQpb2yp+Y7e5qVfmkr3eiK92N/Nr6IBeIsyueOpwCOCzfooySyjJZZ1uyI
	nxVrmqIEh/3dDuhylZQLK0K6XQI11h++xqYPXKweSnLendgzjIahaVbl/eRc/Ndm
	Y3Ecx1Q7YwvMdQk3pxaI4RCkmiv3GVYiC6xvOGr+Hqyu9rlMchQ==
MIME-Version: 1.0
X-Received: by 10.28.226.86 with SMTP id z83mr25179252wmg.77.1450091602008;
 Mon, 14 Dec 2015 03:13:22 -0800 (PST)
Date: Mon, 14 Dec 2015 12:13:21 +0100
X-Gmail-Original-Message-ID: <CAHmME9r6jQX-Zwaub6J=C2WavsFiGMR0GR19aWppUZkYztcYfw@mail.gmail.com>
Message-ID: <CAHmME9r6jQX-Zwaub6J=C2WavsFiGMR0GR19aWppUZkYztcYfw@mail.gmail.com>
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
https://gitweb.gentoo.org/repo/gentoo.git/commit/?id=183dd7394703b49c7af441a9c4227b4b91453510The
commit message contains a TOCTOU PoC.

Can we get a CVE for this blunder?

Other distributions - you might want to double check that you're not
making a similar mistake.

I have no idea if QEMU upstream recommends suid/fscaps in some
documentation, or something similar, in which case that'll need to be
changed.

Thanks,
Jason
