X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1726" "Monday" "25" "November" "2019" "08:05:12" "-0800" "Andy Lutomirski" "luto@kernel.org" nil "37" nil "^Date:" nil nil "11" nil nil (number mark "        luto@kernel. Nov 25   37/1726  " thread-indent "\"[oss-security] Lots of bugs in 32-bit x86 Linux entry code\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Lots of bugs in 32-bit x86 Linux entry code" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17802 invoked by uid 550); 25 Nov 2019 16:05:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17765 invoked from network); 25 Nov 2019 16:05:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1574697925;
	bh=fofULenR6ToLnxqsWvGoUkvzViLKMixcIZpJIC5WAsA=;
	h=From:Date:Subject:To:From;
	b=GeLtm6lQp9ft3d/RX7crY9tuDrejDupfzC9poEib0b3NezbE5ue0eRkH/RWx4xKgU
	 B5qRzJyjP3dZ1/K3tchYCk+1c19ZXwucUblIMYLe2IVTIXZKkLczot9+zIDRuuPk8W
	 I8dnr6qmk6+vGbQ5+QDsrP0+gDXtXTHmyYLon+kQ=
X-Gm-Message-State: APjAAAXWIEHtYZTnV96b26xR1lzXsbXjzNjmCkXDhD0efLLTJVAtzmcu
	b5oILhoZSY0O+AkS3kadewplU00wUobrwfERK6z47w==
X-Google-Smtp-Source: APXvYqxHVH4m8zuUW9NyqD88QwtXXMPNAXG9d7fgS1MshF2Tn2yuyS5X9r391f3JowlUS95TAuIcdeKr3X6kn27HfnU=
X-Received: by 2002:a5d:4acb:: with SMTP id y11mr11658263wrs.106.1574697923641;
 Mon, 25 Nov 2019 08:05:23 -0800 (PST)
MIME-Version: 1.0
X-Gmail-Original-Message-ID: <CALCETrW1z0gCLFJz-1Jwj_wcT3+axXkP_wOCxY8JkbSLzV80GA@mail.gmail.com>
Message-ID: <CALCETrW1z0gCLFJz-1Jwj_wcT3+axXkP_wOCxY8JkbSLzV80GA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Date: Mon, 25 Nov 2019 08:05:12 -0800
From: Andy Lutomirski <luto@kernel.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Lots of bugs in 32-bit x86 Linux entry code
To: oss security list <oss-security@lists.openwall.com>

It turns out that there are essentially no upstream development
resources dedicated to x86_32 Linux. Perhaps unsurprisingly, it was
badly broken.

I=E2=80=99m not even going to try to enumerate individual bugs here. I=E2=
=80=99m
guessing that at least all x86_32 kernels that support PTI are
vulnerable to privilege escalation via a series of ESPFIX bugs, but
the missing segment override issue could go back years.  Getting a
nice printout on a double fault instead of a reboot, hang or memory
corruption is dubious with PTI, and it=E2=80=99s also busted if you have th=
is
newfangled thing called =E2=80=9CSMP=E2=80=9D enabled.

The relevant tests to run are tools/testing/selftests/x86/sigreturn_32
(from an updated kernel) and the same test with perf record -e cycles
-F 10000.

The bugs are hopefully mostly fixed in a pull request here:

https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git/commit/?h=3Dx86=
-urgent-for-linus&id=3D4a13b0e3e10996b9aa0b45a764ecfe49f6fcd360

I strongly suspect that there is at least one bug left.

You can mitigate these issues by upgrading to an x86_64 kernel. You
can probably get a decent degree of mitigation by setting
CONFIG_VM86=3Dn and CONFIG_X86_16BIT=3Dn.  (CONFIG_X86_16BIT should be
fine on a 64-bit kernel. Long live Wine.)

To those of you who actually support x86_32: please either consider
stopping supporting it or finding and paying someone to give it
serious upstream attention.  We need real CI resources and we need
developers to test things for real, fix what=E2=80=99s broken, and generally
keep it up to date. And the developers in question should have an
appropriate degree of nostalgic adoration of segments, gates, and
other delights from the i386 era.
