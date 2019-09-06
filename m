X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["634" "Friday" "6" "September" "2019" "18:12:47" "+0530" "P J P" "ppandit@redhat.com" nil "18" nil "^Date:" nil nil "9" nil nil (number mark "        ppandit@redh Sep  6   18/634   " thread-indent "\"[oss-security] CVE-2019-15890 QEMU: Slirp: use-after-free during packet reassembly\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-15890 QEMU: Slirp: use-after-free during packet reassembly" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 8061 invoked by uid 550); 6 Sep 2019 12:43:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8035 invoked from network); 6 Sep 2019 12:43:04 -0000
X-X-Sender: pjp@kaapi
Message-ID: <nycvar.YSQ.7.76.1909061810360.25514@xnncv>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]); Fri, 06 Sep 2019 12:42:53 +0000 (UTC)
Date: Fri, 6 Sep 2019 18:12:47 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2019-15890 QEMU: Slirp: use-after-free during packet reassembly
To: oss security list <oss-security@lists.openwall.com>

   Hello,

A use-after-free issue was found in the SLiRP networking implementation of the 
QEMU emulator. It occurs in ip_reass() routine while reassembling incoming 
packets, if the first fragment is bigger than the m->m_dat[] buffer. A 
user/process could use this flaw to crash the Qemu process on the host 
resulting in DoS.

Upstream patch:
---------------
   -> https://gitlab.freedesktop.org/slirp/libslirp/commit/c59279437eda91841b9d26079c70b8a540d41204

CVE-2019-15890 assigned via -> https://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
