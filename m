X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["550" "Tuesday" "2" "August" "2016" "10:14:31" "+0200" "Florian Weimer" "fweimer@redhat.com" "<480c99be-40aa-fb0c-3656-d3cb98c058da@redhat.com>" "12" "[oss-security] glibc: Per-thread memory leak in __res_vinit with IPv6 nameservers (CVE-2016-5417)" nil nil nil "8" "2016080208:14:31" "[oss-security] glibc: Per-thread memory leak in __res_vinit with IPv6 nameservers (CVE-2016-5417)" (number mark "U       fweimer@redh Aug  2   12/550   " thread-indent "\"[oss-security] glibc: Per-thread memory leak in __res_vinit with IPv6 nameservers (CVE-2016-5417)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27764 invoked by uid 550); 2 Aug 2016 08:14:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27735 invoked from network); 2 Aug 2016 08:14:46 -0000
To: oss-security@lists.openwall.com
From: Florian Weimer <fweimer@redhat.com>
Message-ID: <480c99be-40aa-fb0c-3656-d3cb98c058da@redhat.com>
Date: Tue, 2 Aug 2016 10:14:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.1.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]); Tue, 02 Aug 2016 08:14:34 +0000 (UTC)
Subject: [oss-security] glibc: Per-thread memory leak in __res_vinit with IPv6 nameservers
 (CVE-2016-5417)

We have assigned CVE-2016-5417 to a memory leak in glibc.  It was 
introduced in glibc 2.22, with commit 
2212c1420c92a33b0e0bd9a34938c9814a56c0f7 (which also caused other 
regressions, which is why we backed it out in Fedora).

The leak is triggered if name resolution functions are called in such a 
way that internal resolver data structures are only initialized 
partially.  The memory leak was independently reported as occurring 
during Apache httpd testing, so we found it prudent to treat it as a 
very minor security vulnerability.

Florian
