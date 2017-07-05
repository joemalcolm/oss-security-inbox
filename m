X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["855" "Wednesday" "5" "July" "2017" "17:47:11" "+0100" "Simon McVittie" "smcv@debian.org" "<20170705164711.nbu6ltcyeyfql3ol@perpetual.pseudorandom.co.uk>" "18" "Re: [oss-security] systemd fails to parse user that should run service" "^Date:" nil nil "7" "2017070516:47:11" "[oss-security] systemd fails to parse user that should run service" (number mark "        smcv@debian. Jul  5   18/855   " thread-indent "\"Re: [oss-security] systemd fails to parse user that should run service\"\n") "<1499269723.28229.2.camel@gmail.com>" ("<VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>" "<20170705085034.GA2638@pali>" "<201707051202.v65C2NDB005864@room101.nl.oracle.com>" "<20170705135320.ue7fojrds4tu2vpp@perpetual.pseudorandom.co.uk>" "<1b6f7cd9-2eb7-2c2d-e2e0-327cf3dd1e82@oracle.com>" "<1499267174.28229.1.camel@gmail.com>" "<efcc5a85-2d36-7659-9c98-18945a4f70f9@oracle.com>" "<1499269723.28229.2.camel@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30141 invoked by uid 550); 5 Jul 2017 16:47:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30117 invoked from network); 5 Jul 2017 16:47:29 -0000
Message-ID: <20170705164711.nbu6ltcyeyfql3ol@perpetual.pseudorandom.co.uk>
References: <VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>
 <20170705085034.GA2638@pali>
 <201707051202.v65C2NDB005864@room101.nl.oracle.com>
 <20170705135320.ue7fojrds4tu2vpp@perpetual.pseudorandom.co.uk>
 <1b6f7cd9-2eb7-2c2d-e2e0-327cf3dd1e82@oracle.com>
 <1499267174.28229.1.camel@gmail.com>
 <efcc5a85-2d36-7659-9c98-18945a4f70f9@oracle.com>
 <1499269723.28229.2.camel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1499269723.28229.2.camel@gmail.com>
User-Agent: NeoMutt/20170609 (1.8.3)
Date: Wed, 5 Jul 2017 17:47:11 +0100
From: Simon McVittie <smcv@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] systemd fails to parse user that should run
 service
To: oss-security@lists.openwall.com

On Wed, 05 Jul 2017 at 11:48:43 -0400, Daniel Micay wrote:
> It seems some distributions get useradd/userdel from somewhere else.

shadow and util-linux have a lot of overlap. Fedora has historically
used util-linux for as much as possible; Debian has historically used
shadow, but is gradually moving towards util-linux because in practice
it's more actively maintained; other distributions I don't know. The
major user-visible difference has usually been differing su behaviour.

> Maybe you have adduser from shadow? It'd be funny if they had different
> rules enforced even for adduser vs. useradd...

In Debian and its derivatives there are certainly different rules. useradd
is the mechanism layer, and adduser is a Debian-specific policy layer (for
instance adduser rejects weird/inadvisable usernames unless given an option
to force them).

    S
