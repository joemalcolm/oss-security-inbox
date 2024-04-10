Received: (qmail 31962 invoked by uid 550); 10 Apr 2024 19:57:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28358 invoked from network); 10 Apr 2024 19:56:43 -0000
Authentication-Results: mail.absynth.de;
	auth=pass smtp.auth=info@christopher-kunz.de smtp.mailfrom=info@christopher-kunz.de
Message-ID: <607d5716-128f-44c5-ab52-6dde4ca6e8a4@christopher-kunz.de>
Date: Wed, 10 Apr 2024 21:56:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: "Dr. Christopher Kunz" <info@christopher-kunz.de>
To: oss-security@lists.openwall.com
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
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] New Linux LPE via GSMIOC_SETCONF_DLCI?

Hello all,

it seems that a new LPE (or two) in the Linux kernel has been dropped. The situation is a bit confusing and after discussing with Alexander off-list, I decided to post the various versions of the bug and the corresponding PoCs.

Maybe we can clear this up together.

1. YuriiCrimson's version (April 6-ish)

It seems to use GSMIOC_SETCONF_DLCI, PoC supposedly works on current Ubuntu and Debians, but is stopped by LKRG.

PoC and writeup are here: https://github.com/YuriiCrimson/ExploitGSM/tree/main

2. jmpeaux' version (March 21)

This seems similar, also using GSMIOC_SETCONF_DLCI. In the screen shots, even the working dir for the PoC is identical to 1). Yurii claims jmpeaux stole his work.

Writeup: https://jmpeax.dev/The-tale-of-a-GSM-Kernel-LPE.html

PoC: https://github.com/jmpe4x/GSM_Linux_Kernel_LPE_Nday_Exploit/tree/main

And then there's

3. ZDI-24-020 / CVE-2023-6546 (January)

This also exploits a race condition resulting UAF in the gsm_dlci struct. It's a little older.

Writeup and PoC: https://github.com/Nassim-Asrir/ZDI-24-020/

What do you make of this?

Best regards,

--cku

