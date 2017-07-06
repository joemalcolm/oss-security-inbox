X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2145" "Thursday" "6" "July" "2017" "13:17:55" "+0100" "Simon McVittie" "smcv@debian.org" "<20170706121755.nhem2vlrtsvzr22g@perpetual.pseudorandom.co.uk>" "39" "Re: [oss-security] systemd fails to parse user that should run service" "^Date:" nil nil "7" "2017070612:17:55" "[oss-security] systemd fails to parse user that should run service" (number mark "        smcv@debian. Jul  6   39/2145  " thread-indent "\"Re: [oss-security] systemd fails to parse user that should run service\"\n") "<20c62ff4-6650-b0f0-0343-fe5c0c7ce85b@slackware.com>" ("<VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>" "<20170705085034.GA2638@pali>" "<CABMkiz7jqqJNjL==jrLXWPjJpDgx4r+_ZmnYFq5aJqBn9eAKCA@mail.gmail.com>" "<20170705170556.146ce33d@jabberwock.cb.piermont.com>" "<20170705211451.GA16241@hurricane.linuxnetz.de>" "<20c62ff4-6650-b0f0-0343-fe5c0c7ce85b@slackware.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11944 invoked by uid 550); 6 Jul 2017 12:18:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11908 invoked from network); 6 Jul 2017 12:18:33 -0000
Message-ID: <20170706121755.nhem2vlrtsvzr22g@perpetual.pseudorandom.co.uk>
References: <VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>
 <20170705085034.GA2638@pali>
 <CABMkiz7jqqJNjL==jrLXWPjJpDgx4r+_ZmnYFq5aJqBn9eAKCA@mail.gmail.com>
 <20170705170556.146ce33d@jabberwock.cb.piermont.com>
 <20170705211451.GA16241@hurricane.linuxnetz.de>
 <20c62ff4-6650-b0f0-0343-fe5c0c7ce85b@slackware.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20c62ff4-6650-b0f0-0343-fe5c0c7ce85b@slackware.com>
User-Agent: NeoMutt/20170609 (1.8.3)
Date: Thu, 6 Jul 2017 13:17:55 +0100
From: Simon McVittie <smcv@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] systemd fails to parse user that should run
 service
To: oss-security@lists.openwall.com

On Wed, 05 Jul 2017 at 17:26:47 -0500, Patrick J. Volkerding wrote:
> On 07/05/2017 04:14 PM, Robert Scheck wrote:
> > +1 for both, the CVE and that this is a problem. The service should not be
> > started with more (!) permissions simply if parsing username fails.
> 
> One would think that without any User= line specified, defaulting to
> nobody:nogroup would be more sane than defaulting to root. Since the
> User= mechanism exists, if you want something to run as root, you should
> need to ask for it.

System services running as root are the common case: it's extremely
common for a system service to either run as root all the time (e.g.
BlueZ, ConnMan, NetworkManager), or start as root, do some privileged
setup and drop privileges (e.g. dbus-daemon --system boosts its own file
descriptor rlimit to mitigate denial of service attacks, before dropping
privileges to a non-root user with no capabilities except possibly
CAP_AUDIT_WRITE). systemd units are analogous to LSB init scripts,
which all start as root, and drop privileges internally if they want to.

Forcing User= to be explicitly given in every unit is certainly a design
that the systemd developers could have chosen (dbus-daemon --system
does make specifying a User compulsory in activatable system services'
.service files, and will refuse to start the service without it). However,
they didn't, and if they went back on that decision now, it would be a
major compatibility break. You could call that a denial of service if
you want to put it in more security-ish terms? :-)

Technically, I think the default is "don't change uid" rather than
"change to root", although the practical effect is the same for pid
1. systemd is also used as a per-user service manager, where User= would
be inappropriate (and not work), and every service runs as the same uid
as the `systemd --user` instance itself.

Dropping privileges to nobody:nogroup is inappropriate, because services
running as nobody are not protected from other services running as nobody.
If a service does not need special privileges, then it should run as a
system user that is only used by that service.

    S
