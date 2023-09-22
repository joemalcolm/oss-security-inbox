Received: (qmail 20443 invoked by uid 550); 22 Sep 2023 11:42:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20422 invoked from network); 22 Sep 2023 11:42:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1695382944;
	bh=mGbCogMbRPz1SUdLUFYtYkvfE0bQpw+dfjP64x9vFCU=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type;
	b=in3JhLLZK/lmBMO4zubJiSHg8L4qiKPvlQC3Xljw2ywfmy1xZ1Il8bq10TJDDHXv6
	 6EiwWN3Hz4hmZG82vZaK5RA+/4qMcbZazlCAp+Amz+yRzcNVWRlPth2xO0JOKjUctT
	 wUu1qRqaj/Vr13nMxWa3iQSiKA6z+AxNDBhEpak1DCE2WQb2QQQ5R6GHmTNKTiEFY6
	 ou/JgHO1c4abCWb01Rv+l3vaVNx9WWwWImqkZM8fUmS8XBLmiQQ+8LPX2f5cpLoLdf
	 dxpqeuaBC/yC8dXMlMbBtHeWGFsfBtPHmei/h14K/zQcYaarnlKPn6rQM1KlQ4gWIz
	 larXHsJIUSuQA==
Message-ID: <72a6e741-1420-d21d-11cc-2592598e53f4@canonical.com>
Date: Fri, 22 Sep 2023 07:42:22 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Content-Language: en-CA
To: oss-security@lists.openwall.com, =?UTF-8?Q?Hanno_B=c3=b6ck?=
 <hanno@hboeck.de>
References: <20230921205250.GA13106@openwall.com>
 <20230922072817.092917d2.hanno@hboeck.de>
From: Marc Deslauriers <marc.deslauriers@canonical.com>
In-Reply-To: <20230922072817.092917d2.hanno@hboeck.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] CVE-2023-4863: libwebp: Heap buffer overflow in
 WebP Codec

On 2023-09-22 01:28, Hanno Böck wrote:
> On Thu, 21 Sep 2023 22:52:50 +0200
> Solar Designer <solar@openwall.com> wrote:
> 
>> However, another maybe-important one also made it into 1.3.2:
>>
>> commit 95ea5226c870449522240ccff26f0b006037c520
>> Author: Vincent Rabaud <vrabaud@google.com>
>> Date:   Mon Sep 11 16:06:08 2023 +0200
>>
>>      Fix invalid incremental decoding check.
> 
> It does not look to me that this fix is in 1.3.2:
> https://github.com/webmproject/libwebp/commits/v1.3.2
> 
> I've seen this commit as well and have been wondering for a few days if
> we'll hear about abother libwebp issue soon.
> 

We (Ubuntu) didn't include that second commit in our libwebp updates, and I 
don't believe Red Hat/Fedora did either. If that second commit does have a 
security impact, it probably needs a different CVE to clear up confusion.

Marc.
