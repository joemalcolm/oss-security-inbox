X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["880" "Saturday" "23" "September" "2017" "14:57:27" "+0100" "Simon McVittie" "smcv@debian.org" "<20170923135727.2uys3wgimmyczgy2@perpetual.pseudorandom.co.uk>" "20" "Re: [oss-security] Why send bugs embargoed to distros?" "^Date:" nil nil "9" "2017092313:57:27" "[oss-security] Why send bugs embargoed to distros?" (number mark "        smcv@debian. Sep 23   20/880   " thread-indent "\"Re: [oss-security] Why send bugs embargoed to distros?\"\n") "<20170923134418.6e460656@pc1>" ("<20170923134418.6e460656@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23564 invoked by uid 550); 23 Sep 2017 13:57:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22472 invoked from network); 23 Sep 2017 13:57:56 -0000
Message-ID: <20170923135727.2uys3wgimmyczgy2@perpetual.pseudorandom.co.uk>
References: <20170923134418.6e460656@pc1>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20170923134418.6e460656@pc1>
User-Agent: NeoMutt/20170609 (1.8.3)
Date: Sat, 23 Sep 2017 14:57:27 +0100
From: Simon McVittie <smcv@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Why send bugs embargoed to distros?
To: oss-security@lists.openwall.com

On Sat, 23 Sep 2017 at 13:44:18 +0200, Hanno Böck wrote:
> Debian+Ubuntu took more than a day after disclosure to fix. According
> to the Debian bug tracker the bug got only opened after the public
> disclosure[2].

The Debian bug tracker (bugs.debian.org) is always public and has no
mechanism for embargoing individual bugs, so it is never used before
public disclosure.

It's entirely possible that your conclusion is correct in this case
(I don't have any more information than you do on whether the Debian
security team or package maintainer made use of the embargo period
for this vulnerability), but the late opening of a bug is not evidence
that no work was done before public disclosure.

https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=777545 is an example
of a vulnerability for which the package maintainer (me) was definitely
aware before the bug was filed.

    S
