X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1532" "Thursday" "17" "December" "2015" "18:06:12" "-0500" "Dan Rosenberg" "dan.j.rosenberg@gmail.com" "<56733FE4.3080100@gmail.com>" "38" "Re: [oss-security] CVE-2015-8088: Heap Overflow Vulnerability in the HIFI Driver of Huawei Smart Phone" nil nil nil "12" "2015121723:06:12" "[oss-security] CVE-2015-8088: Heap Overflow Vulnerability in the HIFI Driver of Huawei Smart Phone" (number mark "U       dan.j.rosenb Dec 17   38/1532  " thread-indent "\"Re: [oss-security] CVE-2015-8088: Heap Overflow Vulnerability in the HIFI Driver of Huawei Smart Phone\"\n") "<etPan.566c348a.736a8748.22f4@s3cur1ty-lab.local>" ("<etPan.566c348a.736a8748.22f4@s3cur1ty-lab.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11576 invoked by uid 550); 17 Dec 2015 23:06:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11552 invoked from network); 17 Dec 2015 23:06:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:subject:to:references:cc:message-id:date:user-agent
         :mime-version:in-reply-to:content-type:content-transfer-encoding;
        bh=BYaKwHq/Ccei+wxo1e1fiqbqZkb4J+T+nMGXVkCj7d0=;
        b=JYafIR0UQUFOA3/XX3Oe/bYt6JHjRWscFLjp/CuN8cJ7uijx+7mJVH4dPHs+XR0XsD
         DciJtHJxjL0atnHU/oQQFG44LqMqECi/imwLBrUsoIxbWkEyJ1A/3KSYAHwssNvI1LRy
         uQcLhbdSb07d3XiR3Us22+0JYdtyqp0h9/Bf8HVtaammbRIRgNm73NGMP5fvTu7t+YB6
         z2hQQC2CGjJhmlPTgqRu4Ch/xRB7zK9Sr3UVxxuRZ+tRfkkVyFpuKWAxcY15XO88kA4R
         QRxGSqdwIOc7nRxpEeJpAi6g1qqcnEoikgjQ28GdotvaP4wkKzqAn2ia9RkMnZ/V9QhU
         jatA==
X-Received: by 10.55.77.206 with SMTP id a197mr484783qkb.43.1450393574354;
        Thu, 17 Dec 2015 15:06:14 -0800 (PST)
From: Dan Rosenberg <dan.j.rosenberg@gmail.com>
To: oss-security@lists.openwall.com
References: <etPan.566c348a.736a8748.22f4@s3cur1ty-lab.local>
Cc: pray3r.z@gmail.com
Message-ID: <56733FE4.3080100@gmail.com>
Date: Thu, 17 Dec 2015 18:06:12 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <etPan.566c348a.736a8748.22f4@s3cur1ty-lab.local>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] CVE-2015-8088: Heap Overflow Vulnerability in the
 HIFI Driver of Huawei Smart Phone

Comments inline below.

On 12/12/2015 09:51 AM, Pray3r wrote:

>   First, with a large value set to para.para_size, the smart phone
>   will break down because of heap overflow inside kernel space.
>   Second, this vulnerability could be used as a kernel information
>   disclosure if para.para_in points to kernel objects and the exploit
>   is wrapped with heap fengshui technique.  Third, sophisticated
>   exploitation methodology such as heap spray of thread_info published
>   by Keen Team, an attacker could build a workable exploit gaining the
>   root privilege of the smart phone.

If para.para_in points to a kernel object, the copy_from_user() call
will gracefully fail due to the access_ok() check, so there is no
possibility for an information leak like you described. Heap fengshui
has nothing to do with it.

The thread_info struct is allocated using the alloc_pages() buddy
allocator, which is different from ioremap(), so this technique does not
apply here.

Finally, this bug is most likely not exploitable at all (beyond a local
DoS), because ioremap() pages are followed by a guard page, meaning your
heap overflow would cause a kernel fault/panic before overwriting
anything that could be used to violate kernel integrity.

> Security is a bitch!

True.

> |=-----------------------------------------------------------------=|
> |=-----=[ D O   N O T   F U C K   W I T H   A   H A C K E R ]=-----=|
> |=-----------------------------------------------------------------=|

Sorry for fucking with a hacker,
Dan

