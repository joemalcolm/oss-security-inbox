X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["513" "Wednesday" "5" "July" "2017" "14:02:23" "+0200" "Casper.Dik@oracle.com" "Casper.Dik@oracle.com" "<201707051202.v65C2NDB005864@room101.nl.oracle.com>" "17" "Re: [oss-security] systemd fails to parse user that should run service " "^cc:" nil nil "7" "2017070512:02:23" "[oss-security] systemd fails to parse user that should run service" (number mark "        Casper.Dik@o Jul  5   17/513   " thread-indent "\"Re: [oss-security] systemd fails to parse user that should run service \"\n") "<20170705085034.GA2638@pali>" ("<VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>" "<20170705085034.GA2638@pali>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20423 invoked by uid 550); 5 Jul 2017 12:37:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22088 invoked from network); 5 Jul 2017 12:12:12 -0000
Message-Id: <201707051202.v65C2NDB005864@room101.nl.oracle.com>
In-Reply-To: <20170705085034.GA2638@pali> 
References: <VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com> <20170705085034.GA2638@pali> 
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
X-Source-IP: userv0022.oracle.com [156.151.31.74]
cc: Daniel =?utf-8?Q?Skowro=C5=84ski?= <daniel@dsinf.net>
Date: Wed, 05 Jul 2017 14:02:23 +0200
From: Casper.Dik@oracle.com
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] systemd fails to parse user that should run service 
To: oss-security@lists.openwall.com



>2) If user name specified in systemd unit file is syntactically correct
>(according to systemd check) but user name does not exist then systemd
>refuse to start that unit.
>

Should systemd really valid usernames?  I would think that you would 
either use getpwnam(username) and if that fails you may then parse it as a 
numeric value.  If "0day" isn't a valid username according to getpwnam(), 
when converting it to a numeric uid should *also* fail because "0day" 
isn't a properly numeric value.

Casper



