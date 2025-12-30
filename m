Received: (qmail 18085 invoked by uid 550); 30 Dec 2025 20:36:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3218 invoked from network); 30 Dec 2025 20:24:14 -0000
From: Sam James <sam@gentoo.org>
To: oss-security@lists.openwall.com
Cc: "Lexi Groves (49016)" <contact@gpg.fail>,  jcb62281@gmail.com,  Solar
 Designer <solar@openwall.com>
In-Reply-To: <c3b701f4-057b-41ca-9848-1e205e79fd48@gmail.com>
Organization: Gentoo
References: <3318308d-70b1-4ab3-9cca-ab4ea67dd27d@gmail.com>
	<20251228042744.GA629@openwall.com>
	<0009d6cc-143e-41e6-b240-eb526a9cb306@gmail.com>
	<d892df77-a488-4a51-af35-697897e3984e@gpg.fail>
	<c3b701f4-057b-41ca-9848-1e205e79fd48@gmail.com>
User-Agent: mu4e 1.12.13; emacs 31.0.50
Date: Tue, 30 Dec 2025 20:24:00 +0000
Message-ID: <874ip7hg67.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Many vulnerabilities in GnuPG

Demi Marie Obenour <demiobenour@gmail.com> writes:

> On 12/29/25 11:57, Lexi Groves (49016) wrote:
> [...]
>>  > Item 5:=C2=A0 Memory Corruption in ASCII-Armor Parsing
>>  >
>>  > This is a serious memory-safety error in GPG.
>>=20
>> Yes. We did not have the time to try to exploit it, but we agreed that=20
>> there is potential for remote code execution. We think that it is=20
>> irresponsible to not release the fix on the 2.4 branch, which is what=20
>> most users in the wild use.
>
> I totally agree.  This is why I referred to this vulnerability as
> a zero-day.
>
> (snip)

It's fixed in gnupg-2.4.9 for that branch, released today.
