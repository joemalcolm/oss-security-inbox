Received: (qmail 32678 invoked by uid 550); 18 Aug 2025 00:29:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23991 invoked from network); 18 Aug 2025 00:17:41 -0000
Date: Mon, 18 Aug 2025 02:17:32 +0200
From: Vincent Lefevre <vincent@vinc17.net>
To: Erik Auerswald <auerswal@unix-ag.uni-kl.de>
Cc: oss-security@lists.openwall.com
Message-ID: <20250818001732.GK607521@qaa.vinc17.org>
Mail-Followup-To: Erik Auerswald <auerswal@unix-ag.uni-kl.de>,
	oss-security@lists.openwall.com
References: <20250813203857.GA11693@unix-ag.uni-kl.de>
 <87a53zyugg.fsf@gmail.com>
 <20250817010958.GA607521@qaa.vinc17.org>
 <20250817140937.GA16226@unix-ag.uni-kl.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250817140937.GA16226@unix-ag.uni-kl.de>
X-Mailer-Info: https://www.vinc17.net/mutt/
User-Agent: Mutt/2.2.13+86 (bb2064ae) vl-169878 (2025-02-08)
Subject: Re: [oss-security] xterm terminal crash due to malicious character
 sequences in file name

Hi Erik,

On 2025-08-17 16:09:37 +0200, Erik Auerswald wrote:
> On Sun, Aug 17, 2025 at 03:09:58AM +0200, Vincent Lefevre wrote:
> > I see this more than a feature, at least in the case the output
> > is done to a terminal. As a general rule, programs are expected
> > to sanitize output data in such as a case.
> 
> I'd expect most programs to not change the filename printed in their
> output.  POSIX does not even expect "ls" to sanitize its output without
> "-q", but it does allow it[0].

Probably because of historical behavior. But nowadays, one should be
stricter concerning security.

> Two more example programs that do not sanitize filenames in their
> output would be "file", at least version "5.41",

file 5.46 sanitizes filenames:

$ file --version
file-5.46
magic file from /etc/magic:/usr/share/misc/magic
$ file file*
file\033[H\033[c\012\010: empty

> and "dash", at least the version[1] included in Ubuntu GNU/Linux
> 22.04.5 LTS.

Ditto for dash 0.5.12-12 (with "chmod 0 file*" then "dash file*").

> I'd expect that you can find many more examples. Getting every
> program changed to follow your expectation seems like a Sisyphean
> task to me.

This is less an issue for dash, because the user will probably not
run a script that he hasn't written or controled in some other way.

> I am quite sure that there are many more such programs.

GNU ed too. It outputs the file name unsanitized in its error message
saying that control characters 1-31 are not allowed in file name!

-- 
Vincent Lefèvre <vincent@vinc17.net> - Web: <https://www.vinc17.net/>
100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
Work: CR INRIA - computer arithmetic / Pascaline project (LIP, ENS-Lyon)
