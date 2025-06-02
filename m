Received: (qmail 26556 invoked by uid 550); 2 Jun 2025 15:29:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15756 invoked from network); 2 Jun 2025 06:43:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sijanec.eu; s=mail;
	t=1748846575; bh=Wn3MeyMYnrBek8Wl/mFHoApVuJeXvQNiY9FsLJ5QLIQ=;
	h=Date:Subject:To:References:From:In-Reply-To;
	b=EjVUF5HFHHqPOkbCa8AaDZ/Ke7P4vp4NOMTqo1pWaW/ScBRl9xwJn8Nk6C57DcQp6
	 pu1tER+j6tfK+HEsAuj9tBGbpkKtv/XiCQZMucGHo7x/YH+GoDfAza20VHrWwmglvm
	 OmZDKluJFDcQT973sJlDiGoPzUMDb6RvV0pccNuPan85sNJXqQfhjW/+vCIIrBwTFF
	 U5dEm4SJUUhLFbNELZn3xKICw7bbgWRZU86y/cPzg2NaHWVZPGzneqg7wk+8fnKePW
	 iuJDO192NU106WYAbFQVqXnP15uDaz4c4bik9JMBqGmyCFSu4s5XFD1hDoIEKsipTq
	 DG4ZGkOKZ6XuQ==
Message-ID: <0da814d8-76f9-4ce0-88bf-dbd1c5cc6ad6@sijanec.eu>
Date: Mon, 2 Jun 2025 08:42:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <20250602072647.54580b61@hboeck.de>
Content-Language: sl
From: =?UTF-8?Q?Anton_Luka_=C5=A0ijanec?= <anton@sijanec.eu>
In-Reply-To: <20250602072647.54580b61@hboeck.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Roundcube webmail: Post-Auth RCE via PHP Object
 Deserialization reported by firs0v

Hanno Böck je 2. 6. 25 ob 07:26 napisal:
> Roundcube just published an update that appears to contain an important
> security fix:
> https://roundcube.net/news/2025/06/01/security-updates-1.6.11-and-1.5.10
> 
> "Fix Post-Auth RCE via PHP Object Deserialization reported by firs0v."
> 
> Even though it says "Post-Auth", impact is likely high, as for a
> webmailer, it is a very common scenario that many people are
> potentially authenticated. (And it may just be another XSS away from
> non-authenticated RCE.)
> 

I believe this is

https://www.cve.org/CVERecord?id=CVE-2025-49113

CVE-2025-49113 CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:C/C:H/I:H/A:H score 9.9
