Received: (qmail 29742 invoked by uid 550); 7 Apr 2025 15:10:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15964 invoked from network); 7 Apr 2025 15:08:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=aosc.io; s=default;
	t=1744038488; bh=CnDL8WcNQ2pyVr5yi5IPx3+F48LQ+w+YbYLmoEuqDpQ=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=WyzFcJnA92xyxZC8qVyIWgwX+Gp3LDD7q7KNEkvXboUp3EJt4ht+z5dv4A5/BuSgr
	 Yilyc8RfYpv7vtDeFKbC9/nemlacVpIjcbZ6llg7uifQp7MM+VR2KBKcRj24tO97q3
	 H657x2/gJ+YRnLpM1nU1HuVJ/pzTb5cD8bjKGQGU=
Message-ID: <9a8b4efc-2322-475b-81ba-939d0f9c6878@aosc.io>
Date: Mon, 7 Apr 2025 23:07:55 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <c91c769394051f886c25f8bf895ec770dce36a73.04827fe8.a43c.41dd.9fe9.7f451462d2d9@feishu.cn>
Content-Language: en-US
From: Mingcong Bai <jeffbai@aosc.io>
In-Reply-To: <c91c769394051f886c25f8bf895ec770dce36a73.04827fe8.a43c.41dd.9fe9.7f451462d2d9@feishu.cn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] CVE-2025-31344: giflib: The giflib open-source
 component has a buffer overflow vulnerability.

Hi,

在 2025/4/7 21:15, 李亚杰 写道:
> Affected Versions:
> - giflib 5.2.2 and below
> 
> Description:
> In the function DumpScreen2RGB of the giflib software, an attempt is made to access the color map through ColorMapEntry. The size of ColorMap is 6 bytes (from 0x602000000030 to 0x602000000036). However, when accessing ColorMap->Colors[GifRow[j]], the value of GifRow[j] exceeds the actual number of colors stored. The address pointed to by ColorMapEntry, 0x602000000039, goes beyond the allocated memory range for color data. As a result, accessing ColorMapEntry->Red leads to out-of-bounds access, causing a heap-buffer-overflow.

Thanks for the disclosure, but any pointer to potential fixes or maybe a 
new release? I'm confused (because we distributions should now be 
working to mitigate, as it is now disclosed)...

Best Regards,
Mingcong Bai>
> Credits:
> JiaXuan Song(m202372152@hust.edu.cn)
> bale.cen(cenxianlong@huawei.com)
> 
> Best Regards,
> Yajie Li
> 
> 

