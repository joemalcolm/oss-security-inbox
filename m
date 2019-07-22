X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3649" "Monday" "22" "July" "2019" "16:05:37" "+0200" "Bartlomiej Zolnierkiewicz" "b.zolnierkie@samsung.com" "<ef549144-6992-d1fe-8f07-47757cd4ad85@samsung.com>" "102" "[oss-security] Re: stack buffer overflow in fbdev" nil nil nil "7" "2019072214:05:37" "[oss-security] Re: stack buffer overflow in fbdev" (number mark "U       b.zolnierkie Jul 22  102/3649  " thread-indent "\"[oss-security] Re: stack buffer overflow in fbdev\"\n") "<20190721200904.GR15868@phenom.ffwll.local>" ("<20190719140343.GA12952@thinkstation>" "<CAHk-=wiZpdb=PzvJd8EbvS43F9=oy_ou2r7LRHrFyqqpE3vnjQ@mail.gmail.com>" "<CGME20190721200912epcas1p34fe747875c1d2a16340ceb173b7c8e68@epcas1p3.samsung.com>" "<20190721200904.GR15868@phenom.ffwll.local>") nil nil nil nil nil nil nil "[oss-security] Re: stack buffer overflow in fbdev" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 4042 invoked by uid 550); 22 Jul 2019 14:11:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31905 invoked from network); 22 Jul 2019 14:06:03 -0000
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com 20190722140550euoutp01ffc94f19ddbe996c669985fb5460bbed~zv8WM6MEa1468514685euoutp01f
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1563804350;
	bh=7TZOjxfcV0UmxyCie53xO4Q/3NiuDIjcYtAtc9QFj04=;
	h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
	b=LCWOgAth9OiWfJS91sZJCZ1g+e9F5itRG14+AWVIj2Klpli9Vm5WyTf1N/EUAouAu
	 nmJc9c8Uy0tAnjrd9ljlUcK/4aEfJaQeP7inTlWTNvShtRKFbkKdlt0kLAuo8KV5ad
	 Gb7YMCjkeW27il1ldeqb1ElpXrPuoaN9nfYjFNxI=
X-AuditID: cbfec7f2-f13ff700000010ca-bc-5d35c2be4378
To: Daniel Vetter <daniel@ffwll.ch>, Linus Torvalds
	<torvalds@linux-foundation.org>
Cc: Tavis Ormandy <taviso@gmail.com>, Daniel Vetter
	<daniel.vetter@ffwll.ch>, oss-security@lists.openwall.com
