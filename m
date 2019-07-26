X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1594" "Friday" "26" "July" "2019" "12:00:06" "+0200" "Solar Designer" "solar@openwall.com" "<20190726100006.GA19264@openwall.com>" "59" "Re: [oss-security] CVE-2019-13917 OVE-20190718-0006: Exim: security release ahead" "^Date:" nil nil "7" "2019072610:00:06" "[oss-security] CVE-2019-13917 OVE-20190718-0006: Exim: security release ahead" (number mark "        solar@openwa Jul 26   59/1594  " thread-indent "\"Re: [oss-security] CVE-2019-13917 OVE-20190718-0006: Exim: security release ahead\"\n") "<20190722100013.GJ1168@jumper.schlittermann.de>" ("<20190722100013.GJ1168@jumper.schlittermann.de>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2019-13917 OVE-20190718-0006: Exim: security release ahead" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11294 invoked by uid 550); 26 Jul 2019 10:00:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9848 invoked from network); 26 Jul 2019 10:00:18 -0000
Message-ID: <20190726100006.GA19264@openwall.com>
References: <20190722100013.GJ1168@jumper.schlittermann.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190722100013.GJ1168@jumper.schlittermann.de>
User-Agent: Mutt/1.4.2.3i
Date: Fri, 26 Jul 2019 12:00:06 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2019-13917 OVE-20190718-0006: Exim: security release ahead
To: oss-security@lists.openwall.com

On Mon, Jul 22, 2019 at 12:00:13PM +0200, Heiko Schlittermann wrote:
> *** Note: EMBARGO is still in effect until July 25th, 10:00 UTC. ***
> *** Distros must not publish any detail nor release updates yet. ***

Somehow there isn't a proper message from Exim maintainers in here yet,
but the release is out, so I feel I have to take over and post this for
them:

https://lists.exim.org/lurker/message/20190725.090419.d506f736.en.html

---
Author: Jeremy Harris
Date: 2019-07-25 11:04 +200
To: exim-announce, exim users
Subject: [exim] CVE-2019-13917

General release information
===========================

The code fix for this issue has been placed in the project
public git repository; the project website will be updated
in due course.


CVE ID:     CVE-2019-13917
OVE ID:     OVE-20190718-0006
Date:       2019-07-18
Credits:    Jeremy Harris
Version(s): 4.85 up to and including 4.92
Issue:      A local or remote attacker can execute programs with root
            privileges - if you've an unusual configuration. For details
            see below.



Coordinated Release Date (CRD) for Exim 4.92.1:
            Thu Jul 25 10:00:00 UTC 2019



Contact:    security@???



Details:
A vulnerability was discovered in the "sort" expansion operator:
The elements of the list were expanded, giving a possible attack
if the list included data supplied by an attacker.

If the effective configuration file for exim does not use sort
then the system is trivially declarable as not being vulnerable.
Use this command to check: "exim -bP config | grep sort".

- -- 
Cheers,
Jeremy
---

Alexander
