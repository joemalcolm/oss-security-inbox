Received: (qmail 17862 invoked by uid 550); 23 Dec 2024 21:37:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17833 invoked from network); 23 Dec 2024 21:37:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1734989815;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=DOv6QTRygj9A+cU9N9QpJXLf6l8nrOgfBmdFwNNUdtk=;
	b=Hnbxa7BaAHnrD4RqR7Vq2yRlAHGq1Y0Pbj7nlmoWNfHvw335WzoKII0P7ekxSMZDz8V6jG
	krpYKt+dC9nhscmIb/hgvnGWOH71Vfhy9dxubrEP0FgMyFnbB/mWJ9T8DlcrMTyQJaFKH3
	ceDsv8YWVa6tjrBokzeBwnrj0a9L23Q=
X-MC-Unique: QdHN15KVN0Caf1M97iWZYA-1
X-Mimecast-MFC-AGG-ID: QdHN15KVN0Caf1M97iWZYA
From: Florian Weimer <fweimer@redhat.com>
To: Yuri Gribov <tetra2005@gmail.com>
Cc: oss-security@lists.openwall.com
In-Reply-To: <CAJOtW+6vveBkwzYhzLonwUppsZvSy6c5K35ys8dxCA6U0i0sAA@mail.gmail.com>
	(Yuri Gribov's message of "Mon, 23 Dec 2024 22:33:31 +0300")
References: <CAJOtW+5UMd0=ADz6cZdCo_zFaJrkQjzbNQ7N7CZr_UmL1f+sqw@mail.gmail.com>
	<87zfkmmgvc.fsf@oldenburg.str.redhat.com>
	<CAJOtW+6vveBkwzYhzLonwUppsZvSy6c5K35ys8dxCA6U0i0sAA@mail.gmail.com>
Date: Mon, 23 Dec 2024 22:36:48 +0100
Message-ID: <878qs6m68f.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: _5OK9584XetsijDIZU2BA1bo91S1uZs3C4HwfWmpDoA_1734989812
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Re: Out-of-bounds read & write in the glibc's
 qsort()

* Yuri Gribov:

> On Mon, Dec 23, 2024 at 8:47=E2=80=AFPM Florian Weimer <fweimer@redhat.co=
m> wrote:
>> It's a bit odd that you disable reflexivity checks by default, but quite
>> a few of the issues reported are in this category.
>
> I think back then I wanted to make default settings free of false
> positives. Often sorted arrays may only contain unique elements and in
> such cases reflexivity checks are useless.

Are they?  In the longstanding glibc quicksort implementation (usually
hidden behind a merge sort), reflexivity was required to rediscover an
element that the implementation assumed to be there and dependent upon
for loop termination.  Other quicksort implementations seem to have
similar requirements.  For monomorphizing implementations such as
std::sort for C++ not doing the pointer (iterator) check actually makes
sense from a performance perspective.

Thanks,
Florian

