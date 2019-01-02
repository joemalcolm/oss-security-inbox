X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["694" "Wednesday" "2" "January" "2019" "11:09:47" "+0100" "Jakub Wilk" "jwilk@jwilk.net" "<20190102100947.qoudp5vv24mgc6i3@jwilk.net>" "20" "Re: [oss-security] Disabling ptrace" "^Cc:" nil nil "1" "2019010210:09:47" "[oss-security] Disabling ptrace" (number mark "        jwilk@jwilk. Jan  2   20/694   " thread-indent "\"Re: [oss-security] Disabling ptrace\"\n") "<nn1s5wpqic.fsf_-_@armitage.lysator.liu.se>" ("<CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>" "<20181231191642.GB7238@zira.vinc17.org>" "<CAH8yC8=-Lt0_p2sTnqhJOWjapJ84LNR=8zJFF5oWs=-4xgxigg@mail.gmail.com>" "<3F256A9C-EBE9-420C-B8F6-32AD39A664C5@gmail.com>" "<nn1s5wpqic.fsf_-_@armitage.lysator.liu.se>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16366 invoked by uid 550); 2 Jan 2019 10:10:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16348 invoked from network); 2 Jan 2019 10:10:03 -0000
Message-ID: <20190102100947.qoudp5vv24mgc6i3@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com,
	Niels =?utf-8?Q?M=C3=B6ller?= <nisse@lysator.liu.se>
References: <CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>
 <20181231191642.GB7238@zira.vinc17.org>
 <CAH8yC8=-Lt0_p2sTnqhJOWjapJ84LNR=8zJFF5oWs=-4xgxigg@mail.gmail.com>
 <3F256A9C-EBE9-420C-B8F6-32AD39A664C5@gmail.com>
 <nn1s5wpqic.fsf_-_@armitage.lysator.liu.se>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <nn1s5wpqic.fsf_-_@armitage.lysator.liu.se>
User-Agent: NeoMutt/20180716
X-Ovh-Tracer-Id: 10227393282188367782
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedtledrudeigdduudcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecu
Cc: Niels =?utf-8?Q?M=C3=B6ller?= <nisse@lysator.liu.se>
Date: Wed, 2 Jan 2019 11:09:47 +0100
From: Jakub Wilk <jwilk@jwilk.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Disabling ptrace
To: oss-security@lists.openwall.com

* Niels Möller <nisse@lysator.liu.se>, 2019-01-01, 12:27:
>Matthew Fernandez <matthew.fernandez@gmail.com> writes:
>>E.g. you can attach to the victim process with gdb/ptrace and simply 
>>read its memory, if the sysadmin has not blocked this with Yama or 
>>similar.
>
>I think one can disable this in the process itself, using prctl with 
>PR_SET_DUMPABLE. But documentation is a bit unclear and doesn't 
>exlicitly mention effect on ptrace

The prctl(2) man page reads: “Processes that are not dumpable can not be 
attached via ptrace(2) PTRACE_ATTACH; see ptrace(2) for further 
details.”

>(and other debugging interfaces).

What other interfaces do you have in mind?

-- 
Jakub Wilk
