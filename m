Received: (qmail 3457 invoked by uid 550); 18 Oct 2024 01:19:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22167 invoked from network); 18 Oct 2024 01:13:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=citron; t=1729213998; x=1729880664; h=date:author:from:to:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  author:from:subject:date:to:cc:resent-author:resent-date:resent-from:
  resent-sender:resent-to:resent-cc:resent-reply-to:resent-message-id:
  in-reply-to:references:mime-version:content-type:
  content-transfer-encoding:content-disposition:content-id:
  content-description:message-id:mail-followup-to:openpgp:blahblahblah;
 bh=S6VxQOF70ntt+HRJuIsdxrVrhKcSbKBtJNdl+hYMv18=;
 b=dxORAQx30Rm38CZTS4nM1iJBGPxamBEKAN5Z/xmucXHran+PES5ZodECjaB3N7mjLIJXNDR7
  kvvtMJMmal6ZLEcmao4eZcE4n+cnuYlTAoEt9IZ5/NPy8gBMLab5iREkb23fVzN1Y7DVPXqGLL
  ZgSU+WRu6lPhE6cN99BDjbqyobka6hrmte6wGUB4fEbeFSW5E34Hz278wWq/zth1UZ4Wber1/D
  x7WAztpbW/m4pFSEddKdsIJ9nMeDcfembjbPDarqIjKW/JTcH7IKb7t7yUMmoJoD3RfFjCLmi8
  p+wf7cZVd2OrZI/SQXmoNZb2hXENBxRnDl68z/0SiyJ8janw==
DKIM-Signature: v=1; a=adaed25519-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=orange; t=1729213998; x=1729880664; h=date:author:from:to:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  author:from:subject:date:to:cc:resent-author:resent-date:resent-from:
  resent-sender:resent-to:resent-cc:resent-reply-to:resent-message-id:
  in-reply-to:references:mime-version:content-type:
  content-transfer-encoding:content-disposition:content-id:
  content-description:message-id:mail-followup-to:openpgp:blahblahblah;
 bh=S6VxQOF70ntt+HRJuIsdxrVrhKcSbKBtJNdl+hYMv18=;
 b=VP2GSMIrE2vJGJSlZO3jj2n/uS6zWJTLLFz4YBk84KAcKqNqWV5t92tClEbwN9fMzNfNe105
  u/x5iSIsh+lCAw==
Date: Fri, 18 Oct 2024 03:13:16 +0200
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20241018011316.MMXaKFiJ@steffen%sdaoden.eu>
In-Reply-To: <ZxDKuqteocmdBDNx@kasco.suse.de>
References: <Zv-9gAGM_X7QQShJ@suse.com> <878qv251x7.fsf@kaka.sjd.se>
 <20241008025402.GA2904@openwall.com> <878quzt99y.fsf@kaka.sjd.se>
 <20241008205659.GA7086@openwall.com> <Zw5VcOQzbCUChikG@kasco.suse.de>
 <Zw6_0fzKlkBIbRSj@itl-email> <20241015202135.GA8875@openwall.com>
 <ZxDKuqteocmdBDNx@kasco.suse.de>
Mail-Followup-To: oss-security@lists.openwall.com
User-Agent: s-nail v14.9.25-621-gdaef221efb
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
Subject: Re: [oss-security] CVE-2024-47191: Local root exploit in the
 PAM module pam_oath.so

Hello.

Matthias Gerstner wrote in
 <ZxDKuqteocmdBDNx@kasco.suse.de>:
 |On Tue, Oct 15, 2024 at 10:21:35PM +0200, Solar Designer wrote:
 |> On Tue, Oct 15, 2024 at 03:17:34PM -0400, Demi Marie Obenour wrote:
 ...
 |From 345ae06e0f698bdb1e9b4529e5a882f12df04426 Mon Sep 17 00:00:00 2001
 |From: Matthias Gerstner <matthias.gerstner@suse.de>
 |Date: Wed, 16 Oct 2024 09:58:35 +0200
 |Subject: [PATCH] usersfile: fix potential security issues in PAM module
 ...
 |+static int
 |+lock_usersfile (struct usersfile_ctx *ctx)
 |+{
 |+  /*
 |+   * There exist three file locking APIs:
 |+   *
 |+   * - flock(): this would be the simplest API, but it doesn't properly \
 |support
 |+   *   network file systems like NFS, which then causes a transparent \
 |fallback
 |+   *   to fcntl() file locking.
 |+   * - fcntl using F_SETLCK & friends: this lock is not based on the \
 |open file
 |+   *   description and thus cannot be inherited to child processes, \
 |which we
 |+   *   need to do.
 |+   * - fcntl using F_OFD_SETLCK & friends: this is a Linux specific \
 |lock that

It was added to and is part of POSIX.1-2024.

 |+   *   _is_ based on the open file description. It seems like the \
 |best bet for
 |+   *   our scenario.
 ...

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
