X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2468" "Wednesday" "5" "July" "2017" "14:53:20" "+0100" "Simon McVittie" "smcv@debian.org" "<20170705135320.ue7fojrds4tu2vpp@perpetual.pseudorandom.co.uk>" "52" "Re: [oss-security] systemd fails to parse user that should run service" "^Cc:" nil nil "7" "2017070513:53:20" "[oss-security] systemd fails to parse user that should run service" (number mark "        smcv@debian. Jul  5   52/2468  " thread-indent "\"Re: [oss-security] systemd fails to parse user that should run service\"\n") "<201707051202.v65C2NDB005864@room101.nl.oracle.com>" ("<VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>" "<20170705085034.GA2638@pali>" "<201707051202.v65C2NDB005864@room101.nl.oracle.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30505 invoked by uid 550); 5 Jul 2017 13:54:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30487 invoked from network); 5 Jul 2017 13:54:02 -0000
Message-ID: <20170705135320.ue7fojrds4tu2vpp@perpetual.pseudorandom.co.uk>
References: <VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>
 <20170705085034.GA2638@pali>
 <201707051202.v65C2NDB005864@room101.nl.oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <201707051202.v65C2NDB005864@room101.nl.oracle.com>
User-Agent: NeoMutt/20170609 (1.8.3)
Cc: Daniel =?utf-8?Q?Skowro=C5=84ski?= <daniel@dsinf.net>
Date: Wed, 5 Jul 2017 14:53:20 +0100
From: Simon McVittie <smcv@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] systemd fails to parse user that should run
 service
To: oss-security@lists.openwall.com

On Wed, 05 Jul 2017 at 14:02:23 +0200, Casper.Dik@oracle.com wrote:
> >2) If user name specified in systemd unit file is syntactically correct
> >(according to systemd check) but user name does not exist then systemd
> >refuse to start that unit.
> 
> Should systemd really valid usernames?  I would think that you would 
> either use getpwnam(username) and if that fails you may then parse it as a 
> numeric value.  If "0day" isn't a valid username according to getpwnam(), 
> when converting it to a numeric uid should *also* fail because "0day" 
> isn't a properly numeric value.

It *does* fail. The problem is in the handling of that failure. systemd
interprets that failure as "this line is nonsense, so behave as though the
line didn't exist" rather than "this line can be positively identified as
an attempt to name a nonexistent or unacceptable user, so fail to load
the unit". So User=7up does the same thing as User=0day - it doesn't
run as uid 7, which is 'lp' on my Debian system.

    % cat /etc/systemd/system/demo.service
    [Unit]
    Description=Demonstration

    [Service]
    Type=oneshot
    ExecStart=/usr/bin/id
    User=7up
    % sudo systemctl daemon-reload
    % sudo systemctl start demo.service
    % sudo systemctl status demo.service
    ...
    Jul 05 14:47:11 host systemd[1]: /etc/systemd/system/demo.service:7:
    Invalid user/group name or numeric ID, ignoring: 7up
    Jul 05 14:47:11 host systemd[1]: Starting Demonstration...
    Jul 05 14:47:11 host id[27282]: uid=0(root) gid=0(root) groups=0(root)
    Jul 05 14:47:11 host systemd[1]: Started Demonstration.
    Jul 05 14:47:11 host systemd[1]: /etc/systemd/system/demo.service:7:
    Invalid user/group name or numeric ID, ignoring: 7up
    Jul 05 14:47:17 host systemd[1]: /etc/systemd/system/demo.service:7:
    Invalid user/group name or numeric ID, ignoring: 7up
    Jul 05 14:48:25 host systemd[1]: /etc/systemd/system/demo.service:7:
    Invalid user/group name or numeric ID, ignoring: 7up

(The error message in the Journal is presumably repeated because systemd
re-parses User when looking for ExecStartPre, ExecStart, ExecStop and
ExecStopPost commands, even though in this case there is only ExecStart.)

The default user to run system units, if no user is specified, is root,
because for system services that's the right thing more often than not,
analogous to how LSB init scripts always run as root and can drop
privileges themselves if they want to.

    S
