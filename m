X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1633" "Monday" "11" "May" "2015" "13:31:31" "+0300" "Solar Designer" "solar@openwall.com" "<20150511103131.GA31189@openwall.com>" "41" "Re: [oss-security] openwall phpass fallback mode" nil nil nil "5" "2015051110:31:31" "[oss-security] openwall phpass fallback mode" (number mark "        solar@openwa May 11   41/1633  " thread-indent "\"Re: [oss-security] openwall phpass fallback mode\"\n") "<554ED313.1090700@tripleback.net>" ("<554ED313.1090700@tripleback.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7453 invoked by uid 550); 11 May 2015 10:31:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7430 invoked from network); 11 May 2015 10:31:36 -0000
Message-ID: <20150511103131.GA31189@openwall.com>
References: <554ED313.1090700@tripleback.net>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <554ED313.1090700@tripleback.net>
User-Agent: Mutt/1.4.2.3i
Cc: oss-security@lists.openwall.com
Date: Mon, 11 May 2015 13:31:31 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] openwall phpass fallback mode
To: Kash Pande <kash@tripleback.net>

Hi Kash,

On Sat, May 09, 2015 at 11:40:03PM -0400, Kash Pande wrote:
> http://www.openwall.com/phpass/
> 
> This library has an unfortunate consequence when using it in multiple
> environments without strong consistent access to one crypto method.. it
> will fall back to weaker methods, which breaks the expectations of
> security.. Fallback have been assigned CVE here before. As well, it is
> an openwall release.
> 
> I may be wrong and it could already be assigned one, but I don't see it.

I expect MITRE will decide on your CVE request, but meanwhile: what is
the purpose of your request?  Is it e.g. one or more of the below? -

1. Trying to propose/influence a change for phpass.  If so, what change?

2. Having a CVE ID to list e.g. in an advisory for some piece of
software where you or someone else has somehow "fixed" "the issue".
If so, what software and what's the fix?

3. Testing just how far CVEs can go, and whether/where the slippery
slope stops?  (Is there a CVE for "the world is not perfect" yet?)

4. Testing just how far CVEs can go as it relates specifically to
fallbacks?  (Where are the CVE IDs for autoconf, and also for all
individual autoconf'ed apps?  This actually makes some sense.)

5. Refining the criteria for which fallbacks are CVE worthy vs. not.

6. Getting this one CVE ID assigned for the sake of having one CVE ID,
and not making any use of it nor influencing anything further (thus,
having phpass with a CVE ID assigned and "the issue" not "fixed").

I am primarily interested in aspect #1 above - possible changes to the
actual code - rather than the CVE specifics.

Thanks,

Alexander
