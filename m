X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1660" "Wednesday" "28" "December" "2016" "17:58:28" "+0100" "Solar Designer" "solar@openwall.com" "<20161228165828.GA2779@openwall.com>" "35" "Re: [oss-security] PHPMailer < 5.2.20 Remote Code Execution PoC 0day Exploit (CVE-2016-10045) (Bypass of the CVE-2016-1033 patch)" nil nil nil "12" "2016122816:58:28" "[oss-security] PHPMailer < 5.2.20 Remote Code Execution PoC 0day Exploit (CVE-2016-10045) (Bypass of the CVE-2016-1033 patch)" (number mark "U       solar@openwa Dec 28   35/1660  " thread-indent "\"Re: [oss-security] PHPMailer < 5.2.20 Remote Code Execution PoC 0day Exploit (CVE-2016-10045) (Bypass of the CVE-2016-1033 patch)\"\n") "<CADSYzsu6L7vk1bbmQeYsc3ov1qufgyPXtsP-oV0RGGOjUAkLHw@mail.gmail.com>" ("<CADSYzsu6L7vk1bbmQeYsc3ov1qufgyPXtsP-oV0RGGOjUAkLHw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3275 invoked by uid 550); 28 Dec 2016 17:04:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32312 invoked from network); 28 Dec 2016 16:59:04 -0000
Date: Wed, 28 Dec 2016 17:58:28 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Marcus Bointon <marcus@synchromedia.co.uk>
Message-ID: <20161228165828.GA2779@openwall.com>
References: <CADSYzsu6L7vk1bbmQeYsc3ov1qufgyPXtsP-oV0RGGOjUAkLHw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CADSYzsu6L7vk1bbmQeYsc3ov1qufgyPXtsP-oV0RGGOjUAkLHw@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] PHPMailer < 5.2.20 Remote Code Execution PoC 0day Exploit (CVE-2016-10045) (Bypass of the CVE-2016-1033 patch)

On Wed, Dec 28, 2016 at 03:03:39AM -0200, Dawid Golunski wrote:
> PHPMailer < 5.2.20 Remote Code Execution PoC 0day Exploit
> (CVE-2016-10045) (Bypass for the CVE-2016-1033 patch)

Marcus has just released 5.2.21 with a fix for CVE-2016-10045.  The fix
stops using escapeshellarg()'s result, and instead sanity-checks the
string's characters:

+            // All other characters have a special meaning in at least one common shell, including = and +.
+            // Full stop (.) has a special meaning in cmd.exe, but its impact should be negligible here.
+            // Note that this does permit non-Latin alphanumeric characters based on the current locale.
+            if (!ctype_alnum($c) && strpos('@_-.', $c) === false) {
+                return false;

I think the use current locale is weird (an explicit check for
[a-zA-Z0-9] would have been more appropriate), but overall hopefully
this is a working fix now.

I suggest also sanity-checking the string length, for good measure.
Maybe in another update.

> This was reported responsibly to the vendor & assigned a CVEID on the
> 26th of December.
> The vendor has been working on a new patch which would fix the problem but
> not break the RFC too badly. The patch should be published very soon.
> 
> I'm releasing this as a 0day without the new patch available publicly
> as a potential bypass was publicly discussed on oss-sec with Solar
> Designer in the PHPMailer < 5.2.18 thread, so holding the advisory
> further would serve no purpose.

Yeah.  I did think for a moment before posting in here yesterday, but
for a number of reasons chose to go ahead with the public discussion.

Alexander
