X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["768" "Thursday" "3" "September" "2015" "12:20:59" "+0530" "Huzaifa Sidhpurwala" "huzaifas@redhat.com" "<55E7EDD3.3050604@redhat.com>" "26" "[oss-security] CVE Request: Memory corruption in libvncserver < 0.9.8" nil nil nil "9" "2015090306:50:59" "[oss-security] CVE Request: Memory corruption in libvncserver < 0.9.8" (number mark "U       huzaifas@red Sep  3   26/768   " thread-indent "\"[oss-security] CVE Request: Memory corruption in libvncserver < 0.9.8\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32058 invoked by uid 550); 3 Sep 2015 06:37:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32035 invoked from network); 3 Sep 2015 06:37:47 -0000
Message-ID: <55E7EDD3.3050604@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.1.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Date: Thu, 3 Sep 2015 12:20:59 +0530
From: Huzaifa Sidhpurwala <huzaifas@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: Memory corruption in libvncserver < 0.9.8
To: oss-security@lists.openwall.com,
        Mitre CVE assign department <cve-assign@mitre.org>

It seems this issue exists because libvncserver < 0.9.8 is not
thread-safe. "tightAfterBuf" etc are declared as a global variables.
rfbTightCleanup() which is responsible for freeing these variables, do
not reset them to NULL.

Consequently when other parts of the code use these variables. (For
example, realloc() after checking if they are NULL etc). It can cause
memory corruption.

This is specially possible, when multiple connections are made using
libvncserver library.

This issue has been fixed via:

https://github.com/LibVNC/libvncserver/commit/804335f9d296440bb708ca844f5d89b58b50b0c6


Reference:
https://bugzilla.redhat.com/show_bug.cgi?id=706087

Can a CVE id be please assigned to this issue.



-- 
Huzaifa Sidhpurwala / Red Hat Product Security Team
