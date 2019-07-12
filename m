X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1624" "Friday" "12" "July" "2019" "14:40:19" "+0000" "Jordan Glover" "Golden_Miller83@protonmail.ch" "<eLEcaAZ84viV-VsSdpXT33_w8eR6Sg6SPnu8naoZWbu5LE7Dm9Tn6HawkbPVhQXfCToNDJBsX7JZ_fZHsDj4xSp9UCrgBltJaT65sR3NUu4=@protonmail.ch>" "38" "Re: [oss-security] Privileged File Access from Desktop Applications" "^Cc:" nil nil "7" "2019071214:40:19" "[oss-security] Privileged File Access from Desktop Applications" (number mark "        Golden_Mille Jul 12   38/1624  " thread-indent "\"Re: [oss-security] Privileged File Access from Desktop Applications\"\n") "<20190711203714.7f3019ad@jabberwock.cb.piermont.com>" ("<200975c0f23706ce513744052225ea7dc9842206.camel@suse.com>" "<20190709113036.0f12d057@jabberwock.cb.piermont.com>" "<9148ee55db2cabb111f790513413823996d04cb6.camel@suse.com>" "<20190711093326.328948dc@jabberwock.cb.piermont.com>" "<de14296ba908c162036a15b1aeda95586ff8ba14.camel@suse.com>" "<20190711114710.09ab5ad9@jabberwock.cb.piermont.com>" "<20190711202015.GA24270@espresso.pseudorandom.co.uk>" "<20190711203714.7f3019ad@jabberwock.cb.piermont.com>") nil nil nil nil nil nil nil "Re: [oss-security] Privileged File Access from Desktop Applications" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30327 invoked by uid 550); 12 Jul 2019 14:42:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28411 invoked from network); 12 Jul 2019 14:40:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.ch;
	s=default; t=1562942425;
	bh=kzPHpyNfRAtOm3d+0dabh1SE6zHIixpWUtBmo50i+Kg=;
	h=Date:To:From:Cc:Reply-To:Subject:In-Reply-To:References:
	 Feedback-ID:From;
	b=THmyrKNQcO8xujY7myiBjzWLqG+0GLO3UCfTOVEa224M6T5Q0jwWTOvpyNusHCXvC
	 3SqVQMCaCrT/OGjKEAeDWauMKu0VgNeelQB3wMMrSnXZLf+9c1n6WzzohM95yfM0cV
	 zaa1HI0an+y6WXObyPmUdS+z+f01OEHsVsvlzmdk=
Message-ID: <eLEcaAZ84viV-VsSdpXT33_w8eR6Sg6SPnu8naoZWbu5LE7Dm9Tn6HawkbPVhQXfCToNDJBsX7JZ_fZHsDj4xSp9UCrgBltJaT65sR3NUu4=@protonmail.ch>
In-Reply-To: <20190711203714.7f3019ad@jabberwock.cb.piermont.com>
References: <200975c0f23706ce513744052225ea7dc9842206.camel@suse.com>
 <20190709113036.0f12d057@jabberwock.cb.piermont.com>
 <9148ee55db2cabb111f790513413823996d04cb6.camel@suse.com>
 <20190711093326.328948dc@jabberwock.cb.piermont.com>
 <de14296ba908c162036a15b1aeda95586ff8ba14.camel@suse.com>
 <20190711114710.09ab5ad9@jabberwock.cb.piermont.com>
 <20190711202015.GA24270@espresso.pseudorandom.co.uk>
 <20190711203714.7f3019ad@jabberwock.cb.piermont.com>
Feedback-ID: QEdvdaLhFJaqnofhWA-dldGwsuoeDdDw7vz0UPs8r8sanA3bIt8zJdf4aDqYKSy4gJuZ0WvFYJtvq21y6ge_uQ==:Ext:ProtonMail
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: Simon McVittie <smcv@debian.org>
Date: Fri, 12 Jul 2019 14:40:19 +0000
From: Jordan Glover <Golden_Miller83@protonmail.ch>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Privileged File Access from Desktop Applications
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

On Friday, July 12, 2019 12:37 AM, Perry E. Metzger <perry@piermont.com> wr=
ote:

> On Thu, 11 Jul 2019 21:20:15 +0100 Simon McVittie smcv@debian.org
> wrote:
>
> > On Thu, 11 Jul 2019 at 11:47:10 -0400, Perry E. Metzger wrote:
> >
> > > having to add file i/o subsystems inside of dbus(!) probably does
> > > add lots of threats
> >
> > I think you might be misunderstanding the scope of D-Bus.
>
> Not really. The whole point is that instead of having the operating
> system alone as part of your file security implementation you now
> have a brand new service, an IPC mechanism, and loads of other stuff,
> instead of having your app just do open(2) and write(2) etc.

Do you mean that IPC and D-bus aren't part of the OS? Then what is?

> It seems architecturally bad from a security perspective. The number
> the number of trusted entities, the number of moving parts, the number
> of mechanisms, and thus the number of ways things can go wrong keeps
> going up. This is a mistake. And btw, this is a major piece of
> mechanism being added just to handle the problem of someone wanting to
> pop open an editor inside a GUI to edit a system config file, which is
> not a major attack vector. But, now I have to worry about this new
> file access service providing an attack surface that didn't exist
> before.
>
> What's the right way to handle this stuff? Capabilities,
> probably. It's what they're designed for.

They're completely not designed for this case. Setting CAP_DAC_OVERRIDE
or CAP_SYS_ADMIN is very close to SUID root. See:
https://grsecurity.net/false_boundaries_and_arbitrary_code_execution.php

Jordan
