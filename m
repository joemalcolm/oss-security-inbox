Received: (qmail 30384 invoked by uid 550); 12 Mar 2026 22:58:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 8125 invoked from network); 12 Mar 2026 22:55:52 -0000
Date: Thu, 12 Mar 2026 23:54:54 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Justin Swartz <justin.swartz@risingedge.co.za>,
	Adiel Sol <adiel@dreamgroup.com>,
	Collin Funk <collin.funk1@gmail.com>
Message-ID: <20260312225454.GA26766@openwall.com>
References: <6d90b416fd9f2e4e8483885a480b390d@risingedge.co.za>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6d90b416fd9f2e4e8483885a480b390d@risingedge.co.za>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Remote Pre-Auth Buffer Overflow in GNU Inetutils telnetd (LINEMODE SLC)

On Thu, Mar 12, 2026 at 08:24:42PM +0200, Justin Swartz wrote:
> I would like to draw the community's attention to the following
> vulnerability [1], summarized as "Remote Pre-Auth Buffer Overflow
> in GNU Inetutils telnetd (LINEMODE SLC)", which was reported to
> the bug-inetutils mailing list recently.
> 
> I am not affiliated with the researchers, inetutils, nor GNU/FSF.
> 
> Regards,
> Justin
> 
> ---
> 
> [1] 
> https://lists.gnu.org/archive/html/bug-inetutils/2026-03/msg00031.html

I'll add that this is maybe part of CVE-2001-0554:

https://nvd.nist.gov/vuln/detail/CVE-2001-0554

"Buffer overflow in BSD-based telnetd telnet daemon on various operating
systems allows remote attackers to execute arbitrary commands via a set
of options including AYT (Are You There), which is not properly handled
by the telrcv function."

https://www.kb.cert.org/vuls/id/745371/

"Multiple vendor telnet daemons vulnerable to buffer overflow via
crafted protocol options"

But I am not entirely sure this specific sub-issue falls under that CVE,
would need to find advisories and patches from back then.

Then there's the telnet client counterpart CVE-2005-0469:

https://nvd.nist.gov/vuln/detail/CVE-2005-0469

"Buffer overflow in the slc_add_reply function in various BSD-based
Telnet clients, when handling LINEMODE suboptions, allows remote
attackers to execute arbitrary code via a reply with a large number of
Set Local Character (SLC) commands."

https://www.kb.cert.org/vuls/id/291924

"Multiple Telnet clients fail to properly handle the "LINEMODE" SLC
suboption"

I'd be surprised if InetUtils telnet client is not affected by this.  It
looks like InetUtils telnet[d] completely lacked security maintenance.

Alexander
