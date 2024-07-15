Received: (qmail 18138 invoked by uid 550); 16 Jul 2024 00:10:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17767 invoked from network); 15 Jul 2024 23:41:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=citron; t=1721086860; x=1721753526; h=date:author:from:to:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  author:from:subject:date:to:cc:resent-author:resent-date:resent-from:
  resent-sender:resent-to:resent-cc:resent-reply-to:resent-message-id:
  in-reply-to:references:mime-version:content-type:
  content-transfer-encoding:content-disposition:content-id:
  content-description:message-id:mail-followup-to:openpgp:blahblahblah;
 bh=J0fkhOfIh36jw5UtRWqlXHSrsTuuucHHP97VWu7myro=;
 b=PEjnBzttImJIK9xLGDFXsyM0i538NT7TKWtlp59oCPjrFdIW4tYhFGouC+b9F9TFef+DgSHt
  Nj8ImUVWLl5Vzgi6bFZPb+IvKifiy9WqrZHQtxoI6Z9L3AetFdEM7LZLHqm/sq13+FE4hp8YXZ
  BeVqs2leCC6Z521KPjycghERV4dVBHmkV4Gm8LrKvRaiPClHWyqrfRDVu7RF6pdg6eD7vU6FH3
  aa4u5Kr2OqqD+0ypWLrDBIetmZoSiDRbM5vQ2jDSGXzlmmq7nENfzkCJJkLUnO4Gx8PBULymH4
  wbW5P2wFdWV5mp7NO9OWZoM+i4EpgMrCgJe58jPCk5V/c2Mw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=orange; t=1721086860; x=1721753526; h=date:author:from:to:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  author:from:subject:date:to:cc:resent-author:resent-date:resent-from:
  resent-sender:resent-to:resent-cc:resent-reply-to:resent-message-id:
  in-reply-to:references:mime-version:content-type:
  content-transfer-encoding:content-disposition:content-id:
  content-description:message-id:mail-followup-to:openpgp:blahblahblah;
 bh=J0fkhOfIh36jw5UtRWqlXHSrsTuuucHHP97VWu7myro=;
 b=IjTBX+87Cd8enZ8EKyI84hYaUJDAczoTTdSmsn4RaMRVNtk7tDSM3lhAEDdIhtDc/V6t/6DH
  SF2la7277PkxDA==
Date: Tue, 16 Jul 2024 01:40:59 +0200
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20240715234059.ThiJfcS3@steffen%sdaoden.eu>
In-Reply-To: <66946BDB.4070709@gmail.com>
References: <30400489-6c59-4133-a3ce-fa0c16b63c02@analygence.com>
 <6771f9536d49185fc8f1ea9905c13cf4dd8776d2.camel@debian.org>
 <20240710214412.8IXhxf8b@steffen%sdaoden.eu>
 <83F0CF09-6257-4949-9332-E6990CFE14C7@dwheeler.com>
 <20240712170603.XJ6iwd6q@steffen%sdaoden.eu> <6691E39C.8090600@gmail.com>
 <20240713205858.LSnJJGoo@steffen%sdaoden.eu> <66946BDB.4070709@gmail.com>
Mail-Followup-To: oss-security@lists.openwall.com
User-Agent: s-nail v14.9.24-621-g0d1e55f367
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
Subject: Re: [oss-security] ASLRn't is still alive and well on x86
 kernels, despite CVE-2024-26621 patch

Jacob Bachmeyer wrote in
 <66946BDB.4070709@gmail.com>:
 |Steffen Nurpmeso wrote:
 |> [...]
 |>
 |> Some findings:
 |>   . I note that the mentioned files are writable by only root (and
 |>   i would assume MAP_DENYWRITE to only work if i could do so
 |>   myself).
 |>   
 |
 |I believe that most executables are writable only by root, but available 
 |to unprivileged users.  Since the purpose of MAP_DENYWRITE seems to have 
 |been ensuring that executables cannot change out from underneath running 
 |programs, it would need to work when unprivileged users map the file; 
 |thus the DoS problem.

I have to reread mandatory-locking.txt and locks.txt from Linux
src.  I just realized that lslocks(1) aka /proc/locks shows me
locks held by PID 1130 which "i" cannot see due to

  $ findmnt /proc
  TARGET SOURCE FSTYPE OPTIONS
  /proc  none   proc   rw,nosuid,nodev,noexec,relatime,gid=10,hidepid=invisible
  $ cat /proc/locks
  1: FLOCK  ADVISORY  WRITE 1130 00:15:354719 0 EOF
  2: FLOCK  ADVISORY  WRITE 1130 00:15:354609 0 EOF

I have the gut feeling in the end there will be nothing in /proc
nor /sys.

 |>   . Capabilities have become more fine-grained.
 |>   . I always whimper when i have to rm(1) a running executable before
 |>   placing an updated variant on Linux, on BSDs i simply over-cp(1)
 |>   (and i do not understand as long as one gets either the one or
 |>   the other when executing the path).
 |>   
 |Simple solution:
 |    - write the new executable under a temporary name
 |    - use link(2) to create a new name for the existing executable
 |    - use rename(2) to atomically replace the existing executable
 |    - use unlink(2) to remove the old version after any needed checks
 |
 |You can dispense with link(2) and unlink(2) if you do not want to 
 |preserve a backup of the old executable.  Using this method will change 
 |the executable's inode number (meaning that it really is a different 
 |file) and that means that the old version can remain on disk for as long 
 |as it remains in use, even after its last name has been removed.

Thank you.  Whimpering is not that bad, The Cure boys were crying.

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
