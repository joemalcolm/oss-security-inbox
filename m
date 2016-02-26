X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["696" "Friday" "26" "February" "2016" "12:28:23" "-0800" "Andy Lutomirski" "luto@kernel.org" "<CALCETrWner1C6Niczzx-mRay_YVb4fxS7xXLx66v1p+7tkU73g@mail.gmail.com>" "19" "[oss-security] Partial SMAP bypass on 64-bit Linux kernels" "^Date:" nil nil "2" "2016022620:28:23" "[oss-security] Partial SMAP bypass on 64-bit Linux kernels" (number mark "        luto@kernel. Feb 26   19/696   " thread-indent "\"[oss-security] Partial SMAP bypass on 64-bit Linux kernels\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26582 invoked by uid 550); 26 Feb 2016 20:29:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26499 invoked from network); 26 Feb 2016 20:28:56 -0000
X-Gm-Message-State: AD7BkJLM+3Fn8Bw6bnwOr0E9ZCWuV3M79jmaUO3SyCiBNgK4rDoUJgCc5vb+4l5Guk0S8PqEWmrxJJy/UNpnIjfr
X-Received: by 10.60.57.193 with SMTP id k1mr2739916oeq.66.1456518522655; Fri,
 26 Feb 2016 12:28:42 -0800 (PST)
MIME-Version: 1.0
X-Gmail-Original-Message-ID: <CALCETrWner1C6Niczzx-mRay_YVb4fxS7xXLx66v1p+7tkU73g@mail.gmail.com>
Message-ID: <CALCETrWner1C6Niczzx-mRay_YVb4fxS7xXLx66v1p+7tkU73g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
X-Virus-Scanned: ClamAV using ClamSMTP
Date: Fri, 26 Feb 2016 12:28:23 -0800
From: Andy Lutomirski <luto@kernel.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Partial SMAP bypass on 64-bit Linux kernels
To: oss security list <oss-security@lists.openwall.com>

Hi all-

Those of you using 64-bit Linux kernels on SMAP-capable systems (which
are still very rare in the server space) with ia32 emulation enabled
will want to backport:

https://git.kernel.org/cgit/linux/kernel/git/tip/tip.git/commit/?h=x86/urgent&id=3d44d51bd339766f0178f0cf2e8d048b4a4872aa

That patch fixes a bug that exposed a fairly large kernel code surface
to a straightforward SMAP bypass.

Credit to Brian Gerst who noticed the bug.

This bug is present in all kernels from 3.10 on AFAICT.  Kernels
before 3.10 don't support SMAP in the first place.  32-bit kernels are
not affected (but why would you be running a 32-bit kernel on
SMAP-capable hardware in the first place?).

--Andy
