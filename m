X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["623" "Wednesday" "3" "July" "2019" "12:23:21" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1907031216340.17373@xnncv>" "20" "[oss-security] CVE-2019-10183 virt-install: unattended option leaks password via command line argument" nil nil nil "7" "2019070306:53:21" "[oss-security] CVE-2019-10183 virt-install: unattended option leaks password via command line argument" (number mark "U       ppandit@redh Jul  3   20/623   " thread-indent "\"[oss-security] CVE-2019-10183 virt-install: unattended option leaks password via command line argument\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-10183 virt-install: unattended option leaks password via command line argument" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20370 invoked by uid 550); 3 Jul 2019 06:53:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20346 invoked from network); 3 Jul 2019 06:53:38 -0000
Date: Wed, 3 Jul 2019 12:23:21 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: oss security list <oss-security@lists.openwall.com>
Message-ID: <nycvar.YSQ.7.76.1907031216340.17373@xnncv>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.43]); Wed, 03 Jul 2019 06:53:26 +0000 (UTC)
Subject: [oss-security] CVE-2019-10183 virt-install: unattended option leaks password via
 command line argument

   Hello,

Virt-install(1) utility used to provision new virtual machines has introduced 
an option '--unattended' to create VMs without user interaction. This option 
accepts guest VM passwords as command line arguments. Thus leaking them to 
others users on the system via process listing.

   -> https://virt-manager.org/download/

It was introduced recently in the virt-manager v2.2.0 release.

Upstream patch:
---------------
   -> https://www.redhat.com/archives/virt-tools-list/2019-July/msg00014.html


Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
