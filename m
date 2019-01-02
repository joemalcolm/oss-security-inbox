X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1194" "Wednesday" "2" "January" "2019" "11:21:27" "+0100" "Niels =?utf-8?B?TcO2bGxlcg==?=" "nisse@lysator.liu.se" "<nn7efnnyvs.fsf@armitage.lysator.liu.se>" "33" "Re: [oss-security] Disabling ptrace" "^Date:" nil nil "1" "2019010210:21:27" "[oss-security] Disabling ptrace" (number mark "        nisse@lysato Jan  2   33/1194  " thread-indent "\"Re: [oss-security] Disabling ptrace\"\n") "<20190102100947.qoudp5vv24mgc6i3@jwilk.net>" ("<CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>" "<20181231191642.GB7238@zira.vinc17.org>" "<CAH8yC8=-Lt0_p2sTnqhJOWjapJ84LNR=8zJFF5oWs=-4xgxigg@mail.gmail.com>" "<3F256A9C-EBE9-420C-B8F6-32AD39A664C5@gmail.com>" "<nn1s5wpqic.fsf_-_@armitage.lysator.liu.se>" "<20190102100947.qoudp5vv24mgc6i3@jwilk.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25858 invoked by uid 550); 2 Jan 2019 11:11:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5338 invoked from network); 2 Jan 2019 10:21:40 -0000
References: <CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>
	<20181231191642.GB7238@zira.vinc17.org>
	<CAH8yC8=-Lt0_p2sTnqhJOWjapJ84LNR=8zJFF5oWs=-4xgxigg@mail.gmail.com>
	<3F256A9C-EBE9-420C-B8F6-32AD39A664C5@gmail.com>
	<nn1s5wpqic.fsf_-_@armitage.lysator.liu.se>
	<20190102100947.qoudp5vv24mgc6i3@jwilk.net>
In-Reply-To: <20190102100947.qoudp5vv24mgc6i3@jwilk.net> (Jakub Wilk's message
	of "Wed, 2 Jan 2019 11:09:47 +0100")
Message-ID: <nn7efnnyvs.fsf@armitage.lysator.liu.se>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (berkeley-unix)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Virus-Scanned: ClamAV using ClamSMTP
Date: Wed, 02 Jan 2019 11:21:27 +0100
From: nisse@lysator.liu.se (Niels =?utf-8?Q?M=C3=B6ller?=)
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Disabling ptrace
To: oss-security@lists.openwall.com

Jakub Wilk <jwilk@jwilk.net> writes:

> * Niels M=C3=B6ller <nisse@lysator.liu.se>, 2019-01-01, 12:27:
>>Matthew Fernandez <matthew.fernandez@gmail.com> writes:
>>> E.g. you can attach to the victim process with gdb/ptrace and
>>> simply read its memory, if the sysadmin has not blocked this with
>>> Yama or similar.
>>
>> I think one can disable this in the process itself, using prctl with
>> PR_SET_DUMPABLE. But documentation is a bit unclear and doesn't
>> exlicitly mention effect on ptrace
>
> The prctl(2) man page reads: =E2=80=9CProcesses that are not dumpable can=
 not
> be attached via ptrace(2) PTRACE_ATTACH; see ptrace(2) for further
> details.=E2=80=9D

Thanks, I somehow missed that. So prctl should be the right tool, then.

>>(and other debugging interfaces).
>
> What other interfaces do you have in mind?

I had the impression that ptrace was old-fashined, and that current gdb
used other interfaces via /proc (with permissions also affected by
prctl). But I may be mistaken; I've never looked into those details.

Regards,
/Niels

--=20
Niels M=C3=B6ller. PGP-encrypted email is preferred. Keyid 368C6677.
Internet email is subject to wholesale government surveillance.
