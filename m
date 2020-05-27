X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["697" "Wednesday" "27" "May" "2020" "12:55:43" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.77.849.2005271253030.62159@xnncv>" "20" "[oss-security] CVE-2020-13253 QEMU: sd: OOB access could crash the guest resulting in DoS" nil nil nil "5" "2020052707:25:43" "[oss-security] CVE-2020-13253 QEMU: sd: OOB access could crash the guest resulting in DoS" (number mark "U       ppandit@redh May 27   20/697   " thread-indent "\"[oss-security] CVE-2020-13253 QEMU: sd: OOB access could crash the guest resulting in DoS\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-13253 QEMU: sd: OOB access could crash the guest resulting in DoS" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16020 invoked by uid 550); 27 May 2020 07:26:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16002 invoked from network); 27 May 2020 07:26:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1590564355;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=k+i6a5Tpz5MY1bazV4A0MijxSF0yK8p13MjTMZusYTw=;
	b=Oo778/DE5RVnrER0MTfP9SA/h5igtlu4Sq6cynYXTGpy3UPmXIbnSmWn9orLQ80GuQ5eqv
	Suza97++lxXgo+KkaAPnt1xWIN7fDbJXaq/dzFlhyvY426Xb3rvXPIKpFxXxN5S+QbzLXT
	AHnsHu2lGz4koFNE9jkuhB+E6lPrsr4=
X-MC-Unique: pF8ns833MImRI64mjYiHIA-1
Date: Wed, 27 May 2020 12:55:43 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: oss security list <oss-security@lists.openwall.com>
cc: Alexander Bulekov <alxndr@bu.edu>
Message-ID: <nycvar.YSQ.7.77.849.2005271253030.62159@xnncv>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] CVE-2020-13253 QEMU: sd: OOB access could crash the guest resulting
 in DoS

   Hello,

An out-of-bounds read access issue was found in the SD Memory Card emulator of 
the QEMU. It occurs while performing block write commands via sdhci_write(), 
if a guest user has sent 'address' which is OOB of 's->wp_groups'. A guest 
user/process may use this flaw to crash the QEMU process resulting in DoS.

Upstream bug/thread:
   -> https://bugs.launchpad.net/qemu/+bug/1880822
   -> https://lists.gnu.org/archive/html/qemu-devel/2020-05/msg05877.html

This issue was reported by Alexander Bulekov(CC'd). 'CVE-2020-13253' requested 
via -> https://cveform.mitre.org/


Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D

