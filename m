Received: (qmail 9413 invoked by uid 550); 16 Jan 2025 16:56:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 27996 invoked from network); 16 Jan 2025 16:51:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=citron; t=1737046308; x=1737712974; h=date:author:from:to:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  mime-version:content-type:content-transfer-encoding:author:from:subject:
  date:to:cc:resent-author:resent-date:resent-from:resent-sender:resent-to:
  resent-cc:resent-reply-to:resent-message-id:in-reply-to:references:
  mime-version:content-type:content-transfer-encoding:content-disposition:
  content-id:content-description:message-id:mail-followup-to:openpgp:
  blahblahblah; bh=MH8nEqO1aIf5wYo3Afi/s6Dy58BocZZbEvD/CKryRAk=;
 b=mqLrjYOLYnKL4zD5qOCPmzczu7x9jNh7uatOU3hiOomg9U2ei5IIQCEf1PrpKWjbk11BzX4F
  aC61x9kduSMC7o9OkvFFHG3UdlPGn3hcIqBCRMYEaBaMoHcThnSzy1jjt+HyXCKjZ0aEHIMMAH
  xamDkQ3VkLRCNJBL3EACaXGyIOWLZHHKDnDEJF3Sot/kwExCHNjM/VKXJdYRHViaLri2D3lCwf
  xr8PkMEQxwIKYd5DIbZeC/k9t4UIED6nRz/FhgxQci6vBY4as0ApttWJddCbzKg2l2yin/CJIw
  pcvnkaOVkYJ6vHJnhLxFhlnmurOASQg09SVoVvdmMoHra8/A==
DKIM-Signature: v=1; a=adaed25519-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=orange; t=1737046308; x=1737712974; h=date:author:from:to:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  mime-version:content-type:content-transfer-encoding:author:from:subject:
  date:to:cc:resent-author:resent-date:resent-from:resent-sender:resent-to:
  resent-cc:resent-reply-to:resent-message-id:in-reply-to:references:
  mime-version:content-type:content-transfer-encoding:content-disposition:
  content-id:content-description:message-id:mail-followup-to:openpgp:
  blahblahblah; bh=MH8nEqO1aIf5wYo3Afi/s6Dy58BocZZbEvD/CKryRAk=;
 b=Wbxwa9SxZnzDCZQKWbxfzhEvszJwktFWi9FhVyp5oBB1hOfIlg6veBrQHvoN5hmFEmoAKGYg
  BIwuAJD1pLKXBg==
Date: Thu, 16 Jan 2025 17:25:21 +0100
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20250116162521.wJ5wghpL@steffen%sdaoden.eu>
In-Reply-To: <Z4jejSMgNUpzFI6T@kasco.suse.de>
References: <Z4ekKFlPfkdWqeW2@kasco.suse.de>
 <5124504d-3d37-42ad-8bf7-fbbb7f8d0317@gmail.com>
 <Z4jejSMgNUpzFI6T@kasco.suse.de>
Mail-Followup-To: oss-security@lists.openwall.com
User-Agent: s-nail v14.9.25-636-gc7c14cee09-dirty
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] pam-u2f: problematic PAM_IGNORE return
 values in pam_sm_authenticate() (CVE-2025-23013)

Matthias Gerstner wrote in
 <Z4jejSMgNUpzFI6T@kasco.suse.de>:
 |On Wed, Jan 15, 2025 at 11:58:00PM -0600, Jacob Bachmeyer wrote:
 |> On 1/15/25 06:03, Matthias Gerstner wrote:
 |>> There exist utility modules that don't
 ...
 |> This looks to me like a logic error in PAM.=C2=A0 Why are utility modul=
es=20
 ...
 |I suppose libpam has no way of differentiating the "importance" or
 |purpose of the modules it runs. It could be argued that such utility

PAM is also massively underdocumented regarding things like *id
handling, environmental status in which modules run, that sessions
can be escaped via simple daemonization (not that it matters to
pam at all that mechanisms exist to overcome this, ie, on whatever
result / status code / xy side), and similar things.

For example that PAM_USER can return NULL or an empty string in
the PAM_SUCCESS status code case is more than just astonishing to
the occasional programmer who would expect that "sane behaviour"
also depends on some context, *here* not making sense on POSIX?

Also system(3) should be a pretty much safe system call if
a session opener program uses it, in that environmental attack
surface could only come from system side aka first level
administrator configuration, unless i am very much mistaken.
Ie RFC 86 writes

  Authentication software deserves special attention because
  authentication forms a very critical component of any secure
  computer system.

and for session-in-session, for example su(1), we read

   The current environment is passed to the new shell. The value of $PATH
   is reset to /bin:/usr/bin for normal users, or
   /sbin:/bin:/usr/sbin:/usr/bin for the superuser. This may be changed
   with the ENV_PATH and ENV_SUPATH definitions in /etc/login.defs.

There is no notion of signal handling, and i blindly assume that
PAM takes care for closing sessions with that "set right".
(not ducking.)

Unfortunately my pam_xdg (not what became the same in FreeBSD)
that used it never was brought up in public.  I finally unrolled
the system(3) with fork(2)/execve(2), but there is possibility
left since i still do not care for signals therein.

  ...
 |the often already pretty complex PAM stacks we see on Linux
 |distributions.
 ...

Really, in my opinion someone with money (some summer of code
maybe) should iterate PAM, so that certain conditions are in
a defined state for running module code, and that mode should be
addressible so that mode<>module is locked (ie module code only
runs if right mode).  Maybe via some dlopen(3) availability check,
and when run it returns a flag mask of states is preassumes, or
something.

 --End of <Z4jejSMgNUpzFI6T@kasco.suse.de>

Just my one cent.

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
|
|In Fall and Winter, feel "The Dropbear Bard"s pint(er).
|
|The banded bear
|without a care,
|Banged on himself for e'er and e'er
|
|Farewell, dear collar bear
