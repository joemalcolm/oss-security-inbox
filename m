Received: (qmail 20244 invoked by uid 550); 22 Jun 2023 01:54:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20224 invoked from network); 22 Jun 2023 01:54:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1687398839;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=UuMq8HPYKOr3Sn58L5OnHZh/Y8zwws4bZTdQMK9yI30=;
	b=GUNY9bXC8sxbxcftaOmN8Nl1dGyjQDazQt3rvsLlK7fc3yyYldjKI/QhrkRtkGceeF4kwy
	rXdaOeeUTGdxnZzC35QmgqpvAvLOIn1xnuyNzg3NGui9lEpqhCf7G1Dhi0dPULT8niJKC2
	SwIzbb2/PG5uZPtoyz47vznOeEAqcT0=
X-MC-Unique: zlweZMSQNFGtB1_fAmzW2A-1
From: Steve Grubb <sgrubb@redhat.com>
To: oss-security@lists.openwall.com
Cc: Demi Marie Obenour <demi@invisiblethingslab.com>
Date: Wed, 21 Jun 2023 21:53:54 -0400
Message-ID: <1856911.tdWV9SEqCh@x2>
Organization: Red Hat
In-Reply-To: <ZJNx4OBlGqGFgOYD@itl-email>
References: <a37bfa30-f7d2-ae37-5af4-e3674af29a7a@oracle.com>
 <alpine.BSF.2.21.9999.2306220132050.17927@aneurin.horsfall.org>
 <ZJNx4OBlGqGFgOYD@itl-email>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] CVE-2023-31975: memory leak in yasm

On Wednesday, June 21, 2023 5:54:57 PM EDT Demi Marie Obenour wrote:
> On Thu, Jun 22, 2023 at 01:44:04AM +1000, Dave Horsfall wrote:
> > On Wed, 21 Jun 2023, Jeffrey Walton wrote:
> > > Memory leaks on exit are par for the course in GNU software per
> > > https://www.gnu.org/prep/standards/standards.html#Memory-Usage .
> >=20
> > Don't bother with this, don't bother with that, etc...  Call me
> > old-school (which I am), but I cannot abide sloppy programming[*].
>=20
> Memory leaks on exit are a _good_ thing in general.  There is absolutely
> zero point in calling free() if the program is about to exit =E2=80=94 th=
e OS
> will do a better job of freeing resources than the program itself ever
> could.

Sure, but how can static analysis or address sanitizers tell the difference=
=20
between something created and leaked on the error path, vs something that=20
mattered during the life of the program? Meaning something leaks in an even=
t=20
loop and slowly accumulates leakage. Nothing gives you a free pass but the =
OS=20
when analyzing leaks. Mundane leaks need cleaning up so you can find the re=
al=20
leaks that matter.

-Steve


