X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["587" "Monday" "17" "October" "2016" "09:30:49" "+0200" "Agostino Sarubbo" "ago@gentoo.org" "<1887043.2OYlfbTScZ@blackgate>" "21" "Re: [oss-security] Re: Fuzzing jasper" "^Cc:" nil nil "10" "2016101707:30:49" "[oss-security] Re: Fuzzing jasper" (number mark "        ago@gentoo.o Oct 17   21/587   " thread-indent "\"Re: [oss-security] Re: Fuzzing jasper\"\n") "<20161017010245.267aae32@pc1>" ("<1528713.C8CqGc87r5@arcadia>" "<CAHapaJ1yTNVH+umS9U3SeW0jK73WY0H06_k0eJmJ3pnEVO9D+Q@mail.gmail.com>" "<20161017010245.267aae32@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9501 invoked by uid 550); 17 Oct 2016 07:31:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9477 invoked from network); 17 Oct 2016 07:31:07 -0000
Message-ID: <1887043.2OYlfbTScZ@blackgate>
User-Agent: KMail/4.14.10 (Linux/4.4.21-gentoo; KDE/4.14.24; x86_64; ; )
In-Reply-To: <20161017010245.267aae32@pc1>
References: <1528713.C8CqGc87r5@arcadia> <CAHapaJ1yTNVH+umS9U3SeW0jK73WY0H06_k0eJmJ3pnEVO9D+Q@mail.gmail.com> <20161017010245.267aae32@pc1>
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="nextPart1631645.d6MQB2r49G"
Content-Transfer-Encoding: 7Bit
Cc: Graham Christensen <graham@grahamc.com>, oss-security@lists.openwall.com, cve-assign@mitre.org
Date: Mon, 17 Oct 2016 09:30:49 +0200
From: Agostino Sarubbo <ago@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Fuzzing jasper
To: Hanno =?ISO-8859-1?Q?B=F6ck?= <hanno@hboeck.de>

--nextPart1631645.d6MQB2r49G
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On Monday 17 October 2016 01:02:45 Hanno B=C3=B6ck wrote:
> I tested the code again with afl (after the fixes for the stuff
> Agostino reported) and it immediately found multiple issues:

Great job. I also was waiting for the next release to re-fuzz

> https://github.com/mdadams/jasper/issues/31
> double free on jpeg parsing

This is a duplicate of the double-free I reported, but upstream=20
said that he can't reproduce.

--
Agostino

--nextPart1631645.d6MQB2r49G--

