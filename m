X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["921" "Thursday" "6" "July" "2017" "13:27:53" "-0600" "Leonid Isaev" "leonid.isaev@jila.colorado.edu" "<20170706192753.GA9945@takahe.colorado.edu>" "22" "Re: [oss-security] systemd fails to parse user that should run service" "^Date:" nil nil "7" "2017070619:27:53" "[oss-security] systemd fails to parse user that should run service" (number mark "        leonid.isaev Jul  6   22/921   " thread-indent "\"Re: [oss-security] systemd fails to parse user that should run service\"\n") "<20170706140207.ywcfdtsmmrh2dxmm@perpetual.pseudorandom.co.uk>" ("<VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>" "<20170705085034.GA2638@pali>" "<CABMkiz7jqqJNjL==jrLXWPjJpDgx4r+_ZmnYFq5aJqBn9eAKCA@mail.gmail.com>" "<20170705170556.146ce33d@jabberwock.cb.piermont.com>" "<20170705211451.GA16241@hurricane.linuxnetz.de>" "<20c62ff4-6650-b0f0-0343-fe5c0c7ce85b@slackware.com>" "<20170706121755.nhem2vlrtsvzr22g@perpetual.pseudorandom.co.uk>" "<20170706132816.GA3056@takahe.colorado.edu>" "<20170706140207.ywcfdtsmmrh2dxmm@perpetual.pseudorandom.co.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20003 invoked by uid 550); 6 Jul 2017 19:29:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17725 invoked from network); 6 Jul 2017 19:28:11 -0000
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.99.2 at jilau1.colorado.edu
Message-ID: <20170706192753.GA9945@takahe.colorado.edu>
Mail-Followup-To: oss-security@lists.openwall.com
References: <VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>
 <20170705085034.GA2638@pali>
 <CABMkiz7jqqJNjL==jrLXWPjJpDgx4r+_ZmnYFq5aJqBn9eAKCA@mail.gmail.com>
 <20170705170556.146ce33d@jabberwock.cb.piermont.com>
 <20170705211451.GA16241@hurricane.linuxnetz.de>
 <20c62ff4-6650-b0f0-0343-fe5c0c7ce85b@slackware.com>
 <20170706121755.nhem2vlrtsvzr22g@perpetual.pseudorandom.co.uk>
 <20170706132816.GA3056@takahe.colorado.edu>
 <20170706140207.ywcfdtsmmrh2dxmm@perpetual.pseudorandom.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170706140207.ywcfdtsmmrh2dxmm@perpetual.pseudorandom.co.uk>
User-Agent: Mutt/1.8.2 (2017-04-18)
Date: Thu, 6 Jul 2017 13:27:53 -0600
From: Leonid Isaev <leonid.isaev@jila.colorado.edu>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] systemd fails to parse user that should run
 service
To: oss-security@lists.openwall.com

On Thu, Jul 06, 2017 at 03:02:07PM +0100, Simon McVittie wrote:
> > The problem is that my new and shiny
> > script won't work as intended on old systemD versions which silently ignore
> > User= directive.
> 
> I am not aware of any such version existing. The 2010 commit
> "first attempt at proper service/socket logic", which was 6 months before
> the release of systemd version 1 and was the first commit to introduce
> ExecStart, also introduced User.

OK, but then there is no excuse to silently ignore any kind of error in
User=. If systemd can not start unit as a specified user, it must fail it, just
like ExecStart: if the command specified there is not found, it doesn't start
a random shell or a web server, right?.

I thought the current behavior of ignoring some syntax "mistakes" was put in
place by design because units have to be backwards copatible with older systemd
versions.

Cheers,
-- 
Leonid Isaev
