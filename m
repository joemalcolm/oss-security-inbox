X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3523" "Wednesday" "5" "July" "2017" "15:50:17" "+0100" "John Haxby" "john.haxby@oracle.com" "<1b6f7cd9-2eb7-2c2d-e2e0-327cf3dd1e82@oracle.com>" "79" "Re: [oss-security] systemd fails to parse user that should run service" "^Date:" nil nil "7" "2017070514:50:17" "[oss-security] systemd fails to parse user that should run service" (number mark "        john.haxby@o Jul  5   79/3523  " thread-indent "\"Re: [oss-security] systemd fails to parse user that should run service\"\n") "<20170705135320.ue7fojrds4tu2vpp@perpetual.pseudorandom.co.uk>" ("<VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>" "<20170705085034.GA2638@pali>" "<201707051202.v65C2NDB005864@room101.nl.oracle.com>" "<20170705135320.ue7fojrds4tu2vpp@perpetual.pseudorandom.co.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9583 invoked by uid 550); 5 Jul 2017 14:50:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9564 invoked from network); 5 Jul 2017 14:50:31 -0000
References: <VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>
 <20170705085034.GA2638@pali>
 <201707051202.v65C2NDB005864@room101.nl.oracle.com>
 <20170705135320.ue7fojrds4tu2vpp@perpetual.pseudorandom.co.uk>
Message-ID: <1b6f7cd9-2eb7-2c2d-e2e0-327cf3dd1e82@oracle.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20170705135320.ue7fojrds4tu2vpp@perpetual.pseudorandom.co.uk>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 8bit
X-Source-IP: userv0022.oracle.com [156.151.31.74]
Date: Wed, 5 Jul 2017 15:50:17 +0100
From: John Haxby <john.haxby@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] systemd fails to parse user that should run
 service
To: oss-security@lists.openwall.com

On 05/07/17 14:53, Simon McVittie wrote:
> On Wed, 05 Jul 2017 at 14:02:23 +0200, Casper.Dik@oracle.com wrote:
>>> 2) If user name specified in systemd unit file is syntactically correct
>>> (according to systemd check) but user name does not exist then systemd
>>> refuse to start that unit.
>>
>> Should systemd really valid usernames?  I would think that you would 
>> either use getpwnam(username) and if that fails you may then parse it as a 
>> numeric value.  If "0day" isn't a valid username according to getpwnam(), 
>> when converting it to a numeric uid should *also* fail because "0day" 
>> isn't a properly numeric value.
> 
> It *does* fail. The problem is in the handling of that failure. systemd
> interprets that failure as "this line is nonsense, so behave as though the
> line didn't exist" rather than "this line can be positively identified as
> an attempt to name a nonexistent or unacceptable user, so fail to load
> the unit". So User=7up does the same thing as User=0day - it doesn't
> run as uid 7, which is 'lp' on my Debian system.


And therein lies the problem.  "0day" and "7up" are valid user names
according to Posix[1], they may or may not exist, but they are valid.
You may think Posix is wrong to allow an initial digit, but that isn't
the issue.  The problem is that systemd treats an "invalid" username as
either an integer or not specified and in either case this results in a
program running as the wrong user, probably as root.

Having systemd balk at what Posix considers to be a valid username is a
bug that systemd is free to say "this is stupid, we're not allowing
that".   If, as appears to be the case, systemd says "that username is
stupid, we're going to interpret it differently" then that's when we
need a CVE because, to my mind on this hot and sunny say, that's systemd
apparently doing something for security that it is not.

jch


[1]
http://pubs.opengroup.org/onlinepubs/9699919799/basedefs/V1_chap03.html#tag_03_431



> 
>     % cat /etc/systemd/system/demo.service
>     [Unit]
>     Description=Demonstration
> 
>     [Service]
>     Type=oneshot
>     ExecStart=/usr/bin/id
>     User=7up
>     % sudo systemctl daemon-reload
>     % sudo systemctl start demo.service
>     % sudo systemctl status demo.service
>     ...
>     Jul 05 14:47:11 host systemd[1]: /etc/systemd/system/demo.service:7:
>     Invalid user/group name or numeric ID, ignoring: 7up
>     Jul 05 14:47:11 host systemd[1]: Starting Demonstration...
>     Jul 05 14:47:11 host id[27282]: uid=0(root) gid=0(root) groups=0(root)
>     Jul 05 14:47:11 host systemd[1]: Started Demonstration.
>     Jul 05 14:47:11 host systemd[1]: /etc/systemd/system/demo.service:7:
>     Invalid user/group name or numeric ID, ignoring: 7up
>     Jul 05 14:47:17 host systemd[1]: /etc/systemd/system/demo.service:7:
>     Invalid user/group name or numeric ID, ignoring: 7up
>     Jul 05 14:48:25 host systemd[1]: /etc/systemd/system/demo.service:7:
>     Invalid user/group name or numeric ID, ignoring: 7up
> 
> (The error message in the Journal is presumably repeated because systemd
> re-parses User when looking for ExecStartPre, ExecStart, ExecStop and
> ExecStopPost commands, even though in this case there is only ExecStart.)
> 
> The default user to run system units, if no user is specified, is root,
> because for system services that's the right thing more often than not,
> analogous to how LSB init scripts always run as root and can drop
> privileges themselves if they want to.
> 
>     S
> 

