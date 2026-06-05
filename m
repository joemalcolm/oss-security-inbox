Received: (qmail 30626 invoked by uid 550); 6 Jun 2026 01:33:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 12240 invoked from network); 5 Jun 2026 20:23:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=UQxhbNPJxDmP+b6VqoFygaJKgFQZu/wBKtNPdNZczQY=; b=YRj1S2MQNp5NThanUcyVOL/CjT
	FrhefcY2HLVM7Ps508d37B7/OT7QRa4XObZqWDjiwDwbhT3wi8EHiXgbJmVRiOsK+H02MipOtOYzL
	APnCPt6vSgVT+RNtIbluQwGg5W8Jc8StVI3is0tX/MHVxI+6d1vF3FR1kcFN02saWmfApQHUyIoz6
	/xqU80c2OMVFV4S9jRuBDx+KH6peznjWjNA3pO4VukKljLxKBFgKQyhMp1nQoPAIAHImx+JX1O4AB
	5Ipmta56FvXpETEfnqU/JdruQW5MriwcTQFd2haGlWtA9EiUWW5J4MWPxvsc/Ep4+cJrO7diQauGg
	iItlpfHA==;
Date: Fri, 5 Jun 2026 22:23:15 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <aiMwM97lKIHwSYYK@eldamar.lan>
References: <aiFPPUkZ63aDOdzD@quokka>
 <aiIDm-A8A1xnH1j8@quokka>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aiIDm-A8A1xnH1j8@quokka>
X-Debian-User: carnil
Subject: Re: [oss-security] libinput: libinput-device-group unescaped phys
 output can inject udev properties

Hi,

On Fri, Jun 05, 2026 at 09:01:56AM +1000, Peter Hutterer wrote:
> On Thu, Jun 04, 2026 at 08:12:22PM +1000, Peter Hutterer wrote:
> > =========================================
> > libinput Security Advisory: June 4, 2026
> > =========================================
> > 
> > An issue has been found in libinput:
> > 
> > 1) libinput-device-group unescaped phys output can inject udev properties
> >    leading to arbitrary root code execution
> > 
> > libinput uses a udev helper called libinput-device-group. This helper uses a
> > device's phys sysattr as one element of a udev property value which is printed
> > as a KEY=VALUE pair and imported as ENV by udev.
> > 
> > A malicious uinput or uhid device that sets a phys sysattr containing \n caused
> > the output to be interpreted as two separate KEY=VALUE pairs by udev. This could
> > cause arbitrary execution as root (e.g. by setting the REMOVE_CMD property).
> > 
> > A CVE has been requested for this issue but did not get assigned in time for
> > this disclosure.
> > 
> > Upstream issue: https://gitlab.freedesktop.org/libinput/libinput/-/work_items/1296
> > Upstream fix: https://gitlab.freedesktop.org/libinput/libinput/-/commit/76f0d8a7f57e2868882864b4611281f12f704b55
> > Versions affected: libinput <= 1.31.2 and <= 1.30.3
> > Fixed versions: libinput 1.31.3, 1.30.4
> 
> This issue has now been assigned CVE-2026-50265

FTR, this is bit odd since before that assignment MITRE seems to have
already assigned CVE-2026-50292:
https://www.cve.org/CVERecord?id=CVE-2026-50292

And it had the references:
https://gitlab.freedesktop.org/libinput/libinput/-/work_items/1296
https://gitlab.freedesktop.org/libinput/libinput/-/commit/76f0d8a7f57e2868882864b4611281f12f704b55
https://www.openwall.com/lists/oss-security/2026/06/04/5

So that is clashing with the assignment from Red Hat as
CVE-2026-50265:
https://www.cve.org/CVERecord?id=CVE-2026-50265

I asked Red Hat CNA if they can reject the later assigned one, but not
sure which should be kept now. 

Regards,
Salvatore
