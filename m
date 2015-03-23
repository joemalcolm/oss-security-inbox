X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1063" "Monday" "23" "March" "2015" "07:20:06" "+0300" "Solar Designer" "solar@openwall.com" "<20150323042006.GA27422@openwall.com>" "22" "Re: [oss-security] CVE for Kali Linux" nil nil nil "3" "2015032304:20:06" "[oss-security] CVE for Kali Linux" (number mark "        solar@openwa Mar 23   22/1063  " thread-indent "\"Re: [oss-security] CVE for Kali Linux\"\n") "<550F920F.10007@redhat.com>" ("<20150323012924.0F2336C0018@smtpvmsrv1.mitre.org>" "<550F920F.10007@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1699 invoked by uid 550); 23 Mar 2015 04:20:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1672 invoked from network); 23 Mar 2015 04:20:09 -0000
Message-ID: <20150323042006.GA27422@openwall.com>
References: <20150323012924.0F2336C0018@smtpvmsrv1.mitre.org> <550F920F.10007@redhat.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <550F920F.10007@redhat.com>
User-Agent: Mutt/1.4.2.3i
Date: Mon, 23 Mar 2015 07:20:06 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE for Kali Linux
To: oss-security@lists.openwall.com

On Sun, Mar 22, 2015 at 10:09:51PM -0600, Kurt Seifried wrote:
> My understanding was for software that downloads updates or other
> executable components over HTTP instead of HTTPS, AND there is no other
> protection (e.g. signed RPMs), so in effect there is nothing to protect
> it, then it gets a CVE since the user is essentially up the creek at
> that point.

If CVE goes this far, then I recommend that we don't include http vs.
https into this equation.  Simply require signatures.  "No signature for
software?  Here's your CVE."  This simple.

A problem here is that these are operations and not software issues, so
assigning CVEs for them would be inconsistent with and useless for the
usual purpose of CVEs (tracking of fixes in distros and deployments),
and with CVEs being assigned to specific software versions (a signature
will generally be added without releasing a new version).

I think these issues should be tracked separately, not via CVE.  I agree
that tracking lack of software signatures, and encouraging change, is a
good idea.

Alexander
