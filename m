Received: (qmail 3932 invoked by uid 550); 5 Aug 2022 22:59:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25877 invoked from network); 5 Aug 2022 20:53:51 -0000
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vulndisco.cc; s=mail; t=1659732795;
	bh=4GE3CCfiL171Wjm68xfvQCCKvJ2M7yxUWcGOLV1WEqI=;
	h=Subject:From:To:Date:Message-ID;
	b=MIYBjW1Sdvz59hf5dzxqod3Mxk0hmT7yMz4gRRrDuRDYQoc9iVs0vF/g+oXZ+TaYL
	 23hONvotNx9p7pqeav6NBR7tnM+7pJm+3sbcfYPX0L5HTPRNCp6tAai62bIi0w6Lnx
	 70T8imsrZJNrIcbdu2zMp9Hc8AV7gbaas/Jgq9kQ=
Authentication-Results: iva6-2d18925256a6.qloud-c.yandex.net; dkim=pass header.i=@vulndisco.cc
Message-ID: <08ae1f90-9b28-df97-068f-243e04f91c47@vulndisco.cc>
Date: Fri, 5 Aug 2022 23:53:12 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Evgeny Legerov <admin@vulndisco.cc>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] zlib buffer overflow

Hi,


Heap overflow has been fixed in zlib - 
https://www.cve.org/CVERecord?id=CVE-2022-37434


regards,

-e

