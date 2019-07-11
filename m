X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1836" "Thursday" "11" "July" "2019" "11:47:10" "-0400" "Perry E. Metzger" "perry@piermont.com" "<20190711114710.09ab5ad9@jabberwock.cb.piermont.com>" "39" "Re: [oss-security] Privileged File Access from Desktop Applications" "^Cc:" nil nil "7" "2019071115:47:10" "[oss-security] Privileged File Access from Desktop Applications" (number mark "        perry@piermo Jul 11   39/1836  " thread-indent "\"Re: [oss-security] Privileged File Access from Desktop Applications\"\n") "<de14296ba908c162036a15b1aeda95586ff8ba14.camel@suse.com>" ("<200975c0f23706ce513744052225ea7dc9842206.camel@suse.com>" "<20190709113036.0f12d057@jabberwock.cb.piermont.com>" "<9148ee55db2cabb111f790513413823996d04cb6.camel@suse.com>" "<20190711093326.328948dc@jabberwock.cb.piermont.com>" "<de14296ba908c162036a15b1aeda95586ff8ba14.camel@suse.com>") nil nil nil nil nil nil nil "Re: [oss-security] Privileged File Access from Desktop Applications" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11354 invoked by uid 550); 11 Jul 2019 15:47:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11334 invoked from network); 11 Jul 2019 15:47:23 -0000
Message-ID: <20190711114710.09ab5ad9@jabberwock.cb.piermont.com>
In-Reply-To: <de14296ba908c162036a15b1aeda95586ff8ba14.camel@suse.com>
References: <200975c0f23706ce513744052225ea7dc9842206.camel@suse.com>
	<20190709113036.0f12d057@jabberwock.cb.piermont.com>
	<9148ee55db2cabb111f790513413823996d04cb6.camel@suse.com>
	<20190711093326.328948dc@jabberwock.cb.piermont.com>
	<de14296ba908c162036a15b1aeda95586ff8ba14.camel@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Malte Kraus <malte.kraus@suse.com>
Date: Thu, 11 Jul 2019 11:47:10 -0400
From: "Perry E. Metzger" <perry@piermont.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Privileged File Access from Desktop Applications
To: oss-security@lists.openwall.com

On Thu, 11 Jul 2019 13:57:19 +0000 Malte Kraus <malte.kraus@suse.com>
wrote:
> On Thu, 2019-07-11 at 09:33 -0400,  Perry E. Metzger wrote:
> > So these links seem to say that things have been structured so you
> > *can't* run GUI apps as root, not that there is a special or
> > unusual security problem in Wayland if you run an application as
> > root  
> I didn't (intend to) say there is an (additional) security problem.
> I just tried to succinctly explain why the desktop environments are
> coming up with these D-Bus interfaces now.

It seems like a bad idea.

If one wants to have mechanisms by which the operating system can
allow unprivileged programs to temporarily assume privileges (which
is a frequent idea in security), then they should be carefully
designed and part of the OS, rather than creating an ad hoc facility
via a subsystem that isn't intended for it. There are good ways to do
that, like capabilities.

The ad hoc solution creates a situation where quite ordinary programs
like editors suddenly need two distinct sets of file i/o primitives
with very distinct security properties to do ordinary things like
editing files, and where (as I said) subsystems not intended to
handle file security suddenly are in charge of it.

Honestly, for day to day editing of administration files, I'd
far rather be able to pop open an editor on my machine as root for a
moment than have a complicated facility. "Protecting" me from this
probably has no significant benefit in terms of real-world threats,
but having to add file i/o subsystems inside of dbus(!) probably does
add lots of threats. Failing that, though, I'd rather people finally
add a real solution (like a capability subsystem, see Capsicum for
example) instead of fooling around with fragile, ad hoc designs.


Perry
-- 
Perry E. Metzger		perry@piermont.com
