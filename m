Received: (qmail 30478 invoked by uid 550); 8 Feb 2023 09:42:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30457 invoked from network); 8 Feb 2023 09:42:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1675849343;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=S9/hl3lPyp5vHythy1Wg8hWShrKuj5kJflj9MTgHQ/Q=;
	b=JRTWr2b6xXV23N3ks2SX9n+Ll/956IfYFdsTYyy7dciFU4My6T35b3gB6oDnicc5TOc/eY
	X0MmKG7Rglny7Ue0URdSlXGRiqjAcVlqDVkA00ggal3xtIFQKMybvZbhVyt7jiqtL0VG/g
	K9RxqT2kyOeoMawRkeA8EVXA5Dd8kp8=
X-MC-Unique: HYOwJMZaPkyfRPzQClALLw-1
From: Florian Weimer <fweimer@redhat.com>
To: Georgi Guninski <gguninski@gmail.com>
Cc: oss-security@lists.openwall.com
References: <CAGUWgD8zb-UEWp8TVHDSbo=iaCU4gWqnJHCFSPiR0fQWS73gPg@mail.gmail.com>
Date: Wed, 08 Feb 2023 10:42:19 +0100
In-Reply-To: <CAGUWgD8zb-UEWp8TVHDSbo=iaCU4gWqnJHCFSPiR0fQWS73gPg@mail.gmail.com>
	(Georgi Guninski's message of "Tue, 7 Feb 2023 16:45:16 +0200")
Message-ID: <87h6vwqyro.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.2 (gnu/linux)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
Subject: Re: [oss-security] SEGV in `alloca(BIG)` and `long pl[BIG]`

* Georgi Guninski:

> Inline are two C warez, which crash on
> `alloca(BIG)` and `long pl[BIG]`.
>
> I think alloca(BIG) should return error if BIG>max_signed_size_t.
> In C++ `new[BUG]` throws exception and core dumps.

Unfortunately, alloca cannot report an error, and there is no portable
way to discover stack boundaries anyway.  With -fstack-clash-protection,
we could reliably produce crashes, but the feature is somewhat
incomplete:

  Integer overflows in dynamically-sized stack allocations with
  -fstack-clash-protection
  <https://gcc.gnu.org/bugzilla/show_bug.cgi?id=83697>

Thanks,
Florian