From: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Message-ID: <ef549144-6992-d1fe-8f07-47757cd4ad85@samsung.com>
Date: Mon, 22 Jul 2019 16:05:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190721200904.GR15868@phenom.ffwll.local>
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprFKsWRmVeSWpSXmKPExsWy7djPc7r7DpnGGqxrZrVY+PAus8X/bROZ
	LZb9d7NY1jyf0eJR31t2B1aPvd8WsHjsnHWX3ePEjN8sHis7H7MFsERx2aSk5mSWpRbp2yVw
	ZTT8v8RWsFS24nbTLZYGxg3iXYwcHBICJhKdb726GLk4hARWMEpsntfMDOF8YZR4tu8kC4Tz
	mVFi2q3n7F2MnGAdL8/tZwSxhQSWM0rsfmYHUfSWUWL64bUsIAlhAW2JeQf+gzWICIRKrJi6
	iRXEZhbIl1h09CpYM5uAlcTE9lVgNq+AnUTbx4NgvSwCqhKvbjeD2aICERL3j21ghagRlDg5
	8wkLyNmcAhYSy9YXQIwUl7j1ZD4ThC0vsf3tHLAPJATmsUu0tc9mhjjaRWLahGYoW1ji1fEt
	UM/ISPzfCdIM0rCOUeJvxwuo7u2MEssn/2ODqLKWOHz8IivIZmYBTYn1u/Qhwo4SO79tYIeE
	I5/EjbeCEEfwSUzaNp0ZIswr0dEmBFGtJrFh2QY2mLVdO1cyT2BUmoXks1lI3pmF5J1ZCHsX
	MLKsYhRPLS3OTU8tNsxLLdcrTswtLs1L10vOz93ECEwxp/8d/7SD8eulpEOMAhyMSjy8G/aY
	xgqxJpYVV+YeYpTgYFYS4c0zAArxpiRWVqUW5ccXleakFh9ilOZgURLnrWZ4EC0kkJ5Ykpqd
	mlqQWgSTZeLglGpg5D8lWCPgm7JrSXzYD79wb4nWhf9t/PvPzN9o1dD73CxQavLtiDnrpW4G
	FyVYPO2cXpZ3dUtx+v/gh0/1s5ofRks+mHbKy+Z1VFFin5zW4v0r7h5lWWdytX3DpkA7/pjE
	T/dPxq3avO/cRAX/yx69HcvlxaS/cl68e2QNu09WdXXjyolvqgtdlFiKMxINtZiLihMBl+w7
	Py0DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrDIsWRmVeSWpSXmKPExsVy+t/xu7p7D5nGGrx8y2+x8OFdZov/2yYy
	Wyz772axrHk+o8WjvrfsDqwee78tYPHYOesuu8eJGb9ZPFZ2PmYLYInSsynKLy1JVcjILy6x
	VYo2tDDSM7S00DMysdQzNDaPtTIyVdK3s0lJzcksSy3St0vQy2j4f4mtYKlsxe2mWywNjBvE
	uxg5OSQETCRentvP2MXIxSEksJRRomt2J3MXIwdQQkbi+PoyiBphiT/Xutggal4zShzZcoQZ
	JCEsoC0x78B/dhBbRCBU4vWSZkYQm1kgX6Lh+VkWEFtI4BejxKa5JSA2m4CVxMT2VWA1vAJ2
	Em0fD4LVsAioSry63QxmiwpESJx5v4IFokZQ4uTMJywg93AKWEgsW18AMV5d4s+8S8wQtrjE
	rSfzmSBseYntb+cwT2AUmoWkexaSlllIWmYhaVnAyLKKUSS1tDg3PbfYSK84Mbe4NC9dLzk/
	dxMjMKa2Hfu5ZQdj17vgQ4wCHIxKPLwb9pjGCrEmlhVX5h5ilOBgVhLhzTMACvGmJFZWpRbl
	xxeV5qQWH2I0BfptIrOUaHI+MN7zSuINTQ3NLSwNzY3Njc0slMR5OwQOxggJpCeWpGanphak
	FsH0MXFwSjUwHnOsv99SePZBXNHbn2vPmT3q+lxSPPFOcZpR7JP2QI57QWmT+KXWCe5/+1po
	1h+ZqUtToq4Gf8rJnXlV3IiJ8VJy2fe0ujWHE7jaw6fmZz888GOPloDt80tOWvm6+zVSWra2
	pqxODFwTl+T/56CAvALfkmuXBBIa0pck5lTM++2/vVYre9ZCJZbijERDLeai4kQAMVu4Pr8C
	AAA=
X-CMS-MailID: 20190722140549eucas1p2bdd85b2604b367a4989f7f04322b6742
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-RootMTR: 20190721200912epcas1p34fe747875c1d2a16340ceb173b7c8e68
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190721200912epcas1p34fe747875c1d2a16340ceb173b7c8e68
References: <20190719140343.GA12952@thinkstation>
	<CAHk-=wiZpdb=PzvJd8EbvS43F9=oy_ou2r7LRHrFyqqpE3vnjQ@mail.gmail.com>
	<CGME20190721200912epcas1p34fe747875c1d2a16340ceb173b7c8e68@epcas1p3.samsung.com>
	<20190721200904.GR15868@phenom.ffwll.local>
Subject: [oss-security] Re: stack buffer overflow in fbdev


On 7/21/19 10:09 PM, Daniel Vetter wrote:
> On Sun, Jul 21, 2019 at 11:03:01AM -0700, Linus Torvalds wrote:
>> Completely untested patch attached. There are probably better ways to do this.
>>
>> Adding the proper people to the cc, and quoting Tavis' email in its entirety.
>>
>> Daniel - you got added despite not being explicitly listed as
>> maintainer because you've touched fbdev/core/ more than most lately,
>> plus you know edid anyway. As such: "tag, you're it, sucker".
> 
> Yeah I also realized with regrets that get_maintainers thinks I'm
> responsible for fbdev core :-/

