Received: (qmail 11725 invoked by uid 550); 14 Dec 2022 12:21:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11695 invoked from network); 14 Dec 2022 12:21:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1671020475;
	bh=sLH5RZKyxwx5S30Dow4bTS5E59fzUrYHp/sw5JxcSvI=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type;
	b=GEAnjdJKxI9XnxsZ4g7Mc7v9QAHS4TWmrdlD3tleB54HW5KWZxd4qJ9KUzEVjC6lr
	 1zQoyOj8fo2iOxnYj8m49nOBm6lyUeCYK1/MP/u0f6EVI/slV42HxIwxSHeEXz5yTt
	 79ZhukpF3/1R5jucmiF/1slsDuZTwMUJZYYSqZ4cTfic4cVePbCk7WqnMGKa8q3QZ4
	 pYL352DAhWvKihhMFB/MYsHosbLjaVZhHPyQl3+A/tNHsxIu/aQvwmZBtS5F67Qal/
	 c+PJT6PZ2LcaQEBedGf1C0GxnHUqvZQSmRSeFci10upVuBKdzwBIfdB+gXyVey59/X
	 XfIynWAVIc8Aw==
Message-ID: <1dc7de41-f0d7-566f-d46c-c1206a3dafa2@canonical.com>
Date: Wed, 14 Dec 2022 07:21:13 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-CA
To: oss-security@lists.openwall.com
References: <e7573ba8-846b-b91a-5655-e4f5db2cdf88@redhat.com>
From: Marc Deslauriers <marc.deslauriers@canonical.com>
In-Reply-To: <e7573ba8-846b-b91a-5655-e4f5db2cdf88@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] X.Org Security Advisory: multiple security issues
 in X server extensions

On 2022-12-13 20:23, Peter Hutterer wrote:
> * CVE-2022-46283/ZDI-CAN-19530: X.Org Server XkbGetKbdByName use-after-free
> 
> The XkbCopyNames function left a dangling pointer to freed memory, resulting in 
> out-of-bounds memory access on subsequent XkbGetKbdByName requests.
> 

I think there's a typo there, the CVE should be CVE-2022-4283.

Marc.

