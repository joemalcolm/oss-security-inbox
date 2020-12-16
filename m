X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1118" "Wednesday" "16" "December" "2020" "20:38:25" "+0530" "P J P" "ppandit@redhat.com" "<9o47rr38-30r2-8r7-8rp8-6p7634sss92@erqung.pbz>" "33" "[oss-security] [ANNOUNCE] qemu-security mailing list" nil nil nil "12" "2020121615:08:25" "[oss-security] [ANNOUNCE] qemu-security mailing list" (number mark "U       ppandit@redh Dec 16   33/1118  " thread-indent "\"[oss-security] [ANNOUNCE] qemu-security mailing list\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [ANNOUNCE] qemu-security mailing list" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13381 invoked by uid 550); 16 Dec 2020 15:08:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13363 invoked from network); 16 Dec 2020 15:08:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1608131317;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=NMNfusSdXdqfywyih8ygmVnTve97vxNBtIiHvbOTWqQ=;
	b=WIcRcO8sky8i//LpAooxspolfySo3+yFyjnvnNW/oYB8/wshJiQ69djoLOb9MpTpRi36+T
	wbUvp/v69DupKcqddekhoGr+73tZE+6/ImDzbphfMqmgQmdOuWQ8KTU83ZcWkClt7gppFg
	3/4lRVG0p/Pz4k3ZDOrjz5RfRBTiRTs=
X-MC-Unique: 93SnedfXNSK0t9bU_Q3cOQ-1
Date: Wed, 16 Dec 2020 20:38:25 +0530 (IST)
From: P J P <ppandit@redhat.com>
To: QEMU Developers <qemu-devel@nongnu.org>
cc: oss security list <oss-security@lists.openwall.com>, 
    Daniel Berrange <berrange@redhat.com>, 
    Michael Tsirkin <mtsirkin@redhat.com>, Petr Matousek <pmatouse@redhat.com>, 
    Stefano Stabellini <sstabellini@kernel.org>, 
    Michael Roth <michael.roth@amd.com>
Message-ID: <9o47rr38-30r2-8r7-8rp8-6p7634sss92@erqung.pbz>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=ppandit@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; format=flowed; charset=US-ASCII
Subject: [oss-security] [ANNOUNCE] qemu-security mailing list

   Hello,

* QEMU project has set-up a dedicated mailing list to receive and triage all
   its security issues.

   Please see:
     -> https://www.qemu.org/contribute/security-process/
     -> https://lists.nongnu.org/mailman/listinfo/qemu-security

* If you are a security researcher OR think you've found a potential security
   issue in QEMU, please kindly follow the new process to report your issues.

* This is a moderated mailing list. It is meant for systematic handling of
   QEMU security issues and coordinate their public disclosure.

* Membership of this list is limited to people involved in the analysis and
   triage of QEMU security issues.

* To report QEMU security issues you need/should not subscribe to this list.

* We'd like to invite representatives of security teams who are downstream
   consumers of QEMU to contact the list, if they wish to participate in the
   triage process.

* All members will be required to agree and adhere to the embargo rules and
   restrictions.


Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D

