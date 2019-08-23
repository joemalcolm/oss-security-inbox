X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1565" "Thursday" "22" "August" "2019" "21:13:11" "-0400" "Perry E. Metzger" "perry@piermont.com" "<20190822211311.1d435223@jabberwock.cb.piermont.com>" "33" "Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" "^Cc:" nil nil "8" "2019082301:13:11" "[oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" (number mark "        perry@piermo Aug 22   33/1565  " thread-indent "\"Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2\"\n") "<e690b8e0-0f3e-6370-8b1c-41baa4e13a71@ehuk.net>" ("<CA+fCnZfz=Y41rkacwG6z0d_d6WV=iSkU2R1L-JzxfRKYHnSN9w@mail.gmail.com>" "<C1E053CF-5359-43A3-8572-BE6CDFDCC2B1@oracle.com>" "<20190822093122.GQ6086@suse.de>" "<ECC3E425-3E0F-4671-AC2B-CA5FD8958FBD@oracle.com>" "<CA+fCnZfpGc0qK9MRp-BQJkLPrZhf-Md-UYCOtPi0RhbwJqmAHQ@mail.gmail.com>" "<20190822135753.10d124a4@jabberwock.cb.piermont.com>" "<9c8ef246-0e75-793b-6995-51e50a730701@ehuk.net>" "<20190822150054.1a7ef060@jabberwock.cb.piermont.com>" "<e690b8e0-0f3e-6370-8b1c-41baa4e13a71@ehuk.net>") nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13477 invoked by uid 550); 23 Aug 2019 01:13:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13459 invoked from network); 23 Aug 2019 01:13:23 -0000
Message-ID: <20190822211311.1d435223@jabberwock.cb.piermont.com>
In-Reply-To: <e690b8e0-0f3e-6370-8b1c-41baa4e13a71@ehuk.net>
References: <CA+fCnZfz=Y41rkacwG6z0d_d6WV=iSkU2R1L-JzxfRKYHnSN9w@mail.gmail.com>
	<C1E053CF-5359-43A3-8572-BE6CDFDCC2B1@oracle.com>
	<20190822093122.GQ6086@suse.de>
	<ECC3E425-3E0F-4671-AC2B-CA5FD8958FBD@oracle.com>
	<CA+fCnZfpGc0qK9MRp-BQJkLPrZhf-Md-UYCOtPi0RhbwJqmAHQ@mail.gmail.com>
	<20190822135753.10d124a4@jabberwock.cb.piermont.com>
	<9c8ef246-0e75-793b-6995-51e50a730701@ehuk.net>
	<20190822150054.1a7ef060@jabberwock.cb.piermont.com>
	<e690b8e0-0f3e-6370-8b1c-41baa4e13a71@ehuk.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: oss-security@lists.openwall.com
Date: Thu, 22 Aug 2019 21:13:11 -0400
From: "Perry E. Metzger" <perry@piermont.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: multiple vulnerabilities in the
 USB subsystem x2
To: Eddie Chapman <eddie@ehuk.net>

On Thu, 22 Aug 2019 20:33:54 +0100 Eddie Chapman <eddie@ehuk.net>
wrote:
> On 22/08/2019 20:00, Perry E. Metzger wrote:
> > You can argue anything you like. Power charging points have
> > popped up around the world, and you're not in a position to stop
> > them. Furthermore, I'll note that over the air exploitable bugs in
> > things like WiFi stacks and Bluetooth stacks have also appeared
> > over time; perhaps it's foolish to have your phone on at all, and
> > yet people will continue to turn their phones on, and even to use
> > them.
> 
> Well, I certainly am not deluded enough to think I have the power
> to stop power charging points popping up everywhere :-) Or to stop
> people making mistakes. Just because something is possible and
> everyone else does it doesn't make something less stupid.
> 
> It's a similar principle with wifi/bluetooth, which is why I avoid 
> connecting even to a family member's wifi access point unless it's 
> absolutely necessary.

I think the fact that you avoid connecting to WiFi access points,
even ones owned by family members, unless absolutely necessary, may
demonstrate that your model of what does and does not constitute
a ordinary user behavior might not be the same as other
people's. Most people do use WiFi in a variety of places, and most
people do charge off of USB ports they have not personally vetted.

Given this, I think fixing bugs that might lead to privilege
escalation, even if they require physical connection of USB devices,
does indeed seem reasonable.

--
Perry E. Metzger		perry@piermont.com
