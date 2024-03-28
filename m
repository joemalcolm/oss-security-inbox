Received: (qmail 3212 invoked by uid 550); 28 Mar 2024 09:10:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27677 invoked from network); 28 Mar 2024 09:05:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1711617039;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ypRL8ks9bSYp4s5uM48KhnMgVuD9Gd9U7P+SLWS6gQY=;
	b=QtP/PUK4fwe1o0VSBsqJKbwBYL3Y0pHsuFw9wpEbsCIjVYI1sklKGMwTi6eK2qxL4Il4a8
	7htCbYkr/lBBe9bvi1fC10nAJg5AuuQZ2UHi7qKZmK2bSJ08Kh7Q2E0CsrujXpGqcNhsCM
	zUxJgZlQnv1KREwK7KIwpz/FlkyGmmw=
X-MC-Unique: 4KcToQRMPVa-gdK_tDau0A-1
Date: Thu, 28 Mar 2024 10:10:27 +0100
From: Karel Zak <kzak@redhat.com>
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com,
	"Skyler Ferrante (RIT Student)" <sjf5462@rit.edu>
Message-ID: <20240328091027.dttlp5qscwemhris@ws.net.home>
References: <CAEOG19rkUU8Pam5N67xyE9upepp_MahcnY48nek-VBAwo_NyAg@mail.gmail.com>
 <20240327213041.qyr7sglmxgdmtcb4@jwilk.net>
 <ZgSlAmss1tT8M2vZ@itl-email>
 <20240327232935.GA17111@openwall.com>
MIME-Version: 1.0
In-Reply-To: <20240327232935.GA17111@openwall.com>
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: Re: [oss-security] CVE-2024-28085: Escape sequence injection in
 util-linux wall

On Thu, Mar 28, 2024 at 12:29:35AM +0100, Solar Designer wrote:
> > > 
> > > ?? https://github.com/util-linux/util-linux/commit/404b0781f52f7c04
> > >   ("wall: fix escape sequence Injection [CVE-2024-28085]")
> > 
> > Would enforcing UTF-8 validity (regardless of user locale) be a
> > solution?
> 
> Not a complete solution. 

There is only one real solution: do not allow non-root users to write
to foreign file descriptors. Do not install wall(1) with suid. That's
all.

For now, it is enabled by default in the upstream tree, but I will
disable it in the next releases and explicit --enable-* will be
required. We also need to add more information to the man pages.

    Karel

I'm currently not aware of a safe way to allow
> multi-byte characters coming from concurrent writers, see:
> 
> https://www.openwall.com/lists/oss-security/2015/09/20/1
> 
> and the next message in that thread.
> 
> In fact, even plain ASCII isn't entirely safe if it just happens to be
> injected into the middle of a control sequence that the target user's
> program was printing, thereby altering its effect.
> 
> That said, perhaps write(1)/wall(1) just shouldn't allow bytes from both
> C0 and C1 ranges (except for TAB, LF, space) regardless of locale
> settings, at least when the programs are running SUID/SGID.  That is,
> unless the invoking user - which in this case is likely root - could
> have directly written to the target user's tty anyway.  In other words,
> mostly revert those offending commits.  Or just revert them completely.
> 
> Alexander
> 

-- 
 Karel Zak  <kzak@redhat.com>
 http://karelzak.blogspot.com

