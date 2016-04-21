X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1188" "Thursday" "21" "April" "2016" "20:30:00" "+0300" "Solar Designer" "solar@openwall.com" "<20160421172959.GA8640@openwall.com>" "28" "[oss-security] list mail bounces; libtiff" nil nil nil "4" "2016042117:30:00" "[oss-security] list mail bounces; libtiff" (number mark "U       solar@openwa Apr 21   28/1188  " thread-indent "\"[oss-security] list mail bounces; libtiff\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14175 invoked by uid 550); 21 Apr 2016 17:30:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14080 invoked from network); 21 Apr 2016 17:30:04 -0000
Date: Thu, 21 Apr 2016 20:30:00 +0300
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20160421172959.GA8640@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.4.2.3i
Subject: [oss-security] list mail bounces; libtiff

Hi,

About 10 of you have e-mailed the list admins about "ezmlm warning"
messages that some of you received today, so I'll reply to all in here
(expecting that more of you are wondering, but haven't e-mailed us).

Yes, there was a mail delivery problem from oss-security on April 8,
resolved on April 9.

Several of the messages were initially queued up, and when the problem
was resolved and they were finally attempted to be delivered, they could
not be delivered to some of you, as well as to some of the third-party
archives, presumably because of those servers' use of greylisting (or
any other intermittent errors).  Crucially, there was not a second
delivery attempt because of those messages' age in the queue.  Indeed,
this is incompatible with greylisting, and in hindsight we should have
temporarily increased the allowable queue age before resolving the
initial problem.

The official archive has the full set of messages posted on April 8:

http://www.openwall.com/lists/oss-security/2016/04/08/

Specifically, the multiple notifications about different libtiff
vulnerabilities were affected, so if libtiff is relevant to you please
review the above archive page.

Alexander
