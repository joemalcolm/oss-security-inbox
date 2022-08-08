Received: (qmail 15996 invoked by uid 550); 8 Aug 2022 12:21:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15975 invoked from network); 8 Aug 2022 12:21:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1659961259;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Dwr5ZuglmYvgrZDMtsHyjDJMz/90HiJ1iY8KPiGOiB8=;
	b=h88oMYq8+zCcxlPyBoYuVviY49Zf39snacggGTUrxl8UBTElvYI1YysRzpbz03vf3aX1dk
	iG+zhAY6ZY6nQrbb54e/Z5V5Y4kdkJCJuPvbJw5iUgOSmPEp8WsL8S5CyLZe37NjJDzAq+
	/ZIQoFpJkY8VxHcgtSaJEcxwZuroI88=
X-MC-Unique: vvFrm0i2PdmkGT6-Q_q85A-1
From: Florian Weimer <fweimer@redhat.com>
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com,  Dipanjan Das
 <mail.dipanjan.das@gmail.com>,  Dylan Yudaken <dylany@fb.com>,  Jens Axboe
 <axboe@kernel.dk>
References: <20220808112020.GA18620@openwall.com>
Date: Mon, 08 Aug 2022 14:20:53 +0200
In-Reply-To: <20220808112020.GA18620@openwall.com> (Solar Designer's message
	of "Mon, 8 Aug 2022 13:20:20 +0200")
Message-ID: <87a68fncyi.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.2 (gnu/linux)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
Subject: Re: [oss-security] Linux kernel: io_uring: free of unallocated
 buffer list in io_register_pbuf_ring()

* Solar Designer:

> I think this wasn't reported in here before, and has no CVE ID?
>
> Writeup in Chinese dated July 29:
>
> https://dawnslab.jd.com/linux-5.19-rc2_pbuf_ring_0day/
>
> Fix dated July 21, per the writeup included in 5.19-rc8:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=ec8516f3b7c40ba7050e6b3a32467e9de451ecdf
>
> Per the Fixes tag, the bug was introduced in May, in:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=c7fb19428d67

Wasn't this introduced and fixed during 5.19 development?  In those
cases, no CVE assignment is expected.

Thanks,
Florian

