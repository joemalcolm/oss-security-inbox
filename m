X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["946" "Tuesday" "9" "June" "2020" "10:58:08" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.77.849.2006091051520.30592@xnncv>" "27" "[oss-security] CVE-2020-10761 QEMU: nbd: reachable assertion failure innbd_negotiate_send_rep_verr via remote client" nil nil nil "6" "2020060905:28:08" "[oss-security] CVE-2020-10761 QEMU: nbd: reachable assertion failure innbd_negotiate_send_rep_verr via remote client" (number mark "U       ppandit@redh Jun  9   27/946   " thread-indent "\"[oss-security] CVE-2020-10761 QEMU: nbd: reachable assertion failure innbd_negotiate_send_rep_verr via remote client\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-10761 QEMU: nbd: reachable assertion failure innbd_negotiate_send_rep_verr via remote client" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19936 invoked by uid 550); 9 Jun 2020 05:28:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19915 invoked from network); 9 Jun 2020 05:28:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1591680499;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=jf3GdQ74sq5Uh2RVuj+zDiLxK8C6gt6LufqGDErSlHk=;
	b=BFHHTe4+1zSsybhNjP3mXT1k8Y99YuCMjCksQ7JixiUmrA7RGAU9pJVIy/LFYb81J6wOpF
	W/o4I3spO1t2YFtMDr6KXz1SqBvocN4uwmRMzGyF4F5W5uVN5Lz6PLuPBxeNwRMts4X75q
	7zIbaYniovJAKV3jwkG/FB+fp7fXiuE=
X-MC-Unique: B4_4oZOuMjmuAaBW3NEdXQ-1
Date: Tue, 9 Jun 2020 10:58:08 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: oss security list <oss-security@lists.openwall.com>
cc: Eric Blake <eblake@redhat.com>, Xueqiang Wei <xuwei@redhat.com>
Message-ID: <nycvar.YSQ.7.77.849.2006091051520.30592@xnncv>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] CVE-2020-10761 QEMU: nbd: reachable assertion failure
 innbd_negotiate_send_rep_verr via remote client

   Hello,

Quick Emulator(Qemu) built with the Network Block Device(NBD) Server support 
is vulnerable to a crash via assertion failure. It could occur when a 
nbd-client sends a spec-compliant request that is near the boundary of the 
maximum permitted length. A remote user/process could use this flaw to crash 
the qemu-nbd server resulting in DoS.

Upstream patch:
---------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2020-06/msg02031.html

Issue introduced since QEMU v4.2
   -> https://git.qemu.org/?p=qemu.git;a=commit;h=93676c88d7a5cd5971de94f9091eff8e9773b1af
     server:
     - Adjust things to allow full 4k name limit rather than previous 256 byte
       limit

     - It allowed nbd-client to send longer (>256 bytes) export names

This issue was reported by Eric Blake and Xueqiang Wei of Red Hat Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D

