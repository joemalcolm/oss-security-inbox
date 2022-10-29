Received: (qmail 8177 invoked by uid 550); 29 Oct 2022 13:04:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29749 invoked from network); 29 Oct 2022 12:43:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=obtuse.com; s=20200401;
	t=1667047392;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=2cpn9F6kpUSwSRY8K9MMPPPqIyihfgdSsa+x+iwNB+I=;
	b=hIHuQ1AMDyk68R8Q8KgtcBgcDTneaRdeT/1MjFMBYXKI/Grq9kqAKDfbJx4mpnckTN2LiE
	5vAcd9Nef+nNSpRZEWR8zMkkrK8wqEB6Am6hGVILcoyJm2X8GOoMurPg4fWThqmtT1UqJc
	Kfxzdhx3RPSCuymKbztnvmR53eCdU9E=
Content-Type: multipart/alternative; boundary=Apple-Mail-1ED91C9F-0A1D-4B5D-8873-3B2FD4DC6876
Content-Transfer-Encoding: 7bit
From: Bob Beck <beck@obtuse.com>
Mime-Version: 1.0 (1.0)
Date: Sat, 29 Oct 2022 08:43:08 -0400
Message-Id: <E8ADE3CA-4D49-4149-808F-8EC94BF3502D@obtuse.com>
References: <CAB=ivF85hhN73MbzdX9j72Vqa5pNuF-FVYZD9BToqRM1qPSx2g@mail.gmail.com>
Cc: oss-security@lists.openwall.com, libressl-security@openbsd.org
In-Reply-To: <CAB=ivF85hhN73MbzdX9j72Vqa5pNuF-FVYZD9BToqRM1qPSx2g@mail.gmail.com>
To: Roxana Bradescu <roxabee@chromium.org>
X-Mailer: iPhone Mail (19G82)
Subject: Re: [oss-security] Forthcoming OpenSSL Releases

--Apple-Mail-1ED91C9F-0A1D-4B5D-8873-3B2FD4DC6876
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Libressl is not vulnerable to the upcoming issue.=20

> On Oct 27, 2022, at 18:25, Roxana Bradescu <roxabee@chromium.org> wrote:
>=20
> =EF=BB=BF
> I think that's a question for the LibreSSL Security team as to whether th=
ey do pre-advisories?
>=20
> ---
> Regards, Roxana
>=20
>> On Thu, Oct 27, 2022 at 8:13 AM Georgi Guninski <gguninski@gmail.com> wr=
ote:
>> Is libressl affected by these?
>>=20
>> Haven't seen announcement from libressl.

--Apple-Mail-1ED91C9F-0A1D-4B5D-8873-3B2FD4DC6876--
