X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2098" "Tuesday" "9" "January" "2018" "16:46:43" "+0000" "Simon McVittie" "smcv@debian.org" "<20180109164643.GA26974@perpetual.pseudorandom.co.uk>" "42" "Re: [oss-security] Own on install. How grave it is?" "^Cc:" nil nil "1" "2018010916:46:43" "[oss-security] Own on install. How grave it is?" (number mark "        smcv@debian. Jan  9   42/2098  " thread-indent "\"Re: [oss-security] Own on install. How grave it is?\"\n") "<CANO=Ty070FkdfSVcz35pYXsa+BBbgoN7zWheAO-XudbD34n1Kw@mail.gmail.com>" ("<20180109134207.GI869@sivokote.iziade.m$>" "<CANO=Ty070FkdfSVcz35pYXsa+BBbgoN7zWheAO-XudbD34n1Kw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26514 invoked by uid 550); 9 Jan 2018 16:47:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26427 invoked from network); 9 Jan 2018 16:46:58 -0000
Message-ID: <20180109164643.GA26974@perpetual.pseudorandom.co.uk>
References: <20180109134207.GI869@sivokote.iziade.m$>
 <CANO=Ty070FkdfSVcz35pYXsa+BBbgoN7zWheAO-XudbD34n1Kw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CANO=Ty070FkdfSVcz35pYXsa+BBbgoN7zWheAO-XudbD34n1Kw@mail.gmail.com>
User-Agent: Mutt/1.9.2 (2017-12-15)
Cc: Georgi Guninski <guninski@guninski.com>
Date: Tue, 9 Jan 2018 16:46:43 +0000
From: Simon McVittie <smcv@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Own on install. How grave it is?
To: oss-security@lists.openwall.com

On Tue, 09 Jan 2018 at 08:37:08 -0700, Kurt Seifried wrote:
> Many OS installs/etc take a password during install

I think Georgi was more concerned about the installation having a secure
design, but an insecure (vulnerable) implementation appearing on the
installation media due to either unfixed vulnerabilities, or
vulnerabilities that were fixed elsewhere but not on the installation
media?

For instance, the Debian installer installs packages from the install
media (CD, USB stick, whatever), then immediately updates them
from the Internet if possible; but there's a chicken-and-egg
problem here, because that update has to be done with whatever
version of apt was on the media. If that version happens to suffer
from a vulnerability that can be exploited at that time (such as
https://security-tracker.debian.org/tracker/CVE-2016-1252 in apt itself,
or a vulnerability in the http or signature verification code that it
uses) then there's an opportunity for attack.

The same is true for the kernel and network-device firmware used to boot
the installer. Debian mitigates this by releasing updated installation
media at every point release (about 1 per 2 months for stable, somewhat
slower for oldstable).

I don't see any way to prevent that class of attack completely. Releasing
updated installation media sooner would mitigate it, but preparing
installation media is far from being a rapid process.

> On Tue, Jan 9, 2018 at 6:42 AM, Georgi Guninski <guninski@guninski.com> wrote:
> > Debian jessie (old stable) is vulnerable to malicious mirror attack.

Assuming you're referring to CVE-2016-1252, whether this is true depends
what you mean by jessie. Installs from older media (up to and including
8.6) will be vulnerable to CVE-2016-1252 during the first upgrade run,
whereas installs from newer media (8.7 or newer, with the current version
being 8.10) are not vulnerable.

It's true that there was a window (in this case it happens to be 1 month)
during which Debian offered an update for CVE-2016-1252, but the newest
available installation media still suffered from it.

    smcv
