X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["748" "Monday" "5" "October" "2015" "10:50:20" "+0200" "Jason A. Donenfeld" "zx2c4@gentoo.org" "<CAHmME9rmsM+FKstBTcEPCLF4Y8_yhrdhpmj65PbnwFOu7RPCRg@mail.gmail.com>" "24" "[oss-security] Re: Remotely triggerable buffer overflow in OpenSMTPD" nil nil nil "10" "2015100508:50:20" "[oss-security] Re: Remotely triggerable buffer overflow in OpenSMTPD" (number mark "        zx2c4@gentoo Oct  5   24/748   " thread-indent "\"[oss-security] Re: Remotely triggerable buffer overflow in OpenSMTPD\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30009 invoked by uid 550); 5 Oct 2015 08:50:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29934 invoked from network); 5 Oct 2015 08:50:36 -0000
MIME-Version: 1.0
X-Received: by 10.112.141.228 with SMTP id rr4mr8659423lbb.48.1444035020858;
 Mon, 05 Oct 2015 01:50:20 -0700 (PDT)
Message-ID: <CAHmME9rmsM+FKstBTcEPCLF4Y8_yhrdhpmj65PbnwFOu7RPCRg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Mon, 5 Oct 2015 10:50:20 +0200
From: "Jason A. Donenfeld" <zx2c4@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Remotely triggerable buffer overflow in OpenSMTPD
To: misc <misc@opensmtpd.org>, oss-security <oss-security@lists.openwall.com>, 
	gentoo-security@gentoo.org

Hi folks,

On Mon, Oct 5, 2015 at 12:38 AM, Jason A. Donenfeld <Jason@zx2c4.com> wrote:
> impact etc. There's a remotely triggerable buffer overflow in
> OpenBSD's OpenSMTPD -- the latest version, 5.7.2 -- reachable by
> sending messages with huge header lines.

Fixed downstream in Gentoo with mail-mta/opensmtpd-5.7.2_p1-r1:

https://gitweb.gentoo.org/repo/gentoo.git/commit/?id=3f8e2fe24f3ff174d8515b82607e951e054f68f6

Users are encouraged to update immediately. It's worth noting that
this vulnerability was being triggered "in the wild" - hence the
rushed disclosure etc.

Regards,
Jason

-- 
Jason A. Donenfeld
Gentoo Linux Security & Infrastructure
zx2c4@gentoo.org
www.zx2c4.com
zx2c4.com/keys/A28BEDE08F1744E16037514806C4536755758000.asc
