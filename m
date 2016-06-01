X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1384" "Wednesday" "1" "June" "2016" "14:15:41" "+0300" "Mihamina RAKOTOMANDIMBY" "mihamina-rakotomandimby@rktmb.org" "<20160601141541.7d5219cc@andriamanitra>" "35" "[oss-security] \"The Blind SQL Injection Issue\" explanation" "^Date:" nil nil "6" "2016060111:15:41" "[oss-security] \"The Blind SQL Injection Issue\" explanation" (number mark "        mihamina-rak Jun  1   35/1384  " thread-indent "\"[oss-security] \"The Blind SQL Injection Issue\" explanation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9830 invoked by uid 550); 1 Jun 2016 11:36:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32333 invoked from network); 1 Jun 2016 11:15:58 -0000
X-Virus-Scanned: Debian amavisd-new at mfilter30-d.gandi.net
X-Originating-IP: 41.190.237.66
Message-ID: <20160601141541.7d5219cc@andriamanitra>
X-Mailer: Claws Mail 3.13.2 (GTK+ 2.24.30; x86_64-unknown-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Date: Wed, 1 Jun 2016 14:15:41 +0300
From: Mihamina RAKOTOMANDIMBY <mihamina-rakotomandimby@rktmb.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] "The Blind SQL Injection Issue" explanation
To: oss-security@lists.openwall.com

Hi members,

A web application of mine has been scanned by a "security tool".
It reports some issues about "Blind SQL Injection Issue"

The test result seems to indicate a vulnerability
because it shows that values can be appended to parameter
values, indicating that they were embedded in an SQL
query. In this test, three (or sometimes four)
requests are sent. The last is logically equal to the original,
and the next-to-last is different. Any others are for control
purposes. A comparison of the last two responses with the first
(the last is similar to it, and the next-to-last is different)
indicates that the application is vulnerable.

This message is widely used on internet: https://goo.gl/Gtqkbk

My problem is I cannot figure out how this could work.

Let's suppose the web app is vulnerable, the reasoning of this test is:

- req. 1 gets resp. 1 and changed database state to state 1
- req. 2 gets resp. 2 and changed database state to state "whatever"
- req. 3 gets resp. 1 and changed database state to state "whatever"

My questions are:
- How could database state "whatever" would give the same response as
  "state 1" ? (a.k.a "resp. 1")
- As a "blind" one (mostly random input then), how could these
  assertions work?

Would you please help me to figure out how this works?
I have basic security level and maths are far away in the past ;-)

Thank you in advance.
