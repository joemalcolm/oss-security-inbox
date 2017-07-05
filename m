X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2029" "Wednesday" "5" "July" "2017" "17:05:56" "-0400" "Perry E. Metzger" "perry@piermont.com" "<20170705170556.146ce33d@jabberwock.cb.piermont.com>" "49" "Re: [oss-security] systemd fails to parse user that should run service" "^Cc:" nil nil "7" "2017070521:05:56" "[oss-security] systemd fails to parse user that should run service" (number mark "        perry@piermo Jul  5   49/2029  " thread-indent "\"Re: [oss-security] systemd fails to parse user that should run service\"\n") "<CABMkiz7jqqJNjL==jrLXWPjJpDgx4r+_ZmnYFq5aJqBn9eAKCA@mail.gmail.com>" ("<VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>" "<20170705085034.GA2638@pali>" "<CABMkiz7jqqJNjL==jrLXWPjJpDgx4r+_ZmnYFq5aJqBn9eAKCA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16089 invoked by uid 550); 5 Jul 2017 21:06:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16061 invoked from network); 5 Jul 2017 21:06:08 -0000
Message-ID: <20170705170556.146ce33d@jabberwock.cb.piermont.com>
In-Reply-To: <CABMkiz7jqqJNjL==jrLXWPjJpDgx4r+_ZmnYFq5aJqBn9eAKCA@mail.gmail.com>
References: <VI1PR04MB310470DAAF5F79C8BA8AE789D6D10@VI1PR04MB3104.eurprd04.prod.outlook.com>
	<20170705085034.GA2638@pali>
	<CABMkiz7jqqJNjL==jrLXWPjJpDgx4r+_ZmnYFq5aJqBn9eAKCA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: oss-security@lists.openwall.com, Daniel =?UTF-8?Q?Skowro=C5=84ski?=
 <daniel@dsinf.net>
Date: Wed, 5 Jul 2017 17:05:56 -0400
From: "Perry E. Metzger" <perry@piermont.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] systemd fails to parse user that should run
 service
To: Ben Tasker <ben@bentasker.co.uk>

On Wed, 5 Jul 2017 13:28:43 +0100 Ben Tasker <ben@bentasker.co.uk>
wrote:
> You'd really hope it'd be consistent. If they want to enforce a
> policy that user names cannot start with a digit (which as
> Poettering notes, many distro's do) that's fine, but the resulting
> behaviour should be safe, well defined and expected. I wouldn't say
> running the service as root falls under that definition, personally.

1) However, not all distributions enforce such a rule, and a has been
noted, such a rule doesn't exist in POSIX. Indeed, a quick check on a
PDP-11 simulator demonstrates that Unix at least back to v7 handled
such names without trouble.

2) The lack of fail safety is disturbing. It is probably important for
systems code like this to always fail safely, rather than unsafely.

> Honestly, I think upstream have done an *awful *job of handling it
> so far (and it's far from the only example of Poettering taking the
> not-a-bug approach questionably).

I've long since come to the conclusion that systemd is not safe to run
on a security critical machine. The developers are simply too lax
about safety.

If you're going to write a piece of systems code that has to run on
essentially every Linux box on earth and which runs much of the time
as root, extreme care has to be taken. You need to program defensively.

Instead, what we seem to have is a set of highly interdependent
shotgun parsers written without much regard to the rules people have
developed (of necessity) for writing code that must run with high
privileges. In other words, the code is _not_ written defensively.

(For those not familiar with the term "shotgun parser", which the
LangSec community introduced, do learn about it. It's a useful
concept.)

> FWIW, I'd be inclined to agree that it needs a CVE so that
> downstream distro's can at least refer to it, and decide how (and
> if) they want to address it.

+1

I don't care much if the developers deny that this is a problem. It is
a problem.

Perry
-- 
Perry E. Metzger		perry@piermont.com
