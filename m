X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["639" "Tuesday" "1" "December" "2020" "14:55:22" "+0530" "P J P" "ppandit@redhat.com" "<37sqsnq6-99n6-o8np-sp65-q9po9s494510@erqung.pbz>" "20" "[oss-security] CVE-2020-28916 QEMU: e1000e: infinite loop scenario in case of null packet descriptor" nil nil nil "12" "2020120109:25:22" "[oss-security] CVE-2020-28916 QEMU: e1000e: infinite loop scenario in case of null packet descriptor" (number mark "U       ppandit@redh Dec  1   20/639   " thread-indent "\"[oss-security] CVE-2020-28916 QEMU: e1000e: infinite loop scenario in case of null packet descriptor\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-28916 QEMU: e1000e: infinite loop scenario in case of null packet descriptor" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1936 invoked by uid 550); 1 Dec 2020 09:25:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1915 invoked from network); 1 Dec 2020 09:25:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1606814732;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=eARcaaRjx1cCw7EWu4Sy3DKSah4L52FBdWtQbo5NwOU=;
	b=bfUo3iy/fiwt9/NpnkUAO/NvAwfmYU57my9+g/tN6dxA/BEwfTGaSZkC5VlLJU/GOj/Ssr
	u5sVfoCycvoScXnkAOK7y+JPvZPs2i/G4SuUbPAdV9GWFZq2kp3ZJ2m5Pln0PEuX05LHDa
	QU2zjo5AOzGSfPjDoVCPORmzoqlZq8Y=
X-MC-Unique: RijtCzo6NtWU98ey5MUWRg-1
Date: Tue, 1 Dec 2020 14:55:22 +0530 (IST)
From: P J P <ppandit@redhat.com>
To: oss security list <oss-security@lists.openwall.com>
cc: Cheol-woo Myung <330cjfdn@gmail.com>
Message-ID: <37sqsnq6-99n6-o8np-sp65-q9po9s494510@erqung.pbz>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=ppandit@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] CVE-2020-28916 QEMU: e1000e: infinite loop scenario in case of null
 packet descriptor

   Hello,

An infinite loop issue was found in the e1000e device emulator in QEMU. The 
issue could occur while receiving packets via e1000e_write_packet_to_guest() 
routine, if the receive(RX) descriptor has NULL buffer address. A privileged 
guest user may use this flaw to induce a DoS scenario on the host.

Upstream patch:
---------------
   -> https://lists.nongnu.org/archive/html/qemu-devel/2020-11/msg03185.html

This issue was reported by Cheol-woo Myung.

CVE-2020-28916 assigned via -> https://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D

