X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["869" "Tuesday" "7" "November" "2017" "18:19:04" "+0000" "Simon McVittie" "smcv@debian.org" "<20171107181904.eu7gdgk43bdacvot@perpetual.pseudorandom.co.uk>" "21" "Re: [oss-security] Net::Ping::External command injections" "^Date:" nil nil "11" "2017110718:19:04" "[oss-security] Net::Ping::External command injections" (number mark "        smcv@debian. Nov  7   21/869   " thread-indent "\"Re: [oss-security] Net::Ping::External command injections\"\n") "<20171107165127.GA1693@weckbecker.name>" ("<20171107165127.GA1693@weckbecker.name>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22036 invoked by uid 550); 7 Nov 2017 18:19:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22001 invoked from network); 7 Nov 2017 18:19:19 -0000
Message-ID: <20171107181904.eu7gdgk43bdacvot@perpetual.pseudorandom.co.uk>
References: <20171107165127.GA1693@weckbecker.name>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171107165127.GA1693@weckbecker.name>
User-Agent: NeoMutt/20170609 (1.8.3)
Date: Tue, 7 Nov 2017 18:19:04 +0000
From: Simon McVittie <smcv@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Net::Ping::External command injections
To: oss-security@lists.openwall.com

On Tue, 07 Nov 2017 at 17:51:27 +0100, Matthias Weckbecker wrote:
> Net::Ping::External [0] is prone to command injection vulnerabilities.
> 
> The issues are roughly 10 (!) years old [1], but the code is still being
> shipped these days (e.g. in ubuntu artful and debian stretch [2]).

I've reported this to the Debian bug tracking system,
https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=881097

In Ubuntu, libnet-ping-external is in the unsupported 'universe' archive
area, making it unlikely to be fixed there regardless of its status in
Debian.

> Or drop this pkg. altogether?

For what it's worth, Debian's archive maintenance software says nothing
in unstable, stable or oldstable depends on this package, so there is no
particular barrier to removing it (and bugs in it hopefully only affect
locally-installed scripts, not anything else in Debian).

    smcv
