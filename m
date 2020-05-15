X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["927" "Friday" "15" "May" "2020" "11:27:06" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.2005151113190.1451610@xnncv>" "25" "[oss-security] Re: [test case][kunit] CVE-2020-10711 Kernel netLabel" nil nil nil "5" "2020051505:57:06" "[oss-security] Re: [test case][kunit] CVE-2020-10711 Kernel netLabel" (number mark "U       ppandit@redh May 15   25/927   " thread-indent "\"[oss-security] Re: [test case][kunit] CVE-2020-10711 Kernel netLabel\"\n") "<640d9869f8e7ea0aedaca2e29ecc3efeb7dfc940.camel@amazon.com>" ("<640d9869f8e7ea0aedaca2e29ecc3efeb7dfc940.camel@amazon.com>") nil nil nil nil nil nil nil "[oss-security] Re: [test case][kunit] CVE-2020-10711 Kernel netLabel" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3281 invoked by uid 550); 15 May 2020 05:57:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3263 invoked from network); 15 May 2020 05:57:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1589522238;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=I+dW+XZ9OoFo7BWo9K5v/eTcOwiM4LTjwqFy9MslLSc=;
	b=E9akAoFnou+w2FWkdSqI6B9KIfChP/imhanpd46AcZZfQnk20bupDSZcaEVE2iuNWgaySi
	nF/P73cFTuSY5r2Ocs/Xwc5wQIKZ5A77vfWas9uyKuO2FageDUIUOTCLC+HsAfWmKFZMPL
	vH2/cSmAtaG+v3ckJdv7KactJzvXmms=
X-MC-Unique: nB8h42L5P7uxvceFVgbD8Q-1
Date: Fri, 15 May 2020 11:27:06 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: "Singh, Balbir" <sblbir@amazon.com>
cc: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>, 
    "matthew.sheets@gd-ms.com" <matthew.sheets@gd-ms.com>, 
    "code@tyhicks.com" <code@tyhicks.com>, 
    "Mendoza-jonas, Samuel" <samjonas@amazon.com>, 
    "pabeni@redhat.com" <pabeni@redhat.com>
In-Reply-To: <640d9869f8e7ea0aedaca2e29ecc3efeb7dfc940.camel@amazon.com>
Message-ID: <nycvar.YSQ.7.76.2005151113190.1451610@xnncv>
References: <640d9869f8e7ea0aedaca2e29ecc3efeb7dfc940.camel@amazon.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Subject: [oss-security] Re: [test case][kunit] CVE-2020-10711 Kernel netLabel

  Hello Balbir,

+-- On Fri, 15 May 2020, Singh, Balbir wrote --+
| I've spent some time writing a kunit test case for CVE-2020-10711 using the
| KUNIT framework. I am attaching the patch below for reference. The patch is
| against the latest linux-next. The details are in the test case, there
| are some TODOs:
| 
| 1. Add test cases for the ipv6 variant
| 2. Add a test case for cipso_v4_parsetag_rpm variant
| 
| Please feel to suggest improvements or better ways to test this, this is
| a rough patch, but I still wanted to share it and see if it helps others/
| get comments on the approach to testing it.

Thank you so much for working on this. At first glance it looks okay, you need 
to send this to an upstream -netdev list for better reviews/inputs.

  -> http://vger.kernel.org/vger-lists.html#netdev

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D

