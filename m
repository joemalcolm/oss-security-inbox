Received: (qmail 3086 invoked by uid 550); 24 Oct 2024 09:44:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 12103 invoked from network); 24 Oct 2024 08:41:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=christopher-kunz.de;
	s=202409; t=1729759279;
	bh=k0nIEo9yMhc0mNC/VYw6Z0QNLO/7Xt6j8x+ZHI1YEeA=;
	h=Date:Subject:From:To:Reply-To:References:In-Reply-To:From;
	b=BKnbGFkhBqae0ubjB3N7u+OigRNpMFKSPpiiv10fAtVhFY+7DAlycYgblvCTAhICU
	 tRJafuggVwrkSBLAbqVRLnvCagYZYX3ztjQgIN1rA1p5YhYGffVdjKObAIkA0+PPvt
	 IMgAHlMy/viBfSJqCyGgippk6gd5xAZQyp5v8ZnWetIovQ70pslhFP2r3AvC48DxCq
	 icxbWlTNzCntDvZDRYnROMJIfKXEQazjKJjdTSLjPMoLS+g16pq6CI7jYWdiVwRm6S
	 Dww8bLcBP4BXetWb9CZuWDkrb9QKs+9REv0xAA3uJuXTJ+YN87VEKj/m2NevNDZ7yI
	 qqFBUE0BY/wQQ==
Authentication-Results: mail.absynth.de;
	auth=pass smtp.auth=info@christopher-kunz.de smtp.mailfrom=info@christopher-kunz.de
Message-ID: <2d5bc5c3-81b9-4ab3-b477-7cf19c7acdbd@christopher-kunz.de>
Date: Thu, 24 Oct 2024 10:41:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: "Dr. Christopher Kunz" <info@christopher-kunz.de>
To: oss-security@lists.openwall.com
References: <a1a68f6f1e98d46bb9766614636de4d8eb90a33d.camel@openssl.org>
 <93820967-9c9c-4a21-8611-418d56dfd645@christopher-kunz.de>
Autocrypt: addr=info@christopher-kunz.de; keydata=
 xsDiBD3U55kRBADKaqmPY/RBZ0luAFvOsa2lqQN8qXEimlCrbe0+WWywWDYNO/0c5B1FhUt2
 heF12OV9u1ldDdynB/awdV3NYaoizce86XQzQGcPpIOlEgI9iTTc1FSP9zDkkljLMrMB8WGK
 Q8WH6yLT+BOTIoK/rMs9DEN0hcsxOZY1wTEzhOfewwCg/7fHkook6P1/O/iOG3k/r90Um98D
 /AvzlFtPaRn5qiCWjeopDW1RAJNLvWwKs1HHv8m1UOtMNisqObD3SuHn9lp4FfGAu7gaJoqI
 /l6Rk02dgmBq+gyV+qg8PYXMlhh0xEfEO/TPPjx+nZnDRvO59tOj0pg2GLpIvQtdlwow1Iq4
 r2XfHUk1b827GZGAg1+ckkkNSG24A/9l238stiojp+GYwpuYkGrxROSYX+0slzRc40DHjtrb
 Jidz2Usmilyvt5WA1iBmAKw3L2TLQKpLtxAkGWSrDfdnl38VrYGMEM6WVctY6TxrqzrQLhaw
 W+17goNN73S3uP3C0YrdVjZc5jl0xlfli4zP7HmxL1YyRlLQ22aVcdDmS80rQ2hyaXN0b3Bo
 ZXIgS3VueiA8aW5mb0BjaHJpc3RvcGhlci1rdW56LmRlPsJ4BBMRAgA4AhsDBgsJCAcDAgMV
 AgMDFgIBAh4BAheAFiEEyIKO0X3RkBHAiOpQXPou6zl6ysEFAmWdKLICGQEACgkQXPou6zl6
 ysEHsQCfeqMRH0HyzVzl6XyNrxXdi0kSacYAnjXCcViWthCxB04fgluoiFw7b02TzsFNBD3U
 55kQCAD2Qle3CH8IF3KiutapQvMF6PlTETlPtvFuuUs4INoBp1ajFOmPQFXz0AfGy0OplK33
 TGSGSfgMg71l6RfUodNQ+PVZX9x2Uk89PY3bzpnhV5JZzf24rnRPxfx2vIPFRzBhznzJZv8V
 +bv9kV7HAarTW56NoKVyOtQa8L9GAFgr5fSI/VhOSdvNILSd5JEHNmszbDgNRR0PfIizHHxb
 LY7288kjwEPwpVsYjY67VYy4XTjTNP18F1dDox0YbN4zISy1Kv884bEpQBgRjXyEpwpy1obE
 AxnIByl6ypUM2Zafq9AKUJsCRtMIPWakXUGfnHy9iUsiGSa6q6Jew1XpMgs7AAICB/97dSwj
 NNOvwX1CYynQFaXrajIBF9fSZcOJNZ5vh/+ejkl2nobkQicbI97dKYttanBaF4O//lPjNcbO
 iXkiqEI8FQPyp5I+KIkVy6MiNM09zd0qHVwlihok2JG5wSGXfUsXjk3iPsxIVhWZSrB2q0By
 Av95xcvUtxQl5cCGGqTxBIsGjiN4wkDS0FNXFH2hOuH5pCl+cbDdZmYTc1O+aeSygvLN76gs
 tBgDODp8p2Fiu7RL99SRLTIHdniSvOr/bm4BDRYY0D6P/MoZQydZPMmZAOv3qnOkPox/9e5/
 zP8cmLm08gbez8wjfl6Rl5OjngTIatupEWXZK022C2+LJBeFwkwEGBECAAwFAj3U55kFGwwA
 AAAACgkQXPou6zl6ysHXxgCgw8C3Y9WTlhK6j3KgyciAF6X+odsAnja8RhnAa3HRM8YZbeaW
 DC6HBdDe
In-Reply-To: <93820967-9c9c-4a21-8611-418d56dfd645@christopher-kunz.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] CVE-2024-9143: OpenSSL: Low-level invalid GF(2^m)
 parameters lead to OOB memory access

Am 23.10.24 um 11:10 schrieb Dr. Christopher Kunz:
>
>
> while OpenSSL rates this issue as "low severity", SuSE assesses it as 
> "moderate", with a CVSS 3.1 of 7.0 
> (CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:L/I:L/A:H).
>
> I'm curious about these two quite different assessments. Could OpenSSL 
> and SuSE maybe elaborate a little? 

FWIW,

both parties answered off-list (I needed an answer during the german 
business day and got held up by moderation).

The difference is that OpenSSL does not adhere to CVSS-style risk 
assessment, but assesses the severity of the bug together with the 
likelihood of exploitation. Due to the latter being extremely low, the 
overall assessment is "low".

SuSE, however, used vanilla CVSS3.1 assessment which does not include 
exploitability metrics beyond "AC:H".

That explains the different scores.

Best regards,

--cku

