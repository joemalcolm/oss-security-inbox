X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["715" "Friday" "26" "June" "2015" "18:43:26" "+0200" "Stefan Cornelius" "scorneli@redhat.com" "<20150626184326.6b7309a8@redhat.com>" "23" "[oss-security] CVE-2015-3258 cups-filters: texttopdf heap-based buffer overflow" nil nil nil "6" "2015062616:43:26" "[oss-security] CVE-2015-3258 cups-filters: texttopdf heap-based buffer overflow" (number mark "U       scorneli@red Jun 26   23/715   " thread-indent "\"[oss-security] CVE-2015-3258 cups-filters: texttopdf heap-based buffer overflow\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13460 invoked by uid 550); 26 Jun 2015 16:43:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13434 invoked from network); 26 Jun 2015 16:43:44 -0000
Message-ID: <20150626184326.6b7309a8@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Cc: Till Kamppeter <till.kamppeter@gmail.com>
Date: Fri, 26 Jun 2015 18:43:26 +0200
From: Stefan Cornelius <scorneli@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2015-3258 cups-filters: texttopdf heap-based buffer overflow
To: oss-security@lists.openwall.com

Hi,

A heap-based buffer overflow was discovered in the way the texttopdf
utility of cups-filters processed print jobs with a specially crafted
line size. An attacker being able to submit print jobs could exploit
this flaw to crash texttopdf or, possibly, execute arbitrary code.

This was discovered by Petr Sklenar of Red Hat.

This is fixed in cups-filters 1.0.70.

Patch:
http://bzr.linuxfoundation.org/loggerhead/openprinting/cups-filters/revision/7363

Minor note on the side: The commit thanks me for the patch. The patch
was created by Tim Waugh of Red Hat, I've merely forwarded it.

Red Hat bug:
https://bugzilla.redhat.com/show_bug.cgi?id=1235385

Thanks,
-- 
Stefan Cornelius / Red Hat Product Security
