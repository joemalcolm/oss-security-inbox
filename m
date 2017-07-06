X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1334" "Thursday" "6" "July" "2017" "07:28:16" "-0600" "Leonid Isaev" "leonid.isaev@jila.colorado.edu" "<20170706132816.GA3056@takahe.colorado.edu>" "25" "Re: [oss-security] systemd fails to parse user that should run service" "^Date:" nil nil "7" "2017070613:28:16" "[oss-security] systemd fails to parse user that should run service" (number mark "        leonid.isaev Jul  6   25/1334  " thread-indent "\"Re: [oss-security] systemd fails to parse user that should run service\"\n") "<20170706121755.nhem2vlrtsvzr22g@perpetual.pseudorandom.co.uk>" ("<VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>" "<20170705085034.GA2638@pali>" "<CABMkiz7jqqJNjL==jrLXWPjJpDgx4r+_ZmnYFq5aJqBn9eAKCA@mail.gmail.com>" "<20170705170556.146ce33d@jabberwock.cb.piermont.com>" "<20170705211451.GA16241@hurricane.linuxnetz.de>" "<20c62ff4-6650-b0f0-0343-fe5c0c7ce85b@slackware.com>" "<20170706121755.nhem2vlrtsvzr22g@perpetual.pseudorandom.co.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7471 invoked by uid 550); 6 Jul 2017 13:34:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3289 invoked from network); 6 Jul 2017 13:28:32 -0000
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.99.2 at jilau1.colorado.edu
Message-ID: <20170706132816.GA3056@takahe.colorado.edu>
Mail-Followup-To: oss-security@lists.openwall.com
References: <VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>
 <20170705085034.GA2638@pali>
 <CABMkiz7jqqJNjL==jrLXWPjJpDgx4r+_ZmnYFq5aJqBn9eAKCA@mail.gmail.com>
 <20170705170556.146ce33d@jabberwock.cb.piermont.com>
 <20170705211451.GA16241@hurricane.linuxnetz.de>
 <20c62ff4-6650-b0f0-0343-fe5c0c7ce85b@slackware.com>
 <20170706121755.nhem2vlrtsvzr22g@perpetual.pseudorandom.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170706121755.nhem2vlrtsvzr22g@perpetual.pseudorandom.co.uk>
User-Agent: Mutt/1.8.2 (2017-04-18)
Date: Thu, 6 Jul 2017 07:28:16 -0600
From: Leonid Isaev <leonid.isaev@jila.colorado.edu>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] systemd fails to parse user that should run
 service
To: oss-security@lists.openwall.com

On Thu, Jul 06, 2017 at 01:17:55PM +0100, Simon McVittie wrote:
> systemd units are analogous to LSB init scripts,
> which all start as root, and drop privileges internally if they want to.

Hmm, no, no and once again no. SystemdD units are sold as something simple and
transparent, and hence *associated with a software they launch*, not a given
systemD/OS version. In contrast, init scripts are specific to a distibution
(would you just run init scripts from Debian on a CentOS or ArchLinux?)

For example, if I maintain a backup script that drops privileges via su(1), I
can use the wonderful systemD unit syntax, specify User=xxx and have my package
manager install that user in post_install. The problem is that my new and shiny
script won't work as intended on old systemD versions which silently ignore
User= directive. This situation is far worse than a simple failure to properly
parse User= config string that seems to so much excite ppl, as it obsoletes
the User= directive and perhaps others too. I'm far from sysadmin culture, but
is this called "sh*t hitting the fan"?

So, the lesson for all developers would be to rely on systemD features as
LITTLE as possible and do all important privilege stuff inside their software.
SystemD units should therefore only contain Exec{Start,Stop,Restart}=.

Cheers,
-- 
Leonid Isaev
