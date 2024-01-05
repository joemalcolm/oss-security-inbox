Received: (qmail 27919 invoked by uid 550); 5 Jan 2024 12:16:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11962 invoked from network); 5 Jan 2024 02:00:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1704420081;
	bh=8/XoSU4klLbff1LH/VfWLoYt67KcXi7REiYsGWvA3C0=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type;
	b=nUbWGB74U2bmRM3jpsk6KZqDvTgb6fK4xfcEBoUmNqmTXpJXUJdrWrXdePvc2HGKj
	 4DkhFcZnU6nc0kZtf1w8bmSi4DAp1gVIL8rjczwOogsNzCSA12udaYf+awl9Zsq0Vs
	 0YrOZ6J3Yd3XzUSBHEqzy8ZasgbYq4TIFYsn3expBpi+yX0tjGnk3O484fuPQPGkqY
	 K1xBgcnotpA3gQlhHLNlcgMhJswpKSxQenZmc2ABqUxY0bhsSFpWBBWgnGV2mPX5XR
	 nlV/xLJP2JIts6NOMKo4a6gULVfYbhI7NPfKuCX2ONyo4PqYg3n7iNxQS+2BlIl/10
	 HhWRn4+R9ZFpA==
Message-ID: <efcddf3d-98af-40b1-a674-554d790a135c@canonical.com>
Date: Thu, 4 Jan 2024 20:01:20 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
References: <65846ba9.7d4fbb18.bm000@oddnet.de>
From: Mark Esler <mark.esler@canonical.com>
Autocrypt: addr=mark.esler@canonical.com; keydata=
 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 YA==
In-Reply-To: <65846ba9.7d4fbb18.bm000@oddnet.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Security vulnerability in Debian's cpio 2.13

Please refer to this path traversal vulnerability as CVE-2023-7207.

https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2023-7207

