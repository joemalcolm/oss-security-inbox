X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2243" "Friday" "12" "July" "2019" "11:53:26" "-0400" "Perry E. Metzger" "perry@piermont.com" "<20190712115326.5db9130a@jabberwock.cb.piermont.com>" "50" "Re: [oss-security] Privileged File Access from Desktop Applications" "^Cc:" nil nil "7" "2019071215:53:26" "[oss-security] Privileged File Access from Desktop Applications" (number mark "        perry@piermo Jul 12   50/2243  " thread-indent "\"Re: [oss-security] Privileged File Access from Desktop Applications\"\n") "<eLEcaAZ84viV-VsSdpXT33_w8eR6Sg6SPnu8naoZWbu5LE7Dm9Tn6HawkbPVhQXfCToNDJBsX7JZ_fZHsDj4xSp9UCrgBltJaT65sR3NUu4=@protonmail.ch>" ("<200975c0f23706ce513744052225ea7dc9842206.camel@suse.com>" "<20190709113036.0f12d057@jabberwock.cb.piermont.com>" "<9148ee55db2cabb111f790513413823996d04cb6.camel@suse.com>" "<20190711093326.328948dc@jabberwock.cb.piermont.com>" "<de14296ba908c162036a15b1aeda95586ff8ba14.camel@suse.com>" "<20190711114710.09ab5ad9@jabberwock.cb.piermont.com>" "<20190711202015.GA24270@espresso.pseudorandom.co.uk>" "<20190711203714.7f3019ad@jabberwock.cb.piermont.com>" "<eLEcaAZ84viV-VsSdpXT33_w8eR6Sg6SPnu8naoZWbu5LE7Dm9Tn6HawkbPVhQXfCToNDJBsX7JZ_fZHsDj4xSp9UCrgBltJaT65sR3NUu4=@protonmail.ch>") nil nil nil nil nil nil nil "Re: [oss-security] Privileged File Access from Desktop Applications" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25614 invoked by uid 550); 12 Jul 2019 15:53:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24572 invoked from network); 12 Jul 2019 15:53:38 -0000
Message-ID: <20190712115326.5db9130a@jabberwock.cb.piermont.com>
In-Reply-To: <eLEcaAZ84viV-VsSdpXT33_w8eR6Sg6SPnu8naoZWbu5LE7Dm9Tn6HawkbPVhQXfCToNDJBsX7JZ_fZHsDj4xSp9UCrgBltJaT65sR3NUu4=@protonmail.ch>
References: <200975c0f23706ce513744052225ea7dc9842206.camel@suse.com>
	<20190709113036.0f12d057@jabberwock.cb.piermont.com>
	<9148ee55db2cabb111f790513413823996d04cb6.camel@suse.com>
	<20190711093326.328948dc@jabberwock.cb.piermont.com>
	<de14296ba908c162036a15b1aeda95586ff8ba14.camel@suse.com>
	<20190711114710.09ab5ad9@jabberwock.cb.piermont.com>
	<20190711202015.GA24270@espresso.pseudorandom.co.uk>
	<20190711203714.7f3019ad@jabberwock.cb.piermont.com>
	<eLEcaAZ84viV-VsSdpXT33_w8eR6Sg6SPnu8naoZWbu5LE7Dm9Tn6HawkbPVhQXfCToNDJBsX7JZ_fZHsDj4xSp9UCrgBltJaT65sR3NUu4=@protonmail.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: oss-security@lists.openwall.com, Simon McVittie <smcv@debian.org>
Date: Fri, 12 Jul 2019 11:53:26 -0400
From: "Perry E. Metzger" <perry@piermont.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Privileged File Access from Desktop Applications
To: Jordan Glover <Golden_Miller83@protonmail.ch>

On Fri, 12 Jul 2019 14:40:19 +0000 Jordan Glover
<Golden_Miller83@protonmail.ch> wrote:
> > > I think you might be misunderstanding the scope of D-Bus.  
> >
> > Not really. The whole point is that instead of having the
> > operating system alone as part of your file security
> > implementation you now have a brand new service, an IPC
> > mechanism, and loads of other stuff, instead of having your app
> > just do open(2) and write(2) etc.  
> 
> Do you mean that IPC and D-bus aren't part of the OS? Then what is?

There's already a file i/o mechanism in the kernel, and it's already
doing access control. You're building a second one. This is bad.

Again, if you need fine grained access grants, there's a mechanism
for that which has been intensely studied for decades now, which is
capabilities. Building ad-hoc secondary file i/o handlers isn't going
to be as secure as a capability system, and is going to yield yet
more surface area for attackers, not to mention adding complexity
which makes reasoning about the security of the system harder.

None of this should require saying, but apparently it does.

> > It seems architecturally bad from a security perspective. The
> > number the number of trusted entities, the number of moving
> > parts, the number of mechanisms, and thus the number of ways
> > things can go wrong keeps going up. This is a mistake. And btw,
> > this is a major piece of mechanism being added just to handle the
> > problem of someone wanting to pop open an editor inside a GUI to
> > edit a system config file, which is not a major attack vector.
> > But, now I have to worry about this new file access service
> > providing an attack surface that didn't exist before.
> >
> > What's the right way to handle this stuff? Capabilities,
> > probably. It's what they're designed for.  
> 
> They're completely not designed for this case. Setting
> CAP_DAC_OVERRIDE or CAP_SYS_ADMIN is very close to SUID root. See:
> https://grsecurity.net/false_boundaries_and_arbitrary_code_execution.php


Those aren't capabilities. Those are this POSIX mechanism that got
the same name for no good reason and doesn't do anything like what an
actual capability system does.


Perry
-- 
Perry E. Metzger		perry@piermont.com
