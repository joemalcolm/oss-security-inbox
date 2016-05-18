X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["593" "Wednesday" "18" "May" "2016" "11:33:05" "+0530" "Huzaifa Sidhpurwala" "huzaifas@redhat.com" "<e21dd438-42f0-afc7-b510-cc8affd352c8@redhat.com>" "19" "[oss-security] CVE Request: null pointer deref in openslp, can be triggered remotely" nil nil nil "5" "2016051806:03:05" "[oss-security] CVE Request: null pointer deref in openslp, can be triggered remotely" (number mark "U       huzaifas@red May 18   19/593   " thread-indent "\"[oss-security] CVE Request: null pointer deref in openslp, can be triggered remotely\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31755 invoked by uid 550); 18 May 2016 06:03:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30650 invoked from network); 18 May 2016 06:03:20 -0000
To: oss-security@lists.openwall.com,
        Mitre CVE assign department <cve-assign@mitre.org>
From: Huzaifa Sidhpurwala <huzaifas@redhat.com>
Message-ID: <e21dd438-42f0-afc7-b510-cc8affd352c8@redhat.com>
Date: Wed, 18 May 2016 11:33:05 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.30]); Wed, 18 May 2016 06:03:09 +0000 (UTC)
Subject: [oss-security] CVE Request: null pointer deref in openslp, can be triggered remotely

Hi All,

The following flaw was reported to us by Yuguang Cai. Basically return
value from malloc isnt checked, in _xrealloc function. This can be
triggered remotely by sending a large number of request, which could
possibly lead malloc to fail at one point, causing crash via null
pointer deref.

Because of the way memory works on modern linux systems, this one seems
to be difficult to exploit, so i am wondering if a CVE id should really
be assigned to this issue.

Details at:
https://bugzilla.redhat.com/show_bug.cgi?id=1329295



-- 
Huzaifa Sidhpurwala / Red Hat Product Security Team
