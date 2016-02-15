X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["667" "Monday" "15" "February" "2016" "10:44:58" "+0100" "Stefan Cornelius" "scorneli@redhat.com" "<20160215104458.56184e27@redhat.com>" "24" "[oss-security] CVE request: foomatic-rip unhtmlify() buffer overflow vulnerability" nil nil nil "2" "2016021509:44:58" "[oss-security] CVE request: foomatic-rip unhtmlify() buffer overflow vulnerability" (number mark "U       scorneli@red Feb 15   24/667   " thread-indent "\"[oss-security] CVE request: foomatic-rip unhtmlify() buffer overflow vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14060 invoked by uid 550); 15 Feb 2016 09:45:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14040 invoked from network); 15 Feb 2016 09:45:14 -0000
Date: Mon, 15 Feb 2016 10:44:58 +0100
From: Stefan Cornelius <scorneli@redhat.com>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Message-ID: <20160215104458.56184e27@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Subject: [oss-security] CVE request: foomatic-rip unhtmlify() buffer overflow vulnerability

Hi,

A buffer-overflow vulnerability was discovered in the unhtmlify()
function of foomatic-rip. The function did not properly calculate
buffer sizes, possibly leading to a heap-based memory corruption. A
remote, unauthenticated attacker could exploit this flaw to cause
foomatic-rip to crash or possibly execute arbitrary code.

This is a rather old bug, which was fixed upstream a long time ago.

Fixed in:
rev 239 of the HEAD branch and rev 225 of the 4.0.x branch

References:

Upstream bug:
https://bugs.linuxfoundation.org/show_bug.cgi?id=515

RH bug:
https://bugzilla.redhat.com/show_bug.cgi?id=1218297

Thanks,
-- 
Stefan Cornelius / Red Hat Product Security
