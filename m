X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2148" "Monday" "13" "April" "2015" "17:41:14" "+0300" "Solar Designer" "solar@openwall.com" "<20150413144114.GA29241@openwall.com>" "42" "[oss-security] discourage \"CVE only\" use of (linux-)distros" nil nil nil "4" "2015041314:41:14" "[oss-security] discourage \"CVE only\" use of (linux-)distros" (number mark "        solar@openwa Apr 13   42/2148  " thread-indent "\"[oss-security] discourage \"CVE only\" use of (linux-)distros\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5722 invoked by uid 550); 13 Apr 2015 14:41:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5676 invoked from network); 13 Apr 2015 14:41:17 -0000
Message-ID: <20150413144114.GA29241@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.4.2.3i
Date: Mon, 13 Apr 2015 17:41:14 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] discourage "CVE only" use of (linux-)distros
To: oss-security@lists.openwall.com

Hi,

I've just added the below paragraph:

It is intended that these lists be used primarily to provide actionable
information to multiple distribution vendors at once.  While you may at
the same time request and obtain a CVE ID for the vulnerability you
report, and that's great, please avoid using these lists if your sole
purpose of their use is to obtain a CVE ID (e.g., when the affected
software isn't something any of the distributions currently ship, or
when they are unlikely to benefit from the advance notice).  In those CVE
only cases, please request the CVE IDs either on the public oss-security
list right away, or from MITRE directly.  When you contact MITRE directly
about an issue that is not yet public, please do not disclose to them
more than the absolute minimum needed for them to assign a CVE ID.

to http://oss-security.openwall.org/wiki/mailing-lists/distros

I'd appreciate comments on this.  Maybe we can clarify what MITRE's
"absolute minimum" is (link to a page explaining this?)

Naturally, this edit is prompted by some notifications sent to the
distros list that looked like they are "CVE only", not actually
benefiting the distros and thus placing the vulnerability information
at unjustified risk.  (Would it be any safer with MITRE, though?)

My opinion is that CVEs are not that important to request them before
making the issue public, unless this can easily be done without placing
the vulnerability information at extra risk - e.g., if it's actionable
for (linux-)distros anyway, and the CVE ID assignment can happen as a
nice extra there, or if MITRE can assign them without obtaining detail.

Another aspect is that, if I understood correctly, MITRE is currently
slow at CVE ID assignments, and distros is way quicker.  This may be
driving CVE requests to distros, too.  More importantly, a concern is
that slow CVE ID allocation by MITRE might delay public disclosure of
issues by those reporters who really want to have CVE IDs on their
advisories, etc.  I think they should not actually delay anything for
that minor reason alone, but that's just me.  The reality might be that
they do delay.

Alexander
