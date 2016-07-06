X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["662" "Wednesday" "6" "July" "2016" "12:10:19" "+0200" "Florian Weimer" "fweimer@redhat.com" "<03907aa5-5c2d-8bac-9053-7130e3159d62@redhat.com>" "17" "[oss-security] Malicious primary DNS servers can crash secondaries" "^Date:" nil nil "7" "2016070610:10:19" "[oss-security] Malicious primary DNS servers can crash secondaries" (number mark "        fweimer@redh Jul  6   17/662   " thread-indent "\"[oss-security] Malicious primary DNS servers can crash secondaries\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15834 invoked by uid 550); 6 Jul 2016 10:18:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15816 invoked from network); 6 Jul 2016 10:18:40 -0000
Message-ID: <03907aa5-5c2d-8bac-9053-7130e3159d62@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.1.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.26]); Wed, 06 Jul 2016 10:10:22 +0000 (UTC)
Date: Wed, 6 Jul 2016 12:10:19 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Malicious primary DNS servers can crash secondaries
To: oss-security@lists.openwall.com

It turns out that most DNS server implementations do not implement 
reasonable restrictions for zone sizes.  This allows an explicitly 
configured primary DNS server for a zone to crash a secondary DNS 
server, affecting service of other zones hosted on the same secondary 
server.

Some references:

https://lists.dns-oarc.net/pipermail/dns-operations/2016-July/015058.html
https://lists.dns-oarc.net/pipermail/dns-operations/2016-July/015075.html
https://gitlab.labs.nic.cz/labs/knot/merge_requests/541
https://www.nlnetlabs.nl/bugs-script/show_bug.cgi?id=790

PowerDNS is reportedly affected as well, but I did not find a public bug 
for this issue.

Florian
