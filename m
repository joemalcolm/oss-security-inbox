X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2192" "Thursday" "7" "September" "2017" "21:38:11" "+0100" "Simon McVittie" "smcv@debian.org" "<20170907203811.bnzbtjq4c56cgxgw@perpetual.pseudorandom.co.uk>" "48" "Re: [oss-security] CVE-2017-12847: nagios-core privilege escalation via PID file manipulation" "^Date:" nil nil "9" "2017090720:38:11" "[oss-security] CVE-2017-12847: nagios-core privilege escalation via PID file manipulation" (number mark "        smcv@debian. Sep  7   48/2192  " thread-indent "\"Re: [oss-security] CVE-2017-12847: nagios-core privilege escalation via PID file manipulation\"\n") "<877exa8oap.fsf@fifthhorseman.net>" ("<f28badcd-c805-3fa5-5a1f-cd65c4899885@orlitzky.com>" "<87wp63jgxn.fsf@fifthhorseman.net>" "<2199434f-d7b6-0d01-9fbc-ed2d013a09d3@orlitzky.com>" "<87ingva5rf.fsf@fifthhorseman.net>" "<fb6b7e2d-977d-7eae-346e-a638f806bf34@orlitzky.com>" "<20170907151829.lff5etqqtwceqvq4@perpetual.pseudorandom.co.uk>" "<877exa8oap.fsf@fifthhorseman.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5506 invoked by uid 550); 7 Sep 2017 20:38:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5488 invoked from network); 7 Sep 2017 20:38:48 -0000
Message-ID: <20170907203811.bnzbtjq4c56cgxgw@perpetual.pseudorandom.co.uk>
References: <f28badcd-c805-3fa5-5a1f-cd65c4899885@orlitzky.com>
 <87wp63jgxn.fsf@fifthhorseman.net>
 <2199434f-d7b6-0d01-9fbc-ed2d013a09d3@orlitzky.com>
 <87ingva5rf.fsf@fifthhorseman.net>
 <fb6b7e2d-977d-7eae-346e-a638f806bf34@orlitzky.com>
 <20170907151829.lff5etqqtwceqvq4@perpetual.pseudorandom.co.uk>
 <877exa8oap.fsf@fifthhorseman.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <877exa8oap.fsf@fifthhorseman.net>
User-Agent: NeoMutt/20170609 (1.8.3)
Date: Thu, 7 Sep 2017 21:38:11 +0100
From: Simon McVittie <smcv@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2017-12847: nagios-core privilege escalation
 via PID file manipulation
To: oss-security@lists.openwall.com

On Thu, 07 Sep 2017 at 12:29:50 -0400, Daniel Kahn Gillmor wrote:
> On Thu 2017-09-07 16:27:25 +0100, Simon McVittie wrote:
> > Ideally, the sequence of events would be something that ensures that
> > the pid file already exists by the time readiness has been announced,
> > like this pseudocode:
> >
> >     have the necessary privileges to write a pid file
> >     fork
> >     if (parent) {
> >         write child pid to pid file
> >         exit    /* tells supervisor we are ready */
> >     }
> >     else /* child */ {
> >         drop privileges
> >         while (1) { process request }
> >     }
> 
> Is there a potential race condition here?  for example, if dropping
> privileges takes some amount of time, or if there is additional setup
> that ought to be done as non-root (building tables, pre-processing a
> dataset from the filesystem, initializing a PRNG), then this pattern is
> actually pretty hard to get right as a notification.

I was assuming a structure a bit like dbus-daemon, which calls bind()
and listen() while still privileged before forking. It does do some
additional setup as non-root after dropping privileges, but if a
client connects during that window, the client's socket will just block
for a short time (whether that means actually blocking or EAGAIN is up
to the client), until the dbus-daemon is ready to enter its main loop.
It won't get ECONNREFUSED, because the socket is already listening
(assuming the socket backlog is sufficiently long to accommodate all the
clients).

The daemon doesn't need to be ready to actually do its work before
forking, only ready to take responsibility for keeping clients waiting
until it *is* ready.

>  0) if dropping privs is known to be fast, then move any lengthy
>     initialization/setup into the root/pre-fork side.  this is a
>     violation of the principle of least privilege.

Arguably yes, but putting a minimal amount of setup before forking closes
the race condition, and some of that setup is probably going to need
privileges anyway (for example web servers that want to listen on port
80, or dbus-daemon --system which wants to listen on the root-owned
/var/run/dbus/system_bus_socket).

    S
