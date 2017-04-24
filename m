X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["203" "Monday" "24" "April" "2017" "20:00:10" "+0200" "Jason A. Donenfeld" "Jason@zx2c4.com" "<CAHmME9r_F44PvenZbTK4LyqTucMpV+o75t3FH8CcWF8TyQuhgQ@mail.gmail.com>" "9" "[oss-security] CVE request: remote heap overflow in linux networking stack" "^Date:" nil nil "4" "2017042418:00:10" "[oss-security] CVE request: remote heap overflow in linux networking stack" (number mark "        Jason@zx2c4. Apr 24    9/203   " thread-indent "\"[oss-security] CVE request: remote heap overflow in linux networking stack\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3996 invoked by uid 550); 24 Apr 2017 18:00:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3774 invoked from network); 24 Apr 2017 18:00:25 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
	:from:date:message-id:subject:to:content-type; s=mail; bh=EU4CAE
	CEIz2tVRyVmTe+fnUPuao=; b=s1/cPDryG/fKB1pNKOI10In/lyHluJkIZj8wL/
	YIeA0PJ87yqwjN7dkxME1BYXWetfZcpGbglrt+hNPZIRKy+q4pE2NbSxPATZOW+j
	tPToZXRzO+q/cqqhjf9/CulK/Zi21ICB81SGMRJmXk+aOWhI8aWNdQkLYgftGVpN
	ZuJSzLv7crt4i7wlAeigPlyfne9aNXuXLYpLWP9kvDqzftRGO+OfWwaJXupm4kfl
	ZJR1nzmwoYIXZeQDxL20qeBgkCo0Z4s/xqwd6FdEqsRrL6sk7ujrSX9VdgrStOVx
	gmhwRc8qvnclozc/2Q2aU0gxHYVWOqUDlSaQXyUyWBoJJnbQ==
X-Gm-Message-State: AN3rC/4piFriahdORYquumhxzL+gciIEefHprIEsjsEeISDh6kErHl3e
	pboyf7WuRLfv7jFA6gFJoSSMLxNlRA==
X-Received: by 10.202.64.213 with SMTP id n204mr12501622oia.78.1493056810515;
 Mon, 24 Apr 2017 11:00:10 -0700 (PDT)
MIME-Version: 1.0
X-Gmail-Original-Message-ID: <CAHmME9r_F44PvenZbTK4LyqTucMpV+o75t3FH8CcWF8TyQuhgQ@mail.gmail.com>
Message-ID: <CAHmME9r_F44PvenZbTK4LyqTucMpV+o75t3FH8CcWF8TyQuhgQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Mon, 24 Apr 2017 20:00:10 +0200
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: remote heap overflow in linux networking stack
To: oss-security <oss-security@lists.openwall.com>

Hello,

Requesting a CVE for [1], a heap overflow I found in Linux.

Thanks,
Jason


[1] https://git.kernel.org/pub/scm/linux/kernel/git/davem/net.git/commit/?id=4d6fa57b4dab0d77f4d8e9d9c73d1e63f6fe8fee
