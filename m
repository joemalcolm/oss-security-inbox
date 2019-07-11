X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2200" "Thursday" "11" "July" "2019" "21:20:15" "+0100" "Simon McVittie" "smcv@debian.org" "<20190711202015.GA24270@espresso.pseudorandom.co.uk>" "39" "Re: [oss-security] Privileged File Access from Desktop Applications" "^Date:" nil nil "7" "2019071120:20:15" "[oss-security] Privileged File Access from Desktop Applications" (number mark "        smcv@debian. Jul 11   39/2200  " thread-indent "\"Re: [oss-security] Privileged File Access from Desktop Applications\"\n") "<20190711114710.09ab5ad9@jabberwock.cb.piermont.com>" ("<200975c0f23706ce513744052225ea7dc9842206.camel@suse.com>" "<20190709113036.0f12d057@jabberwock.cb.piermont.com>" "<9148ee55db2cabb111f790513413823996d04cb6.camel@suse.com>" "<20190711093326.328948dc@jabberwock.cb.piermont.com>" "<de14296ba908c162036a15b1aeda95586ff8ba14.camel@suse.com>" "<20190711114710.09ab5ad9@jabberwock.cb.piermont.com>") nil nil nil nil nil nil nil "Re: [oss-security] Privileged File Access from Desktop Applications" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15382 invoked by uid 550); 11 Jul 2019 20:20:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15364 invoked from network); 11 Jul 2019 20:20:40 -0000
Message-ID: <20190711202015.GA24270@espresso.pseudorandom.co.uk>
References: <200975c0f23706ce513744052225ea7dc9842206.camel@suse.com>
 <20190709113036.0f12d057@jabberwock.cb.piermont.com>
 <9148ee55db2cabb111f790513413823996d04cb6.camel@suse.com>
 <20190711093326.328948dc@jabberwock.cb.piermont.com>
 <de14296ba908c162036a15b1aeda95586ff8ba14.camel@suse.com>
 <20190711114710.09ab5ad9@jabberwock.cb.piermont.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190711114710.09ab5ad9@jabberwock.cb.piermont.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Date: Thu, 11 Jul 2019 21:20:15 +0100
From: Simon McVittie <smcv@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Privileged File Access from Desktop Applications
To: oss-security@lists.openwall.com

On Thu, 11 Jul 2019 at 11:47:10 -0400, Perry E. Metzger wrote:
> having to add file i/o subsystems inside of dbus(!) probably does
> add lots of threats

I think you might be misunderstanding the scope of D-Bus. D-Bus
is an IPC mechanism, normally using AF_UNIX sockets; dbus is the
reference implementation, including a message bus (broker) and a client
library. System services and their clients can use D-Bus to communicate
if they have been designed to do so, similar to the way they might use
ONC RPC (aka SunRPC), CORBA, ZeroMQ, SOAP-over-HTTP, any other
pre-existing IPC mechanism chosen by their designer, or their own
unique/ad-hoc IPC mechanism.

If someone writes a system service that provides file I/O over D-Bus,
that does not imply adding code to dbus, in the same way that in the ONC
RPC ecosystem (NFS etc.) adding a new RPC service didn't involve adding
code to the portmapper, and in CORBA adding a new RPC service didn't
involve adding code to the broker. The D-Bus protocol and the dbus
implementation just carry messages, with some security and functional
guarantees. Processing those messages (preferably securely, and making
appropriate use of the guarantees given by the IPC mechanism where they
are helpful) is a job for higher layers.

D-Bus is often used by system services as a reusable protocol over
AF_UNIX sockets. Unlike protocols designed for network use, the concept
of identity used in its authentication/authorization handshake is bound to
Unix uids (and it normally authenticates using Linux SO_PEERCRED or other
kernels' equivalents, so identity is guaranteed by the kernel). This is
good if uids are an important part of your security model (conversely, if
uids aren't the basis for your security model, then D-Bus is a poor fit).

The security of each system service that happens to use D-Bus should
be considered on its own merits, the same way that using HTTP does not
automatically make a higher-layer protocol more or less secure than it
would otherwise be. Some system services that communicate via D-Bus are
carefully designed with security in mind, while others are not (and I've
sent advisories in the past for some in the latter category).

    smcv
