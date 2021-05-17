X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["425" "Monday" "17" "May" "2021" "21:28:10" "+0200" "Jakub Wilk" "jwilk@jwilk.net" nil "15" "Re: [oss-security] rxvt terminal (+bash) remoteish code execution 0day" nil nil nil "5" nil nil (number mark "U       jwilk@jwilk. May 17   15/425   " thread-indent "\"Re: [oss-security] rxvt terminal (+bash) remoteish code execution 0day\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] rxvt terminal (+bash) remoteish code execution 0day" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22026 invoked by uid 550); 17 May 2021 19:28:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22005 invoked from network); 17 May 2021 19:28:23 -0000
Authentication-Results: garm.ovh; auth=pass (GARM-103G005b0b461c9-94b6-4a58-bf1f-7d7059f729d3,
                    B97D096A4BAB0DBBF36576238E00FCA4390CD7BF) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.173.41.52
Date: Mon, 17 May 2021 21:28:10 +0200
From: Jakub Wilk <jwilk@jwilk.net>
To: <oss-security@lists.openwall.com>
Message-ID: <20210517192810.6zus3mumaq6l63zi@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20210517134904.GA24667@huumeet.info>
 <20210517143348.GB24667@huumeet.info>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20210517143348.GB24667@huumeet.info>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.103]
X-ClientProxiedBy: DAG3EX2.mxp6.local (172.16.2.22) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 191bf27a-3f4b-4b99-a264-7277f5056a3e
X-Ovh-Tracer-Id: 14108370260961908503
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduledrvdeihedgudefiecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepfffhvffukfhfgggtuggjfghisehttdertddtredvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeehuefgtddvueekudeuueeuleevheekjeehvddugeehgfffjeeiteejteegjeetkeenucffohhmrghinhepohhpvghnfigrlhhlrdgtohhmpdhstghhmhhorhhprdguvgenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddruddtfeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehoshhsqdhsvggtuhhrihhthieslhhishhtshdrohhpvghnfigrlhhlrdgtohhm
Subject: Re: [oss-security] rxvt terminal (+bash) remoteish code execution
 0day

* def <def@huumeet.info>, 2021-05-17, 17:33:
>The bug is not technically a 0day for rxvt-unicode and has been known 
>at least since 2017-05-01 when it was discussed publicly in 
>oss-security:
>
>    https://www.openwall.com/lists/oss-security/2017/05/01/20
>
>The issue was quietly fixed in rxvt-unicode upstream in 2017.

Or was it 2019?

http://cvs.schmorp.de/rxvt-unicode/src/command.C?view=log#rev1.585

-- 
Jakub Wilk
