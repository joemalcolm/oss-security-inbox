X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1005" "Wednesday" "27" "January" "2016" "11:07:17" "-0700" "Richard Johnson" "rdump@river.com" "<56A90755.2030706@river.com>" "27" "Re: [oss-security] shodan.io actively infiltrating ntp.org IPv6 pools for scanning purposes" "^Cc:" nil nil "1" "2016012718:07:17" "[oss-security] shodan.io actively infiltrating ntp.org IPv6 pools for scanning purposes" (number mark "        rdump@river. Jan 27   27/1005  " thread-indent "\"Re: [oss-security] shodan.io actively infiltrating ntp.org IPv6 pools for scanning purposes\"\n") "<CAOp4FwR2S=DRH2TDp_sFPbaDPRUf=-bcmTJxa0+tyP52_xvejw@mail.gmail.com>" ("<2413003.GtkKFizscD@chimera>" "<CAOp4FwR2S=DRH2TDp_sFPbaDPRUf=-bcmTJxa0+tyP52_xvejw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16012 invoked by uid 550); 28 Jan 2016 04:33:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13337 invoked from network); 27 Jan 2016 18:07:32 -0000
References: <2413003.GtkKFizscD@chimera>
 <CAOp4FwR2S=DRH2TDp_sFPbaDPRUf=-bcmTJxa0+tyP52_xvejw@mail.gmail.com>
Message-ID: <56A90755.2030706@river.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:38.0)
 Gecko/20100101 Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <CAOp4FwR2S=DRH2TDp_sFPbaDPRUf=-bcmTJxa0+tyP52_xvejw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Cc: pool@lists.ntp.org, team@security.debian.org, secalert@redhat.com
Date: Wed, 27 Jan 2016 11:07:17 -0700
From: Richard Johnson <rdump@river.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] shodan.io actively infiltrating ntp.org IPv6 pools
 for scanning purposes
To: oss-security@lists.openwall.com

On 2016-01-27 06:05, Loganaden Velvindron wrote:
> Shouldn't we have some kind of policy for operators participating in
> pool.ntp.org to prevent such issues ?


If the issue is 'port scanning by the IPv6 NTP pool participant', why bother?

Any IPv6 NTP pool provider will naturally have peer IPv6 addresses to use and
record. It's one way that researchers at measurement organizations already
track IPv6 use and growth.

Others can, do, and will use popular public services like NTP to enumerate and
record active peer addresses as well. And some of those others will do things
with that data.

A policy that says "do not log peer addresses" would be nice for privacy
reasons, and bad for maintenance reasons. Practically speaking, violations
will be undetectable, and it'll be unenforceable.

Maybe a policy that says 'do not engage in DoS' instead?

Either way, when we don't want to be scanned, regardless of how the scanner
gets their target addresses, we tend to use perimeter firewalls.


Richard

