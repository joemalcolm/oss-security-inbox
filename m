Received: (qmail 18094 invoked by uid 550); 29 Jul 2024 07:02:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18075 invoked from network); 29 Jul 2024 07:02:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1722236548;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=/t6ONSV8Q6g9V1wjKepe414m+inlvuDDAPiQ0NFRjWY=;
	b=KFMZ8308aVG2RnVd9LgESJkGdiq28OFXtRvvPqs/TQadrZPg/PhftPXGIGTngfyHZGFO0o
	m7PXHJcb1ygfW73TKQLNFI9gsRSE5vNtnqeClM+kI9kHnnJIlSHkyuXA4Ang/g5SShhbNU
	CiZeQOIrk2oJOnKNVPkkcXJ/TCA2oCM=
X-MC-Unique: s7Y2T46EMu2k16og-gipNg-1
From: Florian Weimer <fweimer@redhat.com>
To: Alan Coopersmith <alan.coopersmith@oracle.com>
Cc: oss-security@lists.openwall.com,  Solar Designer <solar@openwall.com>,
  sebastian@centricular.com
In-Reply-To: <886447e5-efb2-4701-83ef-2872bfd657e0@oracle.com> (Alan
	Coopersmith's message of "Fri, 26 Jul 2024 13:05:09 -0700")
References: <2309f1ae-1898-41f4-a369-c964498e9128@oracle.com>
	<20240726194606.GA12556@openwall.com>
	<886447e5-efb2-4701-83ef-2872bfd657e0@oracle.com>
Date: Mon, 29 Jul 2024 09:02:12 +0200
Message-ID: <87v80or897.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
Subject: Re: [oss-security] GStreamer Security Advisory 2024-0003: Orc
 compiler stack-based buffer overflow

* Alan Coopersmith:

> On 7/26/24 12:46, Solar Designer wrote:
>> Unfortunately, *asprintf() are not that easy to use safely:
>> "For asprintf(), if memory allocation was not possible, or if some
>> other
>> error occurs, the function shall return a negative value, and the
>> contents of the location referenced by ptr are undefined, but shall not
>> refer to allocated memory."
> [...]
>> As I recall, on *BSD's *asprintf() also reset the pointer to NULL.  On
>> upstream glibc, it does not.  We failed to get this change past Ulrich
>> back then:
>> https://sourceware.org/legacy-ml/libc-alpha/2001-12/msg00045.html
>
> Yes, this came up in the discussion to add asprintf() to POSIX in
> https://austingroupbugs.net/view.php?id=1496 :
>
>> Of the above listed implementations, all but GNU libc document that they will
>> set *ptr to NULL on error, while GNU libc explicitly states that you cannot
>> rely on it to do so (and looking at its code, sometimes it does, sometimes
>> it doesn't).
>
> and so the standard was written to allow both ways to be conformant.
>
> If GNU libc was willing to change that, perhaps the next version of the
> standard could as well.

I submitted a glibc patch:

  [PATCH] libio: asprintf should write NULL upon failure
  <https://inbox.sourceware.org/libc-alpha/87zfq0r8aj.fsf@oldenburg.str.redhat.com/>

Thanks,
Florian

