Received: (qmail 13611 invoked by uid 550); 9 Feb 2026 09:03:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13573 invoked from network); 9 Feb 2026 09:03:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1770627807;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ZV2gnPiGYZQYjxOjHBUqt9djsx9E5AvPkdhd60WW9mI=;
	b=TzA9iqlu3Hun9niIMycTorMKIb8ZpSDIx08qfcuInpw14fVD+H78OKVXhkhp5/5x0lLUqj
	t0DSRPpszwJIQAOO4PpbkkVDsVAXbnv6AyoEbEDMYD2GKaaqK+ICKhez99y8mmWFfHvKu5
	l/Y78iqDiZExSP6Z1yuaam27tX6CxkM=
X-MC-Unique: E9UgkXtAOmKexr5RrpfD4g-1
X-Mimecast-MFC-AGG-ID: E9UgkXtAOmKexr5RrpfD4g_1770627803
From: Florian Weimer <fweimer@redhat.com>
To: Sam James <sam@gentoo.org>
Cc: oss-security@lists.openwall.com
In-Reply-To: <87jywpibmv.fsf@gentoo.org> (Sam James's message of "Sat, 07 Feb
	2026 01:30:00 +0000")
References: <87jywpibmv.fsf@gentoo.org>
Date: Mon, 09 Feb 2026 10:03:19 +0100
Message-ID: <lhujywmthk8.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: w40BQAuS3S1xHsVVQN1Y2FLlVTfxBtNweg40iK9lVsY_1770627803
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] On patch vs commit messages

* Sam James:

> I see Florian has sent a patch to patch(1) for this, to implement
> --no-dedent [1].

> [1] https://lists.gnu.org/archive/html/bug-patch/2026-02/msg00000.html

I should mention that Daniel P. Berrang=C3=A9 pointed out this patch behavi=
or
to me.

Thanks,
Florian

