Received: (qmail 10074 invoked by uid 550); 11 Apr 2024 15:05:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23857 invoked from network); 11 Apr 2024 14:57:05 -0000
Authentication-Results: mail.absynth.de;
	auth=pass smtp.auth=info@christopher-kunz.de smtp.mailfrom=info@christopher-kunz.de
Message-ID: <052779d0-a3c3-4691-9491-08520952ca8e@christopher-kunz.de>
Date: Thu, 11 Apr 2024 16:56:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <607d5716-128f-44c5-ab52-6dde4ca6e8a4@christopher-kunz.de>
 <b701b525-0c42-4b3a-a1a3-0ea68e864fbe@christopher-kunz.de>
 <20240411140654.GA24980@openwall.com>
From: "Dr. Christopher Kunz" <info@christopher-kunz.de>
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
In-Reply-To: <20240411140654.GA24980@openwall.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] New Linux LPE via GSMIOC_SETCONF_DLCI?

Hi,

> There are two exploits in Yurii's repo above, according to Yurii for two
> different bugs.  The above is one of them.  Perhaps also try the other?
The two exploit versions are for different kernels. The 6.5 exploit 
doesn't compile on the Debian 12 6.1 kernel, and no Debian version 
currently distributes a 6.5 kernel, AFAICT. I used 
ExploitGSM_5_15_to_6_1/ExploitGSM and it worked.
> I don't know, and apparently it'd need to be two CVEs for two bugs that
> Yurii exploits.
Possibly. I'm definitely out of my depth trying to analyze which bugs 
are being exploited.
> CVE-2023-52564: Revert "tty: n_gsm: fix UAF in gsm_cleanup_mux"
> https://lists.openwall.net/linux-cve-announce/2024/03/02/54
>
> Maybe CVE-2023-52564 is one of the bugs Yurii exploits, or maybe not.
> I didn't look into this closely enough to tell.

Apparently not. Debian 12 "Bookworm" currently runs this kernel:

Linux debianexploitgsm 6.1.0-18-amd64 #1 SMP PREEMPT_DYNAMIC Debian 
6.1.76-1 (2024-02-01) x86_64 GNU/Linux

According to the changelog, this kernel has the fix for CVE-2023-52564 
included:
     - Revert "tty: n_gsm: fix UAF in gsm_cleanup_mux"
(from 
https://metadata.ftp-master.debian.org/changelogs//main/l/linux-signed-amd64/linux-signed-amd64_6.1.76+1_changelog)

Still, the exploit works, so it must exploit a different issue.

Just my two cents,

--cku

