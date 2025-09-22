Received: (qmail 13941 invoked by uid 550); 22 Sep 2025 22:52:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32022 invoked from network); 22 Sep 2025 21:13:42 -0000
Authentication-Results: mail.gathman.org; iprev=pass policy.iprev="2001:470:8:809::1010" (mail.gathman.org); auth=pass (CRAM-MD5 sslbits=256) smtp.auth=stuart
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gathman.org; 
 i=@gathman.org; q=dns/txt; s=default; t=1758575544; 
 h=date : from : to : cc : subject : in-reply-to : 
 message-id : references : mime-version : content-type : 
 date : from : subject; 
 bh=uMnB2asGXJPeFT0rupTOhX0/WXbSBThEDXUkANmDiNo=; 
 b=Vn+GNFMU1FdJ0sfL1GPwB1+ik02SmsFt788m+0Dq6MnbsktI16r9aFAw
 0IE4ySeGh9DYs6Pwjr2NQ2gIw8Dz5+RqP+pRWqgqt8uo920jQQePb9wlIx
 bPnqRdnx9t5mDbEQU30ca+7C3TZXJFarjC32L9rRgiQz+010mgqWj9RmQ=
Date: Mon, 22 Sep 2025 17:12:20 -0400 (EDT)
From: Stuart D Gathman <stuart@gathman.org>
To: oss-security@lists.openwall.com
cc: openssh@openssh.com
In-Reply-To: <92a89d5d-e0de-c713-e7d2-83f971574eff@mindrot.org>
Message-ID: <ff3b453-2b4-b451-70a7-a6bc68887437@gathman.org>
References: <92a89d5d-e0de-c713-e7d2-83f971574eff@mindrot.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
Subject: Re: [oss-security] CVE-2023-51767: a bogus CVE in OpenSSH

On Mon, 22 Sep 2025, Damien Miller wrote:

> It is based on this paper "Mayhem: Targeted Corruption of Register and
> Stack Variables" by Adiletta, et al.
> https://arxiv.org/pdf/2309.02545
>
> Firstly, we do not consider it to be the application's responsibility
> to defend against platform achitectural weaknesses. We're happy
> to adopt platform measures (e.g. toolchain defences) where it is
> possible to do so, but fundamentally it is the platform's job to

Amen.  Plus, some of us prefer slower and reliable to fast and fragile

Question: is this attack mitigated by ECC ram?  (It seems to be a weak 
RAM issue.)  The paper say no: "Further, [8] showed that ECC, a
hardware-enabled error checking built into many memory devices, can also
be bypassed."

Question: will this vulnerability be incorporated in MEMTEST86?

> Unfortunately, at no stage of the CVE issuance process was OpenSSH
> contacted about this advisory either. This seems pretty suboptimal as
> a process.
>
> Posting this for the record and in the hope that someone will help
> get the CVE disputed.

I have no clue how to help.  But will do so if informed.
