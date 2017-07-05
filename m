X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["818" "Wednesday" "5" "July" "2017" "22:09:40" "+0000" "Jeremy Stanley" "fungi@yuggoth.org" "<20170705220939.GC2409@yuggoth.org>" "20" "Re: [oss-security] systemd fails to parse user that should run service" "^Date:" nil nil "7" "2017070522:09:40" "[oss-security] systemd fails to parse user that should run service" (number mark "        fungi@yuggot Jul  5   20/818   " thread-indent "\"Re: [oss-security] systemd fails to parse user that should run service\"\n") "<9a2c8b5b-aeee-7e39-099e-3ee706de7b73@gentoo.org>" ("<20170705215814.4wyzvq2deid4ln7q@perpetual.pseudorandom.co.uk>" "<9a2c8b5b-aeee-7e39-099e-3ee706de7b73@gentoo.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22486 invoked by uid 550); 5 Jul 2017 22:09:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22462 invoked from network); 5 Jul 2017 22:09:54 -0000
Message-ID: <20170705220939.GC2409@yuggoth.org>
References: <20170705215814.4wyzvq2deid4ln7q@perpetual.pseudorandom.co.uk>
 <9a2c8b5b-aeee-7e39-099e-3ee706de7b73@gentoo.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9a2c8b5b-aeee-7e39-099e-3ee706de7b73@gentoo.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-SA-Exim-Connect-IP: 2001:4802:7801:102:be76:4eff:fe20:63e0
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Date: Wed, 5 Jul 2017 22:09:40 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] systemd fails to parse user that should run
 service
To: oss-security@lists.openwall.com

On 2017-07-06 00:02:58 +0200 (+0200), Kristian Fiskerstrand wrote:
> On 07/05/2017 11:58 PM, Simon McVittie wrote:
> > systemd does have a (public, and publically-archived) mailing
> > list, which has a current thread on the subject of this issue.
> > 
> > In particular the mail in that thread from Felipe Sateler, and
> > some of the discussion on the upstream bug, touches on reasons
> > why neither "if anything is not as expected, reject the whole
> > unit" nor the current behaviour is right. I suspect the
> > resolution is likely to be something in between.
> 
> It would be useful with a reference to the thread in question so
> this can be further looked into.

Please see the thread starting with this message:

https://lists.freedesktop.org/archives/systemd-devel/2017-July/039154.html

-- 
Jeremy Stanley
