X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1645" "Friday" "12" "July" "2019" "12:12:02" "-0400" "Perry E. Metzger" "perry@piermont.com" "<20190712121202.403b2f5f@jabberwock.cb.piermont.com>" "37" "Re: [oss-security] Privileged File Access from Desktop Applications" "^Cc:" nil nil "7" "2019071216:12:02" "[oss-security] Privileged File Access from Desktop Applications" (number mark "U       perry@piermo Jul 12   37/1645  " thread-indent "\"Re: [oss-security] Privileged File Access from Desktop Applications\"\n") "<20190712115326.5db9130a@jabberwock.cb.piermont.com>" ("<200975c0f23706ce513744052225ea7dc9842206.camel@suse.com>" "<20190709113036.0f12d057@jabberwock.cb.piermont.com>" "<9148ee55db2cabb111f790513413823996d04cb6.camel@suse.com>" "<20190711093326.328948dc@jabberwock.cb.piermont.com>" "<de14296ba908c162036a15b1aeda95586ff8ba14.camel@suse.com>" "<20190711114710.09ab5ad9@jabberwock.cb.piermont.com>" "<20190711202015.GA24270@espresso.pseudorandom.co.uk>" "<20190711203714.7f3019ad@jabberwock.cb.piermont.com>" "<eLEcaAZ84viV-VsSdpXT33_w8eR6Sg6SPnu8naoZWbu5LE7Dm9Tn6HawkbPVhQXfCToNDJBsX7JZ_fZHsDj4xSp9UCrgBltJaT65sR3NUu4=@protonmail.ch>" "<20190712115326.5db9130a@jabberwock.cb.piermont.com>") nil nil nil nil nil nil nil "Re: [oss-security] Privileged File Access from Desktop Applications" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28072 invoked by uid 550); 12 Jul 2019 16:12:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28030 invoked from network); 12 Jul 2019 16:12:15 -0000
Message-ID: <20190712121202.403b2f5f@jabberwock.cb.piermont.com>
In-Reply-To: <20190712115326.5db9130a@jabberwock.cb.piermont.com>
References: <200975c0f23706ce513744052225ea7dc9842206.camel@suse.com>
	<20190709113036.0f12d057@jabberwock.cb.piermont.com>
	<9148ee55db2cabb111f790513413823996d04cb6.camel@suse.com>
	<20190711093326.328948dc@jabberwock.cb.piermont.com>
	<de14296ba908c162036a15b1aeda95586ff8ba14.camel@suse.com>
	<20190711114710.09ab5ad9@jabberwock.cb.piermont.com>
	<20190711202015.GA24270@espresso.pseudorandom.co.uk>
	<20190711203714.7f3019ad@jabberwock.cb.piermont.com>
	<eLEcaAZ84viV-VsSdpXT33_w8eR6Sg6SPnu8naoZWbu5LE7Dm9Tn6HawkbPVhQXfCToNDJBsX7JZ_fZHsDj4xSp9UCrgBltJaT65sR3NUu4=@protonmail.ch>
	<20190712115326.5db9130a@jabberwock.cb.piermont.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: oss-security@lists.openwall.com, Simon McVittie <smcv@debian.org>
Date: Fri, 12 Jul 2019 12:12:02 -0400
From: "Perry E. Metzger" <perry@piermont.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Privileged File Access from Desktop Applications
To: Jordan Glover <Golden_Miller83@protonmail.ch>

On Fri, 12 Jul 2019 11:53:26 -0400 "Perry E. Metzger"
<perry@piermont.com> wrote:
> > > What's the right way to handle this stuff? Capabilities,
> > > probably. It's what they're designed for.
> > 
> > They're completely not designed for this case. Setting
> > CAP_DAC_OVERRIDE or CAP_SYS_ADMIN is very close to SUID root. See:
> > https://grsecurity.net/false_boundaries_and_arbitrary_code_execution.php
> 
> Those aren't capabilities. Those are this POSIX mechanism that got
> the same name for no good reason and doesn't do anything like what
> an actual capability system does.

It occurs to me that people without a background in computer security
might not know what a capability actually is, or how a capability
based security system manages access control.

This Wikipedia page:
https://en.wikipedia.org/wiki/Capability-based_security
isn't the best, but it does have good pointers to real explanations.

For a look at how you can implement a capability system on top
of Unix, see Capsicum, which was built for FreeBSD but never actually
ported to Linux (which is sad and should be corrected):
https://www.cl.cam.ac.uk/research/security/capsicum/papers/2010usenix-security-capsicum-website.pdf

Note that a primitive form of capabilities can be achieved in the
current Linux kernel by passing file descriptors between processes, a
tool relatively few people seem to know exists. Given that the
"correct" mechanism (something like Capsicum) doesn't exist in Linux
yet, it's a poor man's second best. Again, porting Capsicum would be
the smart thing to do instead of all this ad hoc stuff.


Perry
-- 
Perry E. Metzger		perry@piermont.com
