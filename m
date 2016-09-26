X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1410" "Monday" "26" "September" "2016" "19:24:44" "+0200" "up201407890@alunos.dcc.fc.up.pt" "up201407890@alunos.dcc.fc.up.pt" "<20160926192444.505135sm4ivhte4g@webmail.alunos.dcc.fc.up.pt>" "39" "Re: [oss-security] CVE-2016-7545 -- SELinux sandbox escape" "^Date:" nil nil "9" "2016092617:24:44" "[oss-security] CVE-2016-7545 -- SELinux sandbox escape" (number mark "        up201407890@ Sep 26   39/1410  " thread-indent "\"Re: [oss-security] CVE-2016-7545 -- SELinux sandbox escape\"\n") "<20160926165409.ekk6dztdpttnnf67@jwilk.net>" ("<20160925134911.18991732ntfvg5a8@webmail.alunos.dcc.fc.up.pt>" "<20160926165409.ekk6dztdpttnnf67@jwilk.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28331 invoked by uid 550); 26 Sep 2016 17:28:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26568 invoked from network); 26 Sep 2016 17:25:23 -0000
Message-ID: <20160926192444.505135sm4ivhte4g@webmail.alunos.dcc.fc.up.pt>
References: <20160925134911.18991732ntfvg5a8@webmail.alunos.dcc.fc.up.pt>
	<20160926165409.ekk6dztdpttnnf67@jwilk.net>
In-Reply-To: <20160926165409.ekk6dztdpttnnf67@jwilk.net>
MIME-Version: 1.0
Content-Type: text/plain;
	charset=ISO-8859-1;
	DelSp="Yes";
	format="flowed"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
User-Agent: Internet Messaging Program (IMP) H3 (4.2)
X-Virus-Scanned: amavisd-new at alunos.dcc.fc.up.pt
Date: Mon, 26 Sep 2016 19:24:44 +0200
From: up201407890@alunos.dcc.fc.up.pt
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2016-7545 -- SELinux sandbox escape
To: oss-security@lists.openwall.com

Quoting "Jakub Wilk" <jwilk@jwilk.net>:

> * up201407890@alunos.dcc.fc.up.pt, 2016-09-25, 13:49:
>> When executing a program via the SELinux sandbox, the nonpriv=20=20
>> session can escape to the parent session by using the TIOCSTI ioctl=20=20
>> to push characters into the terminal's input buffer, allowing an=20=20
>> attacker to escape the sandbox.
>
> Apparently every single program that tries to run stuff with reduced=20=20
> privileges falls through this trap.
>
> Are there any use cases for TIOCSTI other than producing exploits?

I had this discussion with Stanislav Brabec, from SUSE, a while ago.

http://marc.info/?l=3Dutil-linux-ng&m=3D145702209921574&w=3D2

"Just for curiosity, I just ran grep for TIOCSTI ioctl() over all
openSUSE sources. I got about 60 matches.

I analyzed use of some cases:

util-linux: used in agetty in wait_for_term_input()
kbd: contrib utility sti equal to tiocsti utility.
irda: Used by handle_scancode() to emulate input.
tcsh: Used in ed mode and in pushback().
emacs: Used in stuff_char() (putting char to be read from terminal)
...

It seems that TIOCSTI is used for:
- Read character, and if it does not match, put it back.
- Wait for character, than put it back for processing.
- Implementing a simple line editing."

So yes.

----------------------------------------------------------------
This message was sent using IMP, the Internet Messaging Program.

