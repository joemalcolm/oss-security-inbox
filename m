X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2396" "Wednesday" "5" "July" "2017" "13:27:21" "+0200" "Marcus Meissner" "meissner@suse.de" "<20170705112721.GB28379@suse.de>" "62" "Re: [oss-security] systemd fails to parse user that should run service" "^Cc:" nil nil "7" "2017070511:27:21" "[oss-security] systemd fails to parse user that should run service" (number mark "        meissner@sus Jul  5   62/2396  " thread-indent "\"Re: [oss-security] systemd fails to parse user that should run service\"\n") "<20170705085034.GA2638@pali>" ("<VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>" "<20170705085034.GA2638@pali>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3246 invoked by uid 550); 5 Jul 2017 11:27:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3224 invoked from network); 5 Jul 2017 11:27:33 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20170705112721.GB28379@suse.de>
References: <VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>
 <20170705085034.GA2638@pali>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20170705085034.GA2638@pali>
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: Daniel =?utf-8?Q?Skowro=C5=84ski?= <daniel@dsinf.net>
Date: Wed, 5 Jul 2017 13:27:21 +0200
From: Marcus Meissner <meissner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] systemd fails to parse user that should run
 service
To: oss-security@lists.openwall.com

On Wed, Jul 05, 2017 at 10:50:34AM +0200, Pali Rohár wrote:
> On Sunday 02 July 2017 12:02 Daniel Skowroński wrote:
> > Hi all,
> > 
> > Just wanted to bring attention to issue with systemd not doing what is
> > expected when parsing User that should run service.
> > When it fails to parse string starting with digit it fails back to root
> > causing obvious threat to security.
> > 
> > See discussion with developer on github:
> > https://github.com/systemd/systemd/issues/6237
> > 
> > Best,
> > -Daniel Skowronski
> 
> Hi!
> 
> There are basically two problems:
> 
> 1) In more Linux distributions useradd tool allow to create a new user
> which starts with digit. Also according to POSIX such user name is a
> valid. This means that valid user name (for some Linux distributions)
> from /etc/passwd specified in systemd unit file results running service
> as root user.
> 
> 2) If user name specified in systemd unit file is syntactically correct
> (according to systemd check) but user name does not exist then systemd
> refuse to start that unit.
> 
> Which leads to problem that syntactically invalid user name (for
> systemd) results in root user and syntactically valid non-existent user
> name cause error.
> 
> Because check if user name is valid is different in systemd as specified
> in POSIX and also different as in useradd tool supplied by some Linux
> distributions, I see this as a security problem when processing invalid
> input from configuration unit file.
> 
> Correct behaviour should be to throw error also when garbage (invalid
> user name), according to internal systemd check, was specified. And not
> start service under root user with high privileges.
> 
> Because of this I would suggest to ask for CVE identifier, so Linux
> distributions can mitigate or decide how to handle this problem.
> 
> Linux distributions which follow POSIX standard when creating new users
> are affected by this.
> 
> Please note that above bug tracker on github is locked for future
> discussion, which means it is not possible to ask for more details or
> continue discussion in upstream.
> 
> Which is really *bad* for security related problems.
> 
> What do you think, how should be this problem handled?

One of SUSEs systemd developer is developing a patch, that fails the unit
when parsing the username fails.

https://bugzilla.suse.com/show_bug.cgi?id=1047023

Ciao, Marcus
