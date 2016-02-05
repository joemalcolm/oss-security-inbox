X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["638" "Friday" "5" "February" "2016" "15:26:35" "+0100" "Daniel Fahlgren" "daniel@fahlgren.se" "<1454682395.12024.102.camel@fahlgren-laptop>" "21" "[oss-security] CVE Request uclibc-ng dns resolver issues" "^Cc:" nil nil "2" "2016020514:26:35" "[oss-security] CVE Request uclibc-ng dns resolver issues" (number mark "        daniel@fahlg Feb  5   21/638   " thread-indent "\"[oss-security] CVE Request uclibc-ng dns resolver issues\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5412 invoked by uid 550); 5 Feb 2016 14:27:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5122 invoked from network); 5 Feb 2016 14:26:48 -0000
Message-ID: <1454682395.12024.102.camel@fahlgren-laptop>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.10.4-0ubuntu2 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: cve-assign@mitre.org
Date: Fri, 05 Feb 2016 15:26:35 +0100
From: Daniel Fahlgren <daniel@fahlgren.se>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request uclibc-ng dns resolver issues
To: oss-security@lists.openwall.com

Hi,

Uclibc-ng 1.0.12 has been released which fixes some issues found in the
dns resolver code.

The first is a denial of service while parsing compressed items. An
attacker can make the application end up in an infinit loop. Fixed by:

http://repo.or.cz/uclibc-ng.git/commit/16719c1a7078421928e6d31dd1dec574825ef515

The other problem is that a crafted packet will make the parser
terminate early. The buffer is never initialized and is later passed to
strdup(). Fixed by:

http://repo.or.cz/uclibc-ng.git/commit/bb01edff0377f2585ce304ecbadcb7b6cde372ac

Can one or two CVEs be assigned for these issues?

Best regards,
Daniel Fahlgren

