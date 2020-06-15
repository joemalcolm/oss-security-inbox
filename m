X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["564" "Monday" "15" "June" "2020" "23:27:50" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.77.849.2006152326260.24307@xnncv>" "15" "Re: [oss-security] CVE-2020-13754 QEMU: msix: OOB access during mmio operations may lead to DoS" nil nil nil "6" "2020061517:57:50" "[oss-security] CVE-2020-13754 QEMU: msix: OOB access during mmio operations may lead to DoS" (number mark "U       ppandit@redh Jun 15   15/564   " thread-indent "\"Re: [oss-security] CVE-2020-13754 QEMU: msix: OOB access during mmio operations may lead to DoS\"\n") "<nycvar.YSQ.7.77.849.2006012347080.62159@xnncv>" ("<nycvar.YSQ.7.77.849.2006012347080.62159@xnncv>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2020-13754 QEMU: msix: OOB access during mmio operations may lead to DoS" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3300 invoked by uid 550); 15 Jun 2020 17:58:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3282 invoked from network); 15 Jun 2020 17:58:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592243876;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=0HmZyzTMUYbg2Gxoi07Ok8haj8VR5fTx6oel8DFAs5c=;
	b=RJzX5JHO7rh93KGgkiCAjoF4CrMr4iVbhWe1eRj6MG7++OsbQinQ9YZJfKdtyIYmykDHA6
	pGiDuHBlF/rvKADbLPR7E1l0ITpbtc4kzy6OQVettCyQ8U60VY/z6+YSc4+pGUozxgT0it
	3STu8bB/9lSxdv+GNGN5ZQffOKZXiMY=
X-MC-Unique: TKiDtHK9Pnm1QPFJGf5hHg-1
Date: Mon, 15 Jun 2020 23:27:50 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: oss security list <oss-security@lists.openwall.com>
In-Reply-To: <nycvar.YSQ.7.77.849.2006012347080.62159@xnncv>
Message-ID: <nycvar.YSQ.7.77.849.2006152326260.24307@xnncv>
References: <nycvar.YSQ.7.77.849.2006012347080.62159@xnncv>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [oss-security] CVE-2020-13754 QEMU: msix: OOB access during mmio
 operations may lead to DoS

+-- On Mon, 1 Jun 2020, P J P wrote --+
| An OOB access issue was found in the Message Signalled Interrupt (MSI-X) 
| device support of QEMU. It could occur while performing MSI-X mmio 
| operations when a guest sent address goes beyond the mmio region. A guest 
| user/process may use this flaw to crash the QEMU process resulting in DoS 
| scenario.

Revised upstream patch:
  -> https://lists.gnu.org/archive/html/qemu-devel/2020-06/msg03732.html

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D

