X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3636" "Thursday" "7" "September" "2017" "16:27:25" "+0100" "Simon McVittie" "smcv@debian.org" "<20170907151829.lff5etqqtwceqvq4@perpetual.pseudorandom.co.uk>" "86" "Re: [oss-security] CVE-2017-12847: nagios-core privilege escalation via PID file manipulation" "^Date:" nil nil "9" "2017090715:27:25" "[oss-security] CVE-2017-12847: nagios-core privilege escalation via PID file manipulation" (number mark "        smcv@debian. Sep  7   86/3636  " thread-indent "\"Re: [oss-security] CVE-2017-12847: nagios-core privilege escalation via PID file manipulation\"\n") "<fb6b7e2d-977d-7eae-346e-a638f806bf34@orlitzky.com>" ("<f28badcd-c805-3fa5-5a1f-cd65c4899885@orlitzky.com>" "<87wp63jgxn.fsf@fifthhorseman.net>" "<2199434f-d7b6-0d01-9fbc-ed2d013a09d3@orlitzky.com>" "<87ingva5rf.fsf@fifthhorseman.net>" "<fb6b7e2d-977d-7eae-346e-a638f806bf34@orlitzky.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17954 invoked by uid 550); 7 Sep 2017 15:27:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17936 invoked from network); 7 Sep 2017 15:27:41 -0000
Message-ID: <20170907151829.lff5etqqtwceqvq4@perpetual.pseudorandom.co.uk>
References: <f28badcd-c805-3fa5-5a1f-cd65c4899885@orlitzky.com>
 <87wp63jgxn.fsf@fifthhorseman.net>
 <2199434f-d7b6-0d01-9fbc-ed2d013a09d3@orlitzky.com>
 <87ingva5rf.fsf@fifthhorseman.net>
 <fb6b7e2d-977d-7eae-346e-a638f806bf34@orlitzky.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fb6b7e2d-977d-7eae-346e-a638f806bf34@orlitzky.com>
User-Agent: NeoMutt/20170609 (1.8.3)
Date: Thu, 7 Sep 2017 16:27:25 +0100
From: Simon McVittie <smcv@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2017-12847: nagios-core privilege escalation
 via PID file manipulation
To: oss-security@lists.openwall.com

On Thu, 07 Sep 2017 at 08:38:23 -0400, Michael Orlitzky wrote:
> supervised:
> 
>   4. Daemon runs in the foreground, and does nothing special

If other services can depend on this daemon (for example situations like
"NetworkManager must start after dbus-daemon is ready" or "ntpd must
start after syslogd is ready"), then it frequently does need to do
something special, to tell larger infrastructure when it is ready to
satisfy dependencies.

systemd implements several mechanisms for this: the daemon can fork (as
below; Type=forking in systemd jargon), or it can request a D-Bus name
(Type=dbus), or it can send a systemd-specific message over a Unix socket
(Type=notify). For simplicity, Type=dbus and Type=notify daemons should
normally "stay in the foreground" and not fork, although I don't think
that's actually required (systemd can supervise them regardless).
systemd units (configuration/integration files) typically set a desired
Type, then run the daemon with appropriate command-line options to make
it behave in a way that matches the Type.

Other init/rc systems can implement whatever mechanisms they want to for
readiness notification, but they typically have *something*. I've seen
some (runit) that advocate having dependent services just fail and exit
when their dependencies are not satisfied, using a retry loop to get
them started successfully, and not telling the service manager anything
about the dependency tree; but that seems like the exception rather than
the rule.

> Forking,
> 
>   1. Daemon forks
>   2. Daemon writes a PID file
>   3. Daemon drops privileges

Forking is not just for backgrounding, it's also a form of semi-explicit
readiness-notification. In a world of sysv-style shell init scripts,
an easy way to implement the common semantics "wait for daemon to be
ready to accept requests and satisfy other daemons' dependencies, then
return" is to have the daemon use the forking pattern like daemon(3).
Then the shell script does something like:

    #!/bin/sh
    case "$1" in
        (start)
            dbus-daemon --system --fork \
                --address=unix:/var/run/dbus/system_bus_socket
            exit 0
            ;;
        ...
    esac

which means it won't exit until the initial process of the daemon
has exited, for example because it has called daemon(3) or equivalent.
A well-behaved daemon that implements this pattern will make sure not to
call daemon(3) until it is ready to accept requests and satisfy other
daemons' dependencies. For example, in the dbus-daemon invocation in
my shell script fragment above, dbus-daemon has already called bind()
and listen() on /var/run/dbus/system_bus_socket before it daemonizes
(double-forks), so as soon as it daemonizes, clients can rely on being
able to connect() to that address without a race condition causing them
to fail.

Some service supervisors (in particular I'm aware of systemd and Upstart)
identify and track this forking pattern as a way to know when dependencies
on this daemon can be assumed to be satisfied. This is orthogonal to
whether they supervise the daemon - systemd will certainly do so whether
the daemon forks or not, and I think Upstart does too.

Ideally, the sequence of events would be something that ensures that
the pid file already exists by the time readiness has been announced,
like this pseudocode:

    have the necessary privileges to write a pid file
    fork
    if (parent) {
        write child pid to pid file
        exit    /* tells supervisor we are ready */
    }
    else /* child */ {
        drop privileges
        while (1) { process request }
    }

Regards,
    smcv
