X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["554" "Friday" "9" "December" "2016" "16:44:17" "+0100" "Adam Maris" "amaris@redhat.com" "<1481298257.3173.4.camel@redhat.com>" "23" "[oss-security] CVE-2016-9580 CVE-2016-9581 openjpeg2: heap buffer oevrflows" "^Date:" nil nil "12" "2016120915:44:17" "[oss-security] CVE-2016-9580 CVE-2016-9581 openjpeg2: heap buffer oevrflows" (number mark "U       amaris@redha Dec  9   23/554   " thread-indent "\"[oss-security] CVE-2016-9580 CVE-2016-9581 openjpeg2: heap buffer oevrflows\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3560 invoked by uid 550); 9 Dec 2016 15:44:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3534 invoked from network); 9 Dec 2016 15:44:31 -0000
Message-ID: <1481298257.3173.4.camel@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.32]); Fri, 09 Dec 2016 15:44:19 +0000 (UTC)
Date: Fri, 09 Dec 2016 16:44:17 +0100
From: Adam Maris <amaris@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2016-9580 CVE-2016-9581 openjpeg2: heap buffer oevrflows
To: oss-security@lists.openwall.com

Hello,

We've assigned CVEs for following issues:

> https://github.com/uclouvain/openjpeg/issues/871

CVE-2016-9580 integer overflow in tiftoimage resulting into heap buffer
overflow

> https://github.com/uclouvain/openjpeg/issues/872

CVE-2016-9581 infinite loop in tiftoimage resulting into heap buffer
overflow in convert_32s_C1P1

Both were fixed by https://github.com/szukw000/openjpeg/commit/cadff5fb
6e73398de26a92e96d3d7cac893af255

Regards,

-- 
Adam Mariš, Red Hat Product Security
1CCD 3446 0529 81E3 86AF  2D4C 4869 76E7 BEF0 6BC2 

