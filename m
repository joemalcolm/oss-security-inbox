Received: (qmail 22472 invoked by uid 550); 24 May 2023 20:58:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22440 invoked from network); 24 May 2023 20:57:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=gnu.org;
	s=fencepost-gnu-org; h=MIME-Version:In-Reply-To:Date:References:Subject:To:
	From; bh=7oWSZvVgpM9SE64OW8Zazpf6khN33C5i+tD68eySeTo=; b=B/iCTTLuzUY+986KgSnA
	1E4tZCmFb6O/ii6GYQO4wkew6kH/dLP4Vz6E5kmydUOQwuPx4Yv17yTrzrFratCYgIw8vs9UKl237
	8AJQOJY6KPmUAmxQN0ve8f+a2O29fCze0v3V/FEWC71ebz+pnxXP5Vx59LR5kp0+g9RiG9EAymh3q
	H5BAJks6Mhqc5/6mV8Mbn9TYCmSsEjNAWMF/pWnGJ1mGHVPXSuWRncutXKnYmQNK1Q+NEGo1f+Cnc
	SteHf5OLKbMlpzo6DSF459eIOk8RtJHAsM38J1MxDjXwS76RAJn/ze2gQrKsOqvT7qnw5/uO9RwYj
	uCjDU9L+Sn6Sog==;
From: =?utf-8?Q?Ludovic_Court=C3=A8s?= <ludo@gnu.org>
To: Brian Behlendorf <brian@behlendorf.com>
Cc: oss-security@lists.openwall.com
References: <17f7ebb7-22ee-e68f-02ac-8e2740e7f015@canonical.com>
	<20230511115704.GJ5725@suse.de>
	<ZG3Om+8ySRpIuHJu@pisco.westfalen.local>
	<20230524134130.GC6775@openwall.com>
	<CA+aC4ksAirMkOW5R1p=YzQH6R3gOBJZsiB2YqjH+sB+by2--pw@mail.gmail.com>
	<0400b167-9673-ae6f-19d4-379b0f40f0d5@behlendorf.com>
X-URL: http://www.fdn.fr/~lcourtes/
X-Revolutionary-Date: Quintidi 5 Prairial an 231 de la =?utf-8?Q?R=C3=A9vo?=
 =?utf-8?Q?lution=2C?= jour du
 Canard
X-PGP-Key-ID: 0x090B11993D9AEBB5
X-PGP-Key: http://www.fdn.fr/~lcourtes/ludovic.asc
X-PGP-Fingerprint: 3CE4 6455 8A84 FDC6 9DB4  0CFB 090B 1199 3D9A EBB5
X-OS: x86_64-pc-linux-gnu
Date: Wed, 24 May 2023 22:57:39 +0200
In-Reply-To: <0400b167-9673-ae6f-19d4-379b0f40f0d5@behlendorf.com> (Brian
	Behlendorf's message of "Wed, 24 May 2023 11:40:18 -0700 (PDT)")
Message-ID: <87zg5tfnwc.fsf_-_@gnu.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Attestation, reproducible builds, and bootstrapping

Hi,

Brian Behlendorf <brian@behlendorf.com> skribis:

> A clear and more formal way of understanding the different levels of
> attestation of one's build environment can be found in the SLSA
> specification. Here's a story about how Google Cloud incorporates it
> into build service:
>
> https://slsa.dev/blog/2022/12/gcb-slsa-verification
>
> Of course attestation is not proof, and even human certification can
> only go so far. Reproducible builds offer a path there but that goal
> seems just as far away as it was 20 years ago, when Java was going to
> solve that for us.

This is not true: reproducible builds are a reality for a number of
distros already and also upstream (for GNU Guix, we measure 85%
reproducibility on 22K packages; Debian might be even higher).

Bootstrapping has also gone a long way: Guix=E2=80=99s package graph is now
rooted in a 357-byte =E2=80=9Cbinary=E2=80=9D=C2=B9; everything else (with =
the exception of a
couple of bootstrap compilers such as GHC, for now) is built from
source, in isolated environments.  A similar bootstrap path is used by
freedesktop-sdk=C2=B2.

So I disagree that one has to resort to attestation and certification;
verifiability and auditability are evidently achievable and they provide
much stronger guarantees.

Ludo=E2=80=99.

=C2=B9 https://guix.gnu.org/en/blog/2023/the-full-source-bootstrap-building=
-from-source-all-the-way-down/
=C2=B2 https://gitlab.com/freedesktop-sdk/freedesktop-sdk/-/merge_requests/=
11557
