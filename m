X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["591" "Wednesday" "25" "May" "2016" "12:29:04" "+0530" "Huzaifa Sidhpurwala" "huzaifas@redhat.com" "<3197eee1-d6c3-1376-b83c-a14101703e63@redhat.com>" "23" "[oss-security] 3 libxml2 issues" nil nil nil "5" "2016052506:59:04" "[oss-security] 3 libxml2 issues" (number mark "U       huzaifas@red May 25   23/591   " thread-indent "\"[oss-security] 3 libxml2 issues\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24362 invoked by uid 550); 25 May 2016 06:59:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24344 invoked from network); 25 May 2016 06:59:18 -0000
To: oss-security@lists.openwall.com
From: Huzaifa Sidhpurwala <huzaifas@redhat.com>
Message-ID: <3197eee1-d6c3-1376-b83c-a14101703e63@redhat.com>
Date: Wed, 25 May 2016 12:29:04 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.31]); Wed, 25 May 2016 06:59:07 +0000 (UTC)
Subject: [oss-security] 3 libxml2 issues

Hi All,

The following issues were reported to us:

1. CVE-2016-4447: libxml2: Heap-based buffer underreads due to xmlParseName

https://bugzilla.redhat.com/show_bug.cgi?id=1338686

2. CVE-2016-4448 libxml2: Format string vulnerability

https://bugzilla.redhat.com/show_bug.cgi?id=1338700

3. CVE-2016-4449 libxml2: Inappropriate fetch of entities content

https://bugzilla.redhat.com/show_bug.cgi?id=1338701


Each of the Red Hat bugs , contain links to the commits which fix these
issues. (The upstream bugs are currently private)


-- 
Huzaifa Sidhpurwala / Red Hat Product Security Team
