X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["735" "Tuesday" "25" "February" "2020" "16:53:23" "+0530" "P J P" "ppandit@redhat.com" nil "21" nil "^Date:" nil nil "2" nil nil (number mark "        ppandit@redh Feb 25   21/735   " thread-indent "\"Re: [oss-security] CVE-2020-2732: Nested VMX vulnerability\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2020-2732: Nested VMX vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21597 invoked by uid 550); 25 Feb 2020 11:23:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21576 invoked from network); 25 Feb 2020 11:23:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1582629814;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CEM4r+AeTFfi/OSTWq+s9NOuyzcOdiu5Trlk9Iq9ycE=;
	b=UUcLBgYSWtWJs+QA5+RRNBQq3r6HkFvbt7dimVtzkHuiZSE770AFDOeV9FDlxU3foU9bGO
	cj8ewidwQtAbj4OswvGIR/lMUTUR3z+w9Jpg4Yh0urZyebW67Unq/O/iNmd8B1KCqGrtsn
	CmEQd6okdoQS5hl+xzBrU4CvT1qDr14=
X-MC-Unique: iuAmIgDcM2epa2yi2w-oxA-1
X-X-Sender: pjp@kaapi
In-Reply-To: <d22f908e-2c27-4067-cdef-a009ddebf344@oracle.com>
Message-ID: <nycvar.YSQ.7.76.2002251652010.341783@xnncv>
References: <d22f908e-2c27-4067-cdef-a009ddebf344@oracle.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable
Date: Tue, 25 Feb 2020 16:53:23 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2020-2732: Nested VMX vulnerability
To: oss-security@lists.openwall.com

+-- On Mon, 24 Feb 2020, Boris Ostrovsky wrote --+
| Under certain circumstances, an L2 guest may trick the L0 hypervisor into=
=20
| accessing sensitive L1 resources that are supposed to be inaccessible to =
the=20
| L2 guest according to L1 hypervisor configuration.
|=20
| Only Intel processors are affected.
|=20
| Patches are attached.

  -> https://www.spinics.net/lists/kvm/msg208259.html
  -> https://git.kernel.org/linus/07721feee46b4b248402133228235318199b05ec
  -> https://git.kernel.org/linus/35a571346a94fb93b5b3b6a599675ef3384bc75c
  -> https://git.kernel.org/linus/e71237d3ff1abf9f3388337cfebf53b96df2020d

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D

