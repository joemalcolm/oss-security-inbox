Received: (qmail 20272 invoked by uid 550); 27 May 2024 12:14:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20250 invoked from network); 27 May 2024 12:14:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1716812036;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=oOFfvZ/bGEC35BV1LryZ3VOIAF5KrQ4KDtDGY1Uj+9E=;
	b=CDtnGA1/s5lDKeoI8AV06U7ZtWyjFMeltPVlnXppbjMxbtk0x+t19ScBSiZ4tqQblHn/ea
	7qFr7iwMJkWJrUXakTjdusWhiVo/Cz//hyvLGpj/jqH+vPgfMS9hxDabHgTomF5dMWHYpG
	M9pNYBWO8DvbI95sKhF2VfUFDHTADdU=
X-MC-Unique: esQ35rsWNym5vqEYvjNwGQ-1
From: Florian Weimer <fweimer@redhat.com>
To: Erik Auerswald <auerswal@unix-ag.uni-kl.de>
Cc: oss-security@lists.openwall.com
In-Reply-To: <20240527112644.GA14080@unix-ag.uni-kl.de> (Erik Auerswald's
	message of "Mon, 27 May 2024 13:26:44 +0200")
References: <23c15272-d797-4c3c-bbfb-e462c900978f@gmail.com>
	<20240418164242.GA2468@openwall.com>
	<7789a6d5-92c9-4239-8a07-7b0131ed166b@lexfo.fr>
	<87bk4r1r71.fsf@oldenburg.str.redhat.com>
	<20240527112644.GA14080@unix-ag.uni-kl.de>
Date: Mon, 27 May 2024 14:13:51 +0200
Message-ID: <874jaj1mgw.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] The GNU C Library security advisories update for
 2024-04-17: GLIBC-SA-2024-0004/CVE-2024-2961: ISO-2022-CN-EXT: fix
 out-of-bound writes when writing escape sequence

* Erik Auerswald:

> Hi,
>
> On Mon, May 27, 2024 at 12:31:46PM +0200, Florian Weimer wrote:
>> >
>> > Although very late, here is a follow up explaining the impact of the
>> > vulnerability.
>> >
>> > Provided that you can force an application to convert a partially
>> > controlled buffer to ISO-2022-CN-EXT, you get an
>> > overflow of 1 to 3 bytes whose value you don't control.
>> >
>> > This can be triggered in at least two ways in PHP:
>> >
>> > - Through direct calls to iconv()
>> > - Through the use of PHP filters (i.e. using a "file read" vulnerabili=
ty)
>> >
>> > Due to the way PHP's heap is built, you can use such a memory
>> > corruption to alter part of a free list pointer,
>> > which can in turn give you an arbitrary write primitive in the
>> > program's memory.
>> >
>> > With this bug, any person that has a file read vulnerability with a
>> > controlled prefix on a PHP application has RCE.
>>=20
>> Out of curiosity, why would PHP translate a file to ISO-2022-CN-EXT
>> while reading it?  It's not even an ASCII-transparent charset.
>
> According to <https://www.ambionics.io/blog/iconv-cve-2024-2961-p1>, PHP
> can be told to do so via "php://filter/=E2=80=A6", a default behavior of =
PHP,
> it seems (I have just skimmed that page and do not know any details).

Oh, right:

| Obviously, base64-encoding is not the only thing you can do. Many
| filters are available.
| [=E2=80=A6]
|=20
|  =C2=BB convert.iconv.X.Y, which converts charset from X to Y
|=20
| Let's take a look at the last filter: convert.iconv.X.Y. Say that I need
| to convert my file from UTF8 to UTF16. I can use:
|=20
|   php://filter/convert.iconv.UTF-8.UTF-16/resource=3D/etc/passwd

Unfortunately, that exposes all installed iconv converters in all
directions (unlike glibc's ,ccs=3D parameter for fopen), once there is an
arbitrary URL read injection vulnerability in a PHP application.

Thanks,
Florian

