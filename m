Received: (qmail 19494 invoked by uid 550); 24 Apr 2024 16:14:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19473 invoked from network); 24 Apr 2024 16:14:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1713975241;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=AYxG3a58USbEQv50AK9QHLm0dlZe4ako9GmLUcGnyPw=;
	b=BFYgS1/P9ZKfcAY4oOEikQ+96sGtoEgD3uafiToXTPsaCRMSgaMqR8dDsJ/Eco/2Jb27MA
	rg+Dv+FV0jchResgnXzWoQFaNp7boPhtC3bh9/lUARdClFCifrIcTYngl1m/ZkF+0pI8ZD
	GZ+oMMRZ83KNHY+A5/DQQzgcMWAeuTw=
X-MC-Unique: COj03rfhPQGhZI9z2fcpow-1
From: Florian Weimer <fweimer@redhat.com>
To: oss-security@lists.openwall.com
In-Reply-To: <23c15272-d797-4c3c-bbfb-e462c900978f@gmail.com> (Adhemerval
	Zanella Netto's message of "Wed, 17 Apr 2024 14:36:02 -0300")
References: <23c15272-d797-4c3c-bbfb-e462c900978f@gmail.com>
Date: Wed, 24 Apr 2024 18:13:56 +0200
Message-ID: <871q6u91rv.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
Subject: Re: [oss-security] The GNU C Library security advisories update for
 2024-04-17: GLIBC-SA-2024-0004/CVE-2024-2961: ISO-2022-CN-EXT: fix
 out-of-bound writes when writing escape sequence

* Adhemerval Zanella Netto:

> The following security advisories have been published:
>
> GLIBC-SA-2024-0004:
> ===================
> ISO-2022-CN-EXT: fix out-of-bound writes when writing escape sequence

For those who haven't prepared/shipped updates yet: we've got a fix for
a stack-based buffer overflow in nscd under review.

  [PATCH 0/4] Various nscd security fixes
  <https://inbox.sourceware.org/libc-alpha/cover.1713974801.git.fweimer@redhat.com/>

These are initial patches, still under review.  The glibc security team
will send a separate notification once official patches are ready.

The initial issue was reported in Bugzilla without an embargo period,
hence the public patch development.  The other bugs concern the same
code and are very minor compared to the initial finding, so a separate
embargo for them doesn't make sense.

Thanks,
Florian