Well, I've been thinking lately about officially adding you as
a co-maintainer to MAINTAINERS file. 8)

The patch documenting (already agreed) moving of fbdev handling to
drm-misc tree seems like a perfect occasion..

Ack?

Best regards,
--
Bartlomiej Zolnierkiewicz
Samsung R&D Institute Poland
Samsung Electronics

> Wrt the bug: I had a multi-paragraph explanation here about how fbmon.c
> edid parser is only used by old crap drivers, and not when you have a
> drm-kms driver providing the fbdev emulation (like pretty much every
> modern system). Also that the version in fbmon.c seriously lacks compared
> to the drm_edid.c one.
> 
> And then I ran grep and noticed it's dead code. The last user disappeared
> in 34280340b1dc ("fbdev: Remove unused SH-Mobile HDMI driver") from 2015.
> I'll type a patch for 5.4 to remove this outright.
> 
> Cheers, Daniel
> 
> PS: git log -G disappoints by not using all the cores I have here ..
> 
>>
>>                 Linus
>>
>> On Sat, Jul 20, 2019 at 5:35 PM Tavis Ormandy <taviso@gmail.com> wrote:
>>>
>>> Hello, during a conversation on twitter we noticed a stack buffer
>>> overflow in fbdev with malicious edid data:
>>>
>>> https://github.com/torvalds/linux/blob/22051d9c4a57d3b4a8b5a7407efc80c71c7bfb16/drivers/video/fbdev/core/fbmon.c#L1033
>>>
>>> There is enough space to have 52 1-byte length values, which makes svd_n
>>> 52, then make the final value length 0x1f (the maximum), which makes
>>> svd_n 83 and overflows the 64 byte stack buffer svd[] with controlled
>>> data.
>>>
>>> This requires a malicious monitor / projector / etc, so pretty low impact.
>>>
>>> I pulled out the code to make a demo (I removed the checksum, but it
>>> doesnt prevent the bug):
>>>
>>> https://gist.github.com/taviso/923776e633cb8fb1ab847cce761a0f10
>>>
>>> This was discovered by Nico Waisman of Semmle.
>>>
>>> Tavis.
>>>
>>> --
>>> -------------------------------------
>>> taviso@sdf.lonestar.org | finger me for my pgp key.
>>> -------------------------------------------------------
> 
>>  drivers/video/fbdev/core/fbmon.c | 8 +++++++-
>>  1 file changed, 7 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/video/fbdev/core/fbmon.c b/drivers/video/fbdev/core/fbmon.c
>> index 3558a70a6664..2ab1fd6e33b7 100644
>> --- a/drivers/video/fbdev/core/fbmon.c
>> +++ b/drivers/video/fbdev/core/fbmon.c
>> @@ -1030,7 +1030,9 @@ void fb_edid_add_monspecs(unsigned char *edid, struct fb_monspecs *specs)
>>  		if (type == 2) {
>>  			for (i = pos; i < pos + len; i++) {
>>  				u8 idx = edid[pos + i] & 0x7f;
>> -				svd[svd_n++] = idx;
>> +				if (svd_n < sizeof(svd))
>> +					svd[svd_n] = idx;
>> +				svd_n++;
>>  				pr_debug("N%sative mode #%d\n",
>>  					 edid[pos + i] & 0x80 ? "" : "on-n", idx);
>>  			}
>> @@ -1044,6 +1046,10 @@ void fb_edid_add_monspecs(unsigned char *edid, struct fb_monspecs *specs)
>>  		pos += len + 1;
>>  	}
>>  
>> +	/* Evil monitor? */
>> +	if (WARN_ON_ONCE(svd_n > sizeof(svd)))
>> +		return;
>> +
>>  	block = edid + edid[2];
>>  
>>  	DPRINTK("  Extended Detailed Timings\n");
