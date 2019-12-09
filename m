X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1347" "Monday" "9" "December" "2019" "18:30:22" "+0100" "Noel Kuntze" "noel.kuntze+oss-security@thermi.consulting" nil "46" nil "^Date:" nil nil "12" nil nil (number mark "        noel.kuntze+ Dec  9   46/1347  " thread-indent "\"Re: [oss-security] Shell wildcards considered dangerous?\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Shell wildcards considered dangerous?" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32187 invoked by uid 550); 9 Dec 2019 18:07:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13629 invoked from network); 9 Dec 2019 17:30:39 -0000
X-Virus-Scanned: amavisd-new at thermi.consulting
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=thermi.consulting;
	s=201909; t=1575912627;
	bh=KS54iF9Qak7lhMHcnyIjV062p82lN4gLp39O/WIs4Co=;
	h=Subject:To:From:Date:MIME-Version:Content-Type;
	b=yQPwT0XpLC+MCG4q+XMB2QVN5F3EuhR9rGhOiqzL+2GEVIqLaversKhu+fCvOb2rN
	 t4fiiVs3LdtLQWSeihzO0G5W4PlJzcNfuAKcyAGqZMSXhTWvkYA6DO1+Qkh+xocwoE
	 hhHUtrj1/6YAsrD7uXMs60j3VmuxgX38vOPkRcCcGPaL7G31Wro4kIFDdKAN8C9dkt
	 9bIwspM4+q6ZyGQhtRtSxVEmVWE8klMPLG2GIYN8t5qd9UKv+GphEGoiDGoxBuRDCM
	 DeAGODlor+cGk6FXrT+j424SGoGP1V8oPI1ive1tl1igmSHRKwcWc6YGagd5nhlu3W
	 YIwNFABIQMZcg==
References: <CAGUWgD-yn2kf3T69ri7ahcCfKm=kiMBnxeb84mnH-qqYWQNUdg@mail.gmail.com>
 <8bd059ae-5faa-46fa-71d0-bb0f61ea8e62@thermi.consulting>
 <20191209151808.GA35251@orca>
 <a12cddb8-7753-5e5f-de0f-8c575c2632d2@thermi.consulting>
 <20191209164635.GB35251@orca>
Message-ID: <9966eab6-4dba-5d17-3a59-5beb5200e745@thermi.consulting>
MIME-Version: 1.0
In-Reply-To: <20191209164635.GB35251@orca>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US
Date: Mon, 9 Dec 2019 18:30:22 +0100
From: Noel Kuntze <noel.kuntze+oss-security@thermi.consulting>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Shell wildcards considered dangerous?
To: oss-security@lists.openwall.com

Hello Leonid,

I was referring to my own message, not the original one by Georgi.

Kind regards

Noel

Am 09.12.19 um 17:46 schrieb Leonid Isaev:
> On Mon, Dec 09, 2019 at 04:28:35PM +0100, Noel Kuntze wrote:
>> The message was about the attack vector on applications that put together
>> argument vectors based on user input, not specifically about human use of the
>> shell.
> Then, why in "tar xf *.tar" the "*" is expected to mean anything other than
> a literal * (0x2a)? It is because of the shell globbing: "tar xf ./*.tar" will
> work without any "--". For example:
> -----8<-----
> $ echo -E "xxx" > "-b xxx.qwetr"
> $ file *.qwetr
> file: invalid option -- ' '
> file: invalid option -- 'x'
> file: invalid option -- 'x'
> file: invalid option -- 'x'
> file: invalid option -- '.'
> file: invalid option -- 'q'
> file: invalid option -- 'w'
> Usage: file [-bcCdEhikLlNnprsvzZ0] [--apple] [--extension] [--mime-encoding]
>             [--mime-type] [-e <testname>] [-F <separator>]  [-f <namefile>]
>             [-m <magicfiles>] [-P <parameter=value>] <file> ...
>        file -C [-m <magicfiles>]
>        file [--help]
> $
> $ file ./*.qwetr
> ./-b xxx.qwetr: ASCII text
> ----->8-----
>
> Sincerely,
> L.

-- 
Noel Kuntze
IT security consultant

GPG Key ID: 0x0739AD6C
Fingerprint: 3524 93BE B5F7 8E63 1372 AF2D F54E E40B 0739 AD6C

