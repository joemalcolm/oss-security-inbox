X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3571" "Saturday" "9" "December" "2017" "23:15:30" "-0500" "Phil Pennock" "oss-security-phil@spodhuis.org" "<20171210041530.GA81842@tower.spodhuis.org>" "70" "[oss-security] Re: Recommendations GnuPG-2 replacement" nil nil nil "12" "2017121004:15:30" "[oss-security] Re: Recommendations GnuPG-2 replacement" (number mark "U       oss-security Dec  9   70/3571  " thread-indent "\"[oss-security] Re: Recommendations GnuPG-2 replacement\"\n") "<780d4f26-0803-6ef8-3a21-bcf8ea480a29@ruhr-uni-bochum.de>" ("<780d4f26-0803-6ef8-3a21-bcf8ea480a29@ruhr-uni-bochum.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27828 invoked by uid 550); 10 Dec 2017 12:07:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23796 invoked from network); 10 Dec 2017 04:15:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=spodhuis.org; s=d201711; h=In-Reply-To:Content-Type:MIME-Version:References
	:Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding
	:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=m1vaQFP/KpZywDcWDaG/468ElviffTuw0hA+u0kQs7k=; b=PKHrmAExJBt82cSdmUQWxEOsYC
	/Pc1MrROe1YZtbSnSvTeSRIcIY0+kcqGyYtBiXeev8YaG6Fhp/Lrred1oSFlFjTIkdOvh/sr3PGr6
	ToIUDYrJ14peQBdUxbRv23pnEzk0OO4Vou4SXUN36wjBD4FXU3RF9IwQ3n1ZbJwujYm+ixjaXvWg2
	yPh8psRzRV+bKs2ioTTqob80BXt1;
Date: Sat, 9 Dec 2017 23:15:30 -0500
From: Phil Pennock <oss-security-phil@spodhuis.org>
To: oss-security@lists.openwall.com
Message-ID: <20171210041530.GA81842@tower.spodhuis.org>
References: <780d4f26-0803-6ef8-3a21-bcf8ea480a29@ruhr-uni-bochum.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <780d4f26-0803-6ef8-3a21-bcf8ea480a29@ruhr-uni-bochum.de>
OpenPGP: url=https://www.security.spodhuis.org/PGP/keys/0x4D1E900E14C1CC04.asc
Subject: [oss-security] Re: Recommendations GnuPG-2 replacement

On 2017-12-08 at 00:51 +0100, Marcus Brinkmann wrote:
> because I am not registering the root certificate of the keyserver CA -
> yes, openpgp keyservers have their own self-signed root CA).

Look at the security and threat models and if you have a suggestion for
something better, please make it.

(So that you know I'm not a random crank: I wrote the operational guide
for the SKS keyservers and have done a lot of work on the community side
towards improving interop and helping move things forward.  I'm at least
a semi-informed crank.)

The keyservers are run by various people with no formal affiliation, as
a public good by each person choosing to cooperate.  There is no shared
organization, no formal responsibility.  There are "pool" hostnames,
which are maintained by spidering the peering mesh on the "list of
peers" info page, and working under a common hostname.
<https://sks-keyservers.net/overview-of-pools.php> has more information.

So for hkps, we need "several" different people to all have certificates
for the _same_ hostname.

This is all directly opposite to the security model of the TTP PKIX.  If
we could get certificates from a browser-store CA, I'd tell you to stop
trusting that CA because their processes are clearly broken.

Thus Kristian runs a tiny CA and issues certs to those people who've
been part of the community and ask to set things up, having demonstrated
a working keyserver setup.

What does TLS buy you?  Protection against evesdropping.  But you don't
know who you're talking to in the first place, so that's not really that
much.  Protection against tampering, but the same applies.

It's worth repeating: if the Acronym Agencies of various countries aren't
sponsoring arms-length keyservers where they get all the traffic logs
for some percentage of keyserver traffic, then they're incompetent.  If
they provide a useful public service and folks choose to use it, then
they get the normal operator logs, because they're the operators.  All
legal.

You don't know who is running the keyservers.  You don't know what's
happening to the logs.  You don't know that the keyservers are
trustworthy.  They are, at most, a useful swamp for collecting the data
from so that clients can do WoT calculations without caring about
fishing in a contaminated swamp, as the WoT _if done right_ takes care
of filtering out the sludge.

If you care about privacy in who you talk with, get the keys from some
other path, or run a keyserver, and use hkps with a certificate under
your control.

For myself, I need to look into building modern OCaml because FreeBSD
are still shipping a version with known integer overflow vulnerabilities
and so my SKS install is shut down.  It's somewhere on my long todo
list.  My server has hkps for the public pool, and a Let's Encrypt cert
under its own hostname.  It meets my needs, when I'm running it.  But
the viability of the public keyservers is well past any reasonable
expectation of their lifespan.  We've had the EFF sponsoring spamming
tools; we've had keyservers in Europe shut down because of privacy
demands because an append-only mesh-fill datastore can't remove keys and
people send out their email address and name paired into a key and then
get upset because it's out there; we're one
illicit-material-in-photo-uid incident away from global shutdown.

Don't rely on the public keyservers and please don't complain if their
security model, such as it is, requires a custom CA to be able to
operate with what minimal veneer of security TLS might provide.

-Phil, speaking only for myself
