X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["928" "Monday" "8" "July" "2019" "16:59:35" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1907081652370.24283@xnncv>" "25" "[oss-security] CVE-2019-13313, CVE-2019-13314: password disclosure via command line arguments" nil nil nil "7" "2019070811:29:35" "[oss-security] CVE-2019-13313, CVE-2019-13314: password disclosure via command line arguments" (number mark "U       ppandit@redh Jul  8   25/928   " thread-indent "\"[oss-security] CVE-2019-13313, CVE-2019-13314: password disclosure via command line arguments\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-13313, CVE-2019-13314: password disclosure via command line arguments" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5539 invoked by uid 550); 8 Jul 2019 11:29:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5518 invoked from network); 8 Jul 2019 11:29:52 -0000
Date: Mon, 8 Jul 2019 16:59:35 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: oss security list <oss-security@lists.openwall.com>
cc: Fabiano Fidencio <ffidenci@redhat.com>
Message-ID: <nycvar.YSQ.7.76.1907081652370.24283@xnncv>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="-1463811583-790780837-1562585380=:24283"
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.31]); Mon, 08 Jul 2019 11:29:41 +0000 (UTC)
Subject: [oss-security] CVE-2019-13313, CVE-2019-13314: password disclosure via command line
 arguments

---1463811583-790780837-1562585380=:24283
Content-Type: text/plain; format=flowed; charset=ISO-8859-15
Content-Transfer-Encoding: 8BIT

   Hello,

CVE-2019-13313
   Libosinfo: osinfo-install-script option leaks password via command line 
argument. 'osinfo-install-script' is used to generate a script for automated 
guest installations. It accepts user and admin passwords via command line 
arguments, thus leaking them via process listing.

CVE-2019-13314
   virt-bootstrap: allows local users to discover root password via process 
listing virt-bootstrap 1.1.0 allows local users to discover a root password 
via process listing, because it's passed as command line parameter via 
--root-password option.

These issues were reported by Fabiano Fidêncio of Red Hat Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
---1463811583-790780837-1562585380=:24283--
