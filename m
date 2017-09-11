X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1133" "Monday" "11" "September" "2017" "21:21:42" "+0100" "Simon McVittie" "smcv@debian.org" "<20170911202142.rnfiesjl7mjho4pg@perpetual.pseudorandom.co.uk>" "23" "Re: [oss-security] CVE-2017-12847: nagios-core privilege escalation via PID file manipulation" nil nil nil "9" "2017091120:21:42" "[oss-security] CVE-2017-12847: nagios-core privilege escalation via PID file manipulation" (number mark "U       smcv@debian. Sep 11   23/1133  " thread-indent "\"Re: [oss-security] CVE-2017-12847: nagios-core privilege escalation via PID file manipulation\"\n") "<8662b4c6-c830-bb09-0414-67e4aa52981d@orlitzky.com>" ("<f28badcd-c805-3fa5-5a1f-cd65c4899885@orlitzky.com>" "<87wp63jgxn.fsf@fifthhorseman.net>" "<2199434f-d7b6-0d01-9fbc-ed2d013a09d3@orlitzky.com>" "<87ingva5rf.fsf@fifthhorseman.net>" "<fb6b7e2d-977d-7eae-346e-a638f806bf34@orlitzky.com>" "<87a8268ong.fsf@fifthhorseman.net>" "<8662b4c6-c830-bb09-0414-67e4aa52981d@orlitzky.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15526 invoked by uid 550); 11 Sep 2017 20:21:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15504 invoked from network); 11 Sep 2017 20:21:59 -0000
Date: Mon, 11 Sep 2017 21:21:42 +0100
From: Simon McVittie <smcv@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20170911202142.rnfiesjl7mjho4pg@perpetual.pseudorandom.co.uk>
References: <f28badcd-c805-3fa5-5a1f-cd65c4899885@orlitzky.com>
 <87wp63jgxn.fsf@fifthhorseman.net>
 <2199434f-d7b6-0d01-9fbc-ed2d013a09d3@orlitzky.com>
 <87ingva5rf.fsf@fifthhorseman.net>
 <fb6b7e2d-977d-7eae-346e-a638f806bf34@orlitzky.com>
 <87a8268ong.fsf@fifthhorseman.net>
 <8662b4c6-c830-bb09-0414-67e4aa52981d@orlitzky.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8662b4c6-c830-bb09-0414-67e4aa52981d@orlitzky.com>
User-Agent: NeoMutt/20170609 (1.8.3)
Subject: Re: [oss-security] CVE-2017-12847: nagios-core privilege escalation
 via PID file manipulation

On Mon, 11 Sep 2017 at 15:58:45 -0400, Michael Orlitzky wrote:
> With OpenRC
> we get to cheat a little, because we always have the option to run the
> daemon in the foreground and supervise it.

For SysV, if you don't need readiness-notification (for daemons that
other daemons don't depend on, so the ones where Type=simple would be
acceptable in a systemd unit) then Debian's start-stop-daemon can provide
the daemonization, and create a pid file if desired. This isn't proper
supervision, but does give the ability to write the daemon as though it
relied on being supervised.

start-stop-daemon is shipped as part of dpkg for historical reasons, but
I doubt it changes very often. If SysV init script writers wanted to spin
it off into a separate upstream project, then it could perhaps eventually
become non-Essential in Debian (since it isn't necessary if a machine boots
with systemd and all the daemons on that machine have native systemd units),
and that seems like a potential win for everyone?

(Also, one of the most vocally SysV-based distributions is a
Debian derivative, so they have start-stop-daemon anyway.)

    S
