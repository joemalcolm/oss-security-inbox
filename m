X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["568" "Tuesday" "4" "August" "2015" "11:51:42" "+0530" "Huzaifa Sidhpurwala" "huzaifas@redhat.com" "<55C059F6.6050904@redhat.com>" "20" "[oss-security] CVE Request: Information disclosure in pcre" nil nil nil "8" "2015080406:21:42" "[oss-security] CVE Request: Information disclosure in pcre" (number mark "        huzaifas@red Aug  4   20/568   " thread-indent "\"[oss-security] CVE Request: Information disclosure in pcre\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32312 invoked by uid 550); 4 Aug 2015 06:09:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32292 invoked from network); 4 Aug 2015 06:08:59 -0000
Message-ID: <55C059F6.6050904@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.1.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
Cc: zdi-disclosures@tippingpoint.com
Date: Tue, 4 Aug 2015 11:51:42 +0530
From: Huzaifa Sidhpurwala <huzaifas@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: Information disclosure in pcre
To: oss-security@lists.openwall.com,
        Mitre CVE assign department <cve-assign@mitre.org>

Hi All,

It was reported that pcre_exec in PHP pcre extenstion partially
initialize a buffer when an invalid regex is processed, which can lead
to an arbitrary code execution.

https://bugs.exim.org/show_bug.cgi?id=1537

This patch has been committed upstream via:
http://vcs.pcre.org/pcre/code/trunk/pcre_exec.c?r1=1502&r2=1510

And is a part of upstream release pcre-8.37

This was initially reported by ZDI (ZDI-CAN-2547), but it seems there
was no follow-up.

Can a CVE id be please assigned to this issue?

-- 
Huzaifa Sidhpurwala / Red Hat Product Security Team
