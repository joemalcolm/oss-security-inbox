X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2632" "Thursday" "19" "November" "2015" "04:18:42" "+0300" "Solar Designer" "solar@openwall.com" "<20151119011842.GB6450@openwall.com>" "55" "Re: [oss-security] CVE-2015-7266" nil nil nil "11" "2015111901:18:42" "[oss-security] CVE-2015-7266" (number mark "U       solar@openwa Nov 19   55/2632  " thread-indent "\"Re: [oss-security] CVE-2015-7266\"\n") "<564D1096.5070901@trylinux.us>" ("<564D1096.5070901@trylinux.us>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15902 invoked by uid 550); 19 Nov 2015 01:18:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15883 invoked from network); 19 Nov 2015 01:18:54 -0000
Date: Thu, 19 Nov 2015 04:18:42 +0300
From: Solar Designer <solar@openwall.com>
To: "Zach W." <kestrel@trylinux.us>
Cc: oss-security@lists.openwall.com
Message-ID: <20151119011842.GB6450@openwall.com>
References: <564D1096.5070901@trylinux.us>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <564D1096.5070901@trylinux.us>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2015-7266

On Wed, Nov 18, 2015 at 03:58:14PM -0800, Zach W. wrote:
> Anybody have any idea what the deal is with this CVE, since it's
> referenced in http://media.pixalate.com/white-papers/xindi.pdf? It's
> being splattered all over the news, but the CVE is still in "reservered"

Kurt has already commented on the CVE aspect, but I'd like to point out
that the Subject line of this message is inappropriate, especially given
that the message body didn't include the required detail as well.
Subjects must be descriptive, whereas including only a CVE ID is not.
(If another moderator were not quick to approve Zach's message, I would
insist on the Subject being corrected first.)

Going to the URL in Zach's message, I see that page 6 of the PDF says:

"The Amnesia Bug is a critical vulnerability (CVE-2015-7266) in the
OpenRTB v2.3 protocol implementation, which is the standard for
real-time digital media buying and selling.  This vulnerability allows
fraudsters to conceal the true status of an ad transaction [...]"

I think the above detail must have been included in Zach's message, in
order not to waste people's time on figuring out whether the
vulnerability is relevant to them (upon reading this, most people would
conclude that it is not).  And a proper Subject could be:

"CVE-2015-7266 - OpenRTB 2.3 protocol implementation Amnesia Bug"

as per these guidelines:

http://oss-security.openwall.org/wiki/mailing-lists/oss-security#list-content-guidelines

"When applicable, the message Subject must include the name and
version(s) of affected software, and vulnerability type.  For example, a
Subject saying only "CVE request" or "CVE-2099-99999" is not appropriate,
whereas "CVE request - Acme Placeholder 1.0 buffer overflow" or
"CVE-2099-99999 - Acme Placeholder 1.0 buffer overflow" would be OK."

Another issue with having this on oss-security is that it's unclear
whether the OpenRTB implementation in question is Open Source or not.

The OpenRTB specification is on GitHub:

http://openrtb.github.io/OpenRTB/
https://github.com/openrtb/OpenRTB

but it is unclear where implementations are, and which one is affected.

Overall, I'd like oss-security to be more focused on technical detail,
and less on CVEs.  I can tolerate postings that include both technical
detail and CVE IDs or requests (and if getting a CVE ID is why someone
posts, that's fine, as long as the very same message also brings
valuable detail to this community).  I won't tolerate CVE-only postings
lacking any detail at all (and referencing an external PDF without even
mentioning the software or technology in question is not good enough).

Alexander
