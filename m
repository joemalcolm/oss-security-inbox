X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["710" "Thursday" "12" "October" "2017" "12:00:30" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1710121158110.25482@wniryva>" "23" "[oss-security] CVE-2017-15268. Qemu: I/O: potential memory exhaustion via websock connection to VNC" nil nil nil "10" "2017101206:30:30" "[oss-security] CVE-2017-15268. Qemu: I/O: potential memory exhaustion via websock connection to VNC" (number mark "U       ppandit@redh Oct 12   23/710   " thread-indent "\"[oss-security] CVE-2017-15268. Qemu: I/O: potential memory exhaustion via websock connection to VNC\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22108 invoked by uid 550); 12 Oct 2017 06:30:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22090 invoked from network); 12 Oct 2017 06:30:48 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com F3C0D2C9701
Authentication-Results: ext-mx05.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx05.extmail.prod.ext.phx2.redhat.com; spf=fail smtp.mailfrom=ppandit@redhat.com
Date: Thu, 12 Oct 2017 12:00:30 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
Message-ID: <nycvar.YSQ.7.76.1710121158110.25482@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.29]); Thu, 12 Oct 2017 06:30:36 +0000 (UTC)
Subject: [oss-security] CVE-2017-15268. Qemu: I/O: potential memory exhaustion via websock
 connection to VNC

   Hello,

Quick Emulator(Qemu) built with the I/O channels websockets support is 
vulnerable to a memory leakage issue. It could occur while sending screen 
updates to a client, which is slow to read and process them further.

A privileged guest user could use this flaw to cause a DoS on the host and/or 
potentially crash the Qemu process instance on the host.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2017-10/msg02278.html

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1496879

CVE assigned via https://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
