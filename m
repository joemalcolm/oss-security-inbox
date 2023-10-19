Received: (qmail 26520 invoked by uid 550); 19 Oct 2023 00:42:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26497 invoked from network); 19 Oct 2023 00:42:13 -0000
Date: Thu, 19 Oct 2023 02:42:01 +0200 (CEST)
From: Jan Engelhardt <jengelh@inai.de>
To: oss-security@lists.openwall.com
In-Reply-To: <02db51d7-974a-53cf-d018-8982bed87da3@tnetconsulting.net>
Message-ID: <q8994647-p2o4-241s-5qso-74r84r19399r@vanv.qr>
References: <e5dc2cc159fa7e7f287e10482366011e.f0e92af0@rotted.prefixed> <bb8d7948-912c-0c96-6a7e-2f05a4cabfd0@tnetconsulting.net> <693e917eaca0983293396d084c7cf2f44525a7a5.camel@orlitzky.com> <02db51d7-974a-53cf-d018-8982bed87da3@tnetconsulting.net>
User-Agent: Alpine 2.26 (LSU 649 2022-06-02)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [oss-security] with firefox on X11, any page can pastejack you
 anytime


On Thursday 2023-10-19 00:31, Grant Taylor wrote:
>
> Aside:  The thread in question brought up some interesting idea, including
> altering how things that start with unsafe characters -- though I wonder why
> not all files -- with `./` so the `-bob` file becomes `./-bob` when expanded.
> --  I wondered about prefixing globing with `--` which is the de-facto don't
> process anything after this as a command line flag.

Humans have a habit of specifying the most important thing first, not
only in natural language, but also commands. This reflects in
command, e.g. `ls -l *z --color=never`. Forgot something? `!ls
--human-readable`, there, more stuff appended to the end. Nobody
likes to do cursor movement, and nobody likes retyping the command
from the start to meet the POSIX pedantism that requires all options
before the first non-option (operand).

For this reason, POSIXLY_CORRECT=1 is unpopluar, and so would,
unfortunately, be your suggestion to stop option processing at a
wildcard with an implicit "--" (which would become explicit "--" for
the program's argv).

The ./ suggestion has some merit, though this leads to programs
acting differently, e.g. `tar --strip=N` .

