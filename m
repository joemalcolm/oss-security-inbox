X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["430" "Tuesday" "19" "November" "2019" "14:08:02" "+0100" "Pavel Heimlich" "pavel.heimlich@oracle.com" "<bc1ddbb1-abe3-960e-a5b5-33e3ff6c6875@oracle.com>" "14" "Re: [oss-security] Mitigating malicious packages in gnu/linux" "^Date:" nil nil "11" "2019111913:08:02" "[oss-security] Mitigating malicious packages in gnu/linux" (number mark "        pavel.heimli Nov 19   14/430   " thread-indent "\"Re: [oss-security] Mitigating malicious packages in gnu/linux\"\n") "<CAGUWgD8LDusq3PyWeMd-RoDhOtfiebVtKKV_39GhG+8c0QYFYg@mail.gmail.com>" ("<CAGUWgD8LDusq3PyWeMd-RoDhOtfiebVtKKV_39GhG+8c0QYFYg@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Mitigating malicious packages in gnu/linux" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7187 invoked by uid 550); 19 Nov 2019 13:10:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5779 invoked from network); 19 Nov 2019 13:08:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=subject : to :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2019-08-05;
 bh=S49i3rasGEYqJDv2uxwseLeBsecuPNRq+OwviWbm4gU=;
 b=HtnQDd1KHK/QD8UBN1njuRqwQZMY4SW2zU0IODIeKkNK7H03GH9mLG5v9b8+C7nVUhDB
 3C2Qwyd6DjmmPfpZeh5RZ71yIdlj5g40XxdOjgaKT0lGvfiJMqJmTB2TFg406o3JAa8z
 hjEloBQ+DME7Oza0RgkqkIh0JwrHNyObV4eBCfzS0fzoAYDwHPZB7EOIOifiWuSGlk5B
 fYLAQ7A3wBl2Ohdn2r9pZ0NAcrOAcxLXy8hjW2ApECHakLxR7ybvKW2P0fn6EzBzFKmp
 nLvwxtSNp4p1vBKkuM3XNolpYlC3f3zTkq+2Sve3/wIzd2Q36sDJrmCMR/5/LiNbWr6L cg== 
References: <CAGUWgD8LDusq3PyWeMd-RoDhOtfiebVtKKV_39GhG+8c0QYFYg@mail.gmail.com>
Organization: Oracle Corporation
Message-ID: <bc1ddbb1-abe3-960e-a5b5-33e3ff6c6875@oracle.com>
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <CAGUWgD8LDusq3PyWeMd-RoDhOtfiebVtKKV_39GhG+8c0QYFYg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9445 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=866
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1911190120
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9445 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0 clxscore=1034
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=954 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1911190120
Date: Tue, 19 Nov 2019 14:08:02 +0100
From: Pavel Heimlich <pavel.heimlich@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Mitigating malicious packages in gnu/linux
To: oss-security@lists.openwall.com


On 11/19/2019 12:33, Georgi Guninski wrote:
> As end user and contributor of gnu/linux, I am concerned about malicious
> packages (either hostile developers or hacked developers or another reason)
> and have two questions:
>
> * What do linux vendors to avoid malicious packages?
>
> * As end user what can I do to mitigate malicious packages?

You can start with installing only packages that are necessary and 
nothing more.


