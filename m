X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1394" "Thursday" "6" "July" "2017" "15:02:07" "+0100" "Simon McVittie" "smcv@debian.org" "<20170706140207.ywcfdtsmmrh2dxmm@perpetual.pseudorandom.co.uk>" "30" "Re: [oss-security] systemd fails to parse user that should run service" "^Date:" nil nil "7" "2017070614:02:07" "[oss-security] systemd fails to parse user that should run service" (number mark "        smcv@debian. Jul  6   30/1394  " thread-indent "\"Re: [oss-security] systemd fails to parse user that should run service\"\n") "<20170706132816.GA3056@takahe.colorado.edu>" ("<VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>" "<20170705085034.GA2638@pali>" "<CABMkiz7jqqJNjL==jrLXWPjJpDgx4r+_ZmnYFq5aJqBn9eAKCA@mail.gmail.com>" "<20170705170556.146ce33d@jabberwock.cb.piermont.com>" "<20170705211451.GA16241@hurricane.linuxnetz.de>" "<20c62ff4-6650-b0f0-0343-fe5c0c7ce85b@slackware.com>" "<20170706121755.nhem2vlrtsvzr22g@perpetual.pseudorandom.co.uk>" "<20170706132816.GA3056@takahe.colorado.edu>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14221 invoked by uid 550); 6 Jul 2017 14:02:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14203 invoked from network); 6 Jul 2017 14:02:24 -0000
Message-ID: <20170706140207.ywcfdtsmmrh2dxmm@perpetual.pseudorandom.co.uk>
References: <VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>
 <20170705085034.GA2638@pali>
 <CABMkiz7jqqJNjL==jrLXWPjJpDgx4r+_ZmnYFq5aJqBn9eAKCA@mail.gmail.com>
 <20170705170556.146ce33d@jabberwock.cb.piermont.com>
 <20170705211451.GA16241@hurricane.linuxnetz.de>
 <20c62ff4-6650-b0f0-0343-fe5c0c7ce85b@slackware.com>
 <20170706121755.nhem2vlrtsvzr22g@perpetual.pseudorandom.co.uk>
 <20170706132816.GA3056@takahe.colorado.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170706132816.GA3056@takahe.colorado.edu>
User-Agent: NeoMutt/20170609 (1.8.3)
Date: Thu, 6 Jul 2017 15:02:07 +0100
From: Simon McVittie <smcv@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] systemd fails to parse user that should run
 service
To: oss-security@lists.openwall.com

On Thu, 06 Jul 2017 at 07:28:16 -0600, Leonid Isaev wrote:
> On Thu, Jul 06, 2017 at 01:17:55PM +0100, Simon McVittie wrote:
> > systemd units are analogous to LSB init scripts,
> > which all start as root, and drop privileges internally if they want to.
> 
> Hmm, no, no and once again no. SystemdD units are sold as something simple and
> transparent, and hence *associated with a software they launch*, not a given
> systemD/OS version.

It is entirely possible that systemd units as distributed by upstream
projects might assume features of systemd (>= some version), just like
upstream projects might assume features of glibc (>= some version) or
coreutils (>= some version) or bash (>= some version). systemd does not
magically cause dependency relationships to go away.

Some upstreams are very conservative in what dependencies they will
accept, while others are quick to add dependencies on new things if they
see an advantage. That doesn't mean the conservative projects have no
dependencies at all.

> The problem is that my new and shiny
> script won't work as intended on old systemD versions which silently ignore
> User= directive.

I am not aware of any such version existing. The 2010 commit
"first attempt at proper service/socket logic", which was 6 months before
the release of systemd version 1 and was the first commit to introduce
ExecStart, also introduced User.

    S
