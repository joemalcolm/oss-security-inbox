X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1193" "Monday" "22" "August" "2016" "15:58:02" "+0300" "Jani Kenttala" "jkenttal@ee.oulu.fi" "<20160822125802.GA3826@ee.oulu.fi>" "32" "Re: [oss-security] TLS testing results - OS distro vulnerabilities" "^Cc:" nil nil "8" "2016082212:58:02" "[oss-security] TLS testing results - OS distro vulnerabilities" (number mark "        jkenttal@ee. Aug 22   32/1193  " thread-indent "\"Re: [oss-security] TLS testing results - OS distro vulnerabilities\"\n") "<20160822111911.GA4540@openwall.com>" ("<DB3PR05MB217DBB2D4476DFBE907D6D8BE170@DB3PR05MB217.eurprd05.prod.outlook.com>" "<20160822084624.i4dbedj35qd3p22j@jwilk.net>" "<20160822111911.GA4540@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5627 invoked by uid 550); 22 Aug 2016 13:08:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32097 invoked from network); 22 Aug 2016 12:58:27 -0000
Message-ID: <20160822125802.GA3826@ee.oulu.fi>
References: <DB3PR05MB217DBB2D4476DFBE907D6D8BE170@DB3PR05MB217.eurprd05.prod.outlook.com>
 <20160822084624.i4dbedj35qd3p22j@jwilk.net>
 <20160822111911.GA4540@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160822111911.GA4540@openwall.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: oss-security@lists.openwall.com,
        Mauri Miettinen <Mauri.Miettinen@student.oulu.fi>, ouspg@ee.oulu.fi
Date: Mon, 22 Aug 2016 15:58:02 +0300
From: Jani Kenttala <jkenttal@ee.oulu.fi>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] TLS testing results - OS distro vulnerabilities
To: Solar Designer <solar@openwall.com>

On Mon, Aug 22, 2016 at 02:19:11PM +0300, Solar Designer wrote:
> On Mon, Aug 22, 2016 at 10:46:24AM +0200, Jakub Wilk wrote:
> > * Mauri Miettinen <Mauri.Miettinen@student.oulu.fi>, 2016-08-20, 16:50:
-snip-
> > >Results are available from:
> > >
> > >https://github.com/ouspg/trytls/blob/shootout-0.3/shootout/README.md
> > 
> > How did you manage to run tests against Debian 7 (wheezy)? Your setup.py 
> > requires Python 2.7.9 or 3.4.0, but wheezy has only 2.7.3/3.2.3.
> 
> I think Mauri isn't subscribed - CC'ing.
> 
> Alexander

Hi!

We used self-compiled python to run the tests against the older python bundled with the OS 
(see Dockerfile at https://github.com/ouspg/trytls/blob/shootout-0.3/shootout/debian-7/Dockerfile).

To elaborate a bit, we are actually looking two different set of requirements.

1) TryTLS runner itself requires 2.7.9 or 3.4.0
2) However, it can call older python version (or what ever command) when executing the tests.

That being said, python2-urllib2 did not execute cleanly with 2.7.3. 
There is a pull request about that <https://github.com/ouspg/trytls/pull/237>, 
and the corresponding result has been marked as N/A in the summary table.

-- 
-Jani

