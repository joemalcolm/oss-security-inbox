X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1269" "Thursday" "11" "July" "2019" "20:37:14" "-0400" "Perry E. Metzger" "perry@piermont.com" "<20190711203714.7f3019ad@jabberwock.cb.piermont.com>" "29" "Re: [oss-security] Privileged File Access from Desktop Applications" "^Cc:" nil nil "7" "2019071200:37:14" "[oss-security] Privileged File Access from Desktop Applications" (number mark "        perry@piermo Jul 11   29/1269  " thread-indent "\"Re: [oss-security] Privileged File Access from Desktop Applications\"\n") "<20190711202015.GA24270@espresso.pseudorandom.co.uk>" ("<200975c0f23706ce513744052225ea7dc9842206.camel@suse.com>" "<20190709113036.0f12d057@jabberwock.cb.piermont.com>" "<9148ee55db2cabb111f790513413823996d04cb6.camel@suse.com>" "<20190711093326.328948dc@jabberwock.cb.piermont.com>" "<de14296ba908c162036a15b1aeda95586ff8ba14.camel@suse.com>" "<20190711114710.09ab5ad9@jabberwock.cb.piermont.com>" "<20190711202015.GA24270@espresso.pseudorandom.co.uk>") nil nil nil nil nil nil nil "Re: [oss-security] Privileged File Access from Desktop Applications" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7308 invoked by uid 550); 12 Jul 2019 00:37:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7281 invoked from network); 12 Jul 2019 00:37:27 -0000
Message-ID: <20190711203714.7f3019ad@jabberwock.cb.piermont.com>
In-Reply-To: <20190711202015.GA24270@espresso.pseudorandom.co.uk>
References: <200975c0f23706ce513744052225ea7dc9842206.camel@suse.com>
	<20190709113036.0f12d057@jabberwock.cb.piermont.com>
	<9148ee55db2cabb111f790513413823996d04cb6.camel@suse.com>
	<20190711093326.328948dc@jabberwock.cb.piermont.com>
	<de14296ba908c162036a15b1aeda95586ff8ba14.camel@suse.com>
	<20190711114710.09ab5ad9@jabberwock.cb.piermont.com>
	<20190711202015.GA24270@espresso.pseudorandom.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: oss-security@lists.openwall.com
Date: Thu, 11 Jul 2019 20:37:14 -0400
From: "Perry E. Metzger" <perry@piermont.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Privileged File Access from Desktop Applications
To: Simon McVittie <smcv@debian.org>

On Thu, 11 Jul 2019 21:20:15 +0100 Simon McVittie <smcv@debian.org>
wrote:
> On Thu, 11 Jul 2019 at 11:47:10 -0400, Perry E. Metzger wrote:
> > having to add file i/o subsystems inside of dbus(!) probably does
> > add lots of threats  
> 
> I think you might be misunderstanding the scope of D-Bus.

Not really. The whole point is that instead of having the operating
system alone as part of your file security implementation you now
have a brand new service, an IPC mechanism, and loads of other stuff,
instead of having your app just do open(2) and write(2) etc.

It seems architecturally bad from a security perspective. The number
the number of trusted entities, the number of moving parts, the number
of mechanisms, and thus the number of ways things can go wrong keeps
going up. This is a mistake. And btw, this is a major piece of
mechanism being added just to handle the problem of someone wanting to
pop open an editor inside a GUI to edit a system config file, which is
not a major attack vector. But, now I have to worry about this new
file access service providing an attack surface that didn't exist
before.

What's the right way to handle this stuff? Capabilities,
probably. It's what they're designed for.

Perry
-- 
Perry E. Metzger		perry@piermont.com
