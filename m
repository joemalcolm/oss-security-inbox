Received: (qmail 23879 invoked by uid 550); 20 Apr 2023 08:34:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9498 invoked from network); 19 Apr 2023 23:03:45 -0000
X-Injected-Via-Gmane: http://gmane.org/
To: oss-security@lists.openwall.com
From: Tavis Ormandy <taviso@gmail.com>
Date: Wed, 19 Apr 2023 23:03:27 -0000 (UTC)
Message-ID: <u1prvv$11g8$1@ciao.gmane.io>
References: <SN6PR00MB044717AE269F0AABB8456C86A89BA@SN6PR00MB0447.namprd00.prod.outlook.com>
 <eff48e8f-cb22-bda0-772b-d9c9c5f16fbc@suse.de>
 <MW2PR00MB0444E2AA4D31DB0021B8AE2FA862A@MW2PR00MB0444.namprd00.prod.outlook.com>
User-Agent: slrn/pre1.0.4-5 (Linux)
Subject: Re: [oss-security] ncurses fixes upstream

On 2023-04-19, Jonathan Bar Or (JBO) wrote:
> Yes, now that the cat is out of the bag there's no point - you can find some POCs here (not every find is covered by a POC, FYI):
> https://drive.google.com/drive/u/0/folders/1XZiHbH7W7is8cwTu7DKrpwBTYuYfRZqE
>
> Note not all of them work on Linux - some are macOS focused too.
>
> As for Taviso's remark - obviously using "iprog", "rf" or "if" capabilities can be used maliciously if an attacker is able to affect root's terminfo files (directly or with env-vars), but those capabilities are only used by a bunch of programs (e.g. reset, tput and others). Normally putting an "iprog" and calling another ncurses using binary (e.g. top) won't run that program.
> To be honest, we focused on EoP scenarios, and specifically macOS. macOS is the most sensitive here, since "top" is a SUID binary and doesn't sanitize TERMINFO (or HOME, which can be used too). The bus we found are several memory corruption issues that happen during terminfo db parsing, as well as ncurses functions (e.g. tparm).
>
> JBO
>

Sure - but the question is whether it's an ncurses bug, or an Apple bug?

It seems like you think it's an ncurses bug, and privileged programs
should be allowed to use attacker controlled terminfo, so long as they
don't query certain dangerous caps like rf?

I'm not so sure, although maybe ncurses should only search system paths
when getauxval(AT_SECURE).. is set? Even then, I think the common
pattern of system("tput ...") would still be broken if you don't
sanitize the environment (that was the bug I exploited back in the
day!).

Honestly, I kinda think it's an Apple bug :)

(is their top binary open source?)

Tavis.

-- 
 _o)            $ lynx lock.cmpxchg8b.com
 /\\  _o)  _o)  $ finger taviso@sdf.org
_\_V _( ) _( )  @taviso

