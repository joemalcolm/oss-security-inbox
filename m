X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1647" "Tuesday" "28" "April" "2015" "08:52:34" "+0300" "Solar Designer" "solar@openwall.com" "<20150428055234.GA6754@openwall.com>" "37" "Re: [oss-security] CVE request: kernel overestimates the available entropy in random pools" nil nil nil "4" "2015042805:52:34" "[oss-security] CVE request: kernel overestimates the available entropy in random pools" (number mark "        solar@openwa Apr 28   37/1647  " thread-indent "\"Re: [oss-security] CVE request: kernel overestimates the available entropy in random pools\"\n") "<802401219.7793841.1430186530208.JavaMail.zimbra@redhat.com>" ("<1516477121.7790170.1430184468415.JavaMail.zimbra@redhat.com>" "<802401219.7793841.1430186530208.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11590 invoked by uid 550); 28 Apr 2015 05:52:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11567 invoked from network); 28 Apr 2015 05:52:40 -0000
Message-ID: <20150428055234.GA6754@openwall.com>
References: <1516477121.7790170.1430184468415.JavaMail.zimbra@redhat.com> <802401219.7793841.1430186530208.JavaMail.zimbra@redhat.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <802401219.7793841.1430186530208.JavaMail.zimbra@redhat.com>
User-Agent: Mutt/1.4.2.3i
Date: Tue, 28 Apr 2015 08:52:34 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request: kernel overestimates the available entropy in random pools
To: oss-security@lists.openwall.com

On Mon, Apr 27, 2015 at 10:02:10PM -0400, Wade Mealing wrote:
> "When we write entropy into a non-empty pool, we currently don't
> account at all for the fact that we will probabilistically overwrite
> some of the entropy in that pool.  This means that unless the pool is
> fully empty, we are currently *guaranteed* to overestimate the amount
> of entropy in the pool!"

This is a fine description, albeit one not explaining whether there's
practical impact or not, and what it is.  This might be fatal or it
might be a non-issue depending on what exactly happens under the hood.

> The impact of this issue could be to a downgrade the kernels true
> RNG to a pseudo-RNG. 

To me, this is a non-description continuing the usual confusion about
/dev/random vs. /dev/urandom.  These do differ, but not in that way.

http://www.2uo.de/myths-about-urandom/

"Myths about /dev/urandom
[...]
/dev/urandom is a pseudo random number generator, a PRNG, while
/dev/random is a true random number generator. 

Fact: Both /dev/urandom and /dev/random are using the exact same CSPRNG
(a cryptographically secure pseudorandom number generator). They only
differ in very few ways that have nothing to do with true randomness."

I don't object to this getting a CVE ID assigned and being treated as a
vulnerability (which might or might not be required).  I object to us
trying to use simple and wrong wording to paper over a non-trivial and
controversial topic.  (There are also simple words that are not wrong,
but they won't address this specific bug's impact or lack thereof.)

If we don't know whether there's impact and what it is, just say so.

Alexander
