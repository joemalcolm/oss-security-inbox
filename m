X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["664" "Friday" "29" "July" "2016" "14:19:38" "+0530" "Huzaifa Sidhpurwala" "huzaifas@redhat.com" "<700c370f-9fc4-7913-9d26-01574b218dba@redhat.com>" "21" "[oss-security] CVE Request: nettle's RSA code is vulnerable to cache sharing related attacks" "^Date:" nil nil "7" "2016072908:49:38" "[oss-security] CVE Request: nettle's RSA code is vulnerable to cache sharing related attacks" (number mark "        huzaifas@red Jul 29   21/664   " thread-indent "\"[oss-security] CVE Request: nettle's RSA code is vulnerable to cache sharing related attacks\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32500 invoked by uid 550); 29 Jul 2016 08:49:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32480 invoked from network); 29 Jul 2016 08:49:53 -0000
Message-ID: <700c370f-9fc4-7913-9d26-01574b218dba@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]); Fri, 29 Jul 2016 08:49:41 +0000 (UTC)
Date: Fri, 29 Jul 2016 14:19:38 +0530
From: Huzaifa Sidhpurwala <huzaifas@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: nettle's RSA code is vulnerable to cache sharing related
 attacks
To: oss-security@lists.openwall.com,
        Mitre CVE assign department <cve-assign@mitre.org>

Hi All,

The following whitepaper talks about libgcrypt's RSA code being
vulnerable to a cache timing attack, which the paper claims is fixed in
1.6.3.

It seems nettle is also vulnerable to this flaw. Which was confirmed by
upstream via:
https://lists.lysator.liu.se/pipermail/nettle-bugs/2016/003093.html

The above link also contains a proposed patch, will be committed soon.

I would like to request a CVE id for the flaw in nettle.

Note: libgcrypt-1.6.3. release notes talk about 2 cves being fixed, but
they dont mention this paper at all. (I am going to talk to the
researchers to figure this out)


-- 
Huzaifa Sidhpurwala / Red Hat Product Security Team
