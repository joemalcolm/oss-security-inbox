Received: (qmail 13415 invoked by uid 550); 23 Dec 2024 17:47:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13385 invoked from network); 23 Dec 2024 17:47:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1734976032;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=UsLcGH1vlb9cfGhvyQiAuaDqR3+8wi5wTMIiYElxe9g=;
	b=eaDv5fUICuCksa6Z//iw75h6pP4Duj6cv3MsoIfx9PwjxoaJSHDpKWX0lT45kZMXwgidev
	BzjlxDriyR4qUGxYzSPiZHfwliwOW5GQg29kGGJDbcsq1jI/dCuivOlMp1LPKFMyKTQ8ZG
	k5gzsuEab6LHteQ4dtpxJblIS30rLZY=
X-MC-Unique: DWaLTYziO0u-QAHOL7jDXw-1
X-Mimecast-MFC-AGG-ID: DWaLTYziO0u-QAHOL7jDXw
From: Florian Weimer <fweimer@redhat.com>
To: Yuri Gribov <tetra2005@gmail.com>
Cc: oss-security@lists.openwall.com
In-Reply-To: <CAJOtW+5UMd0=ADz6cZdCo_zFaJrkQjzbNQ7N7CZr_UmL1f+sqw@mail.gmail.com>
	(Yuri Gribov's message of "Sat, 21 Dec 2024 17:29:23 +0300")
References: <CAJOtW+5UMd0=ADz6cZdCo_zFaJrkQjzbNQ7N7CZr_UmL1f+sqw@mail.gmail.com>
Date: Mon, 23 Dec 2024 18:47:03 +0100
Message-ID: <87zfkmmgvc.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Qw2l_UzWCMuLTistyuzdj8slMgEUUUr1IlEnVHMTR2Q_1734976028
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
Subject: Re: [oss-security] Re: Out-of-bounds read & write in the glibc's
 qsort()

* Yuri Gribov:

> Even with very basic setup (semi-automatic testing of Debian packages,
> no fuzzing) the tool was able to find numerous bugs in open-source
> programs (see e.g.
> https://github.com/yugr/sortcheck?tab=readme-ov-file#what-are-current-results).
> I believe many (10x) more bugs are still out there, waiting for more
> patient testers.

It's a bit odd that you disable reflexivity checks by default, but quite
a few of the issues reported are in this category.

The prevalence of these defects matches what we saw with glibc when we
introduced an implementation that absolutely required that the
comparison function returns zero if passed equal elements.  We had to
add explicit pointer equality checks in a couple of places to make it
work.  (Of course, this was before we reverted back to merge sort.)

Thanks,
Florian

