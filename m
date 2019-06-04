X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1446" "Tuesday" "4" "June" "2019" "15:25:34" "+0200" "Solar Designer" "solar@openwall.com" "<20190604132534.GA16994@openwall.com>" "36" "Re: [oss-security] CVE-2019-10149: Exim 4.87 to 4.91: possible remote exploit" nil nil nil "6" "2019060413:25:34" "[oss-security] CVE-2019-10149: Exim 4.87 to 4.91: possible remote exploit" (number mark "U       solar@openwa Jun  4   36/1446  " thread-indent "\"Re: [oss-security] CVE-2019-10149: Exim 4.87 to 4.91: possible remote exploit\"\n") "<20190603201923.akdidsegyfzq3ykj@jumper.schlittermann.de>" ("<20190603201923.akdidsegyfzq3ykj@jumper.schlittermann.de>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2019-10149: Exim 4.87 to 4.91: possible remote exploit" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10102 invoked by uid 550); 4 Jun 2019 13:26:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9921 invoked from network); 4 Jun 2019 13:26:04 -0000
Date: Tue, 4 Jun 2019 15:25:34 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20190604132534.GA16994@openwall.com>
References: <20190603201923.akdidsegyfzq3ykj@jumper.schlittermann.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190603201923.akdidsegyfzq3ykj@jumper.schlittermann.de>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2019-10149: Exim 4.87 to 4.91: possible remote exploit

On Mon, Jun 03, 2019 at 10:19:23PM +0200, Heiko Schlittermann wrote:
> CVE-2019-10149 Exim 4.87 to 4.91
> ================================
> 
> We received a report of a possible remote exploit.  Currently there is no
> evidenice of an active use of this exploit.
> 
> A patch exists already, is being tested, and backported to all
> versions we released since (and including) 4.87.
> 
> The severity depends on your configuration.  It depends on how close to
> the standard configuration your Exim runtime configuration is. The
> closer the better.
> 
> Exim 4.92 is not vulnerable.

I guess I wasn't the only one wondering how revealing this is, so:

$ diff -urwx doc exim-4.91 exim-4.92 | diffstat -s
 131 files changed, 6898 insertions(+), 4395 deletions(-)
$ diff -urwx doc exim-4.91 exim-4.92 | wc
  27635  114347  935620

exim-4.92/doc/ChangeLog lists tens of changes.

Exim 4.92 appears to have been released in February, when the security
issue referred to here was not yet known as such, so this wasn't a
deliberate decision to release the fix publicly yet keep it unmentioned.

Keeping the issue in this semi-public state for 7 days feels weird to
me, but given the above it doesn't look too unrealistic that the issue
won't be rediscovered during this time period.  (The risk of leaks is
probably higher.)  It'd be curious if someone ends up discovering a
different and yet unknown security issue by reading that diff. ;-)

Alexander
