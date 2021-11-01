X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1179" "Monday" "1" "November" "2021" "21:51:38" "+0100" "Jan Engelhardt" "jengelh@inai.de" nil "22" "Re: [oss-security] Trojan Source Attacks" nil nil nil "11" nil nil (number mark "U       jengelh@inai Nov  1   22/1179  " thread-indent "\"Re: [oss-security] Trojan Source Attacks\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Trojan Source Attacks" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32245 invoked by uid 550); 1 Nov 2021 21:33:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9606 invoked from network); 1 Nov 2021 20:51:49 -0000
Date: Mon, 1 Nov 2021 21:51:38 +0100 (CET)
From: Jan Engelhardt <jengelh@inai.de>
To: oss-security@lists.openwall.com
In-Reply-To: <c2d12374-0ed6-d6d4-60ea-799934b6f173@cl.cam.ac.uk>
Message-ID: <3n67pqq3-9ro6-p138-npo0-n4314s77638n@vanv.qr>
References: <c2d12374-0ed6-d6d4-60ea-799934b6f173@cl.cam.ac.uk>
User-Agent: Alpine 2.25 (LSU 592 2021-09-18)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [oss-security] Trojan Source Attacks


On Monday 2021-11-01 18:27, Nicholas Boucher wrote:
>
>We have identified an issue affecting all compilers and interpreters that support Unicode.
>[...]
>The attached paper describes an attack paradigm -- which we believe to be novel -- discovered by security researchers at the
>University of Cambridge.

Not so novel. At one time, this picture made the rounds
(https://twitter.com/acronis/status/1019152990022787072 - the pic is likely
older than this 2018 tweet), and anyone who knew that Unicode had zero-width
characters already made the connection.

And I can imagine an attacker would rather try to inject Evil Unicode-Based
Code through a preprocessor of sorts (e.g. a bison .y file), because the output
of such generators is something few people would ever want to read in detail.

Even without Unicode, people had been using somehwat-invisible control
characters for codegolfing; one instance that I recall is the "RC4 in two lines
of Perl-with-no-modules", anno 2003, which uses a variable name simply named
<U+0024><U+0003> aka $^C aka ${"\x03"}. U+0003 would not be rendered by most
X11 terminals outside an editor that knew to recognize the classic control chars.
