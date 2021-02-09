X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["681" "Tuesday" "9" "February" "2021" "17:29:15" "+0100" "Jakub Wilk" "jwilk@jwilk.net" "<20210209162915.xuycdrqtslfu25zi@jwilk.net>" "19" "[oss-security] Re: charset.alias in pkexec/glib/gnulib" nil nil nil "2" "2021020916:29:15" "[oss-security] Re: charset.alias in pkexec/glib/gnulib" (number mark "U       jwilk@jwilk. Feb  9   19/681   " thread-indent "\"[oss-security] Re: charset.alias in pkexec/glib/gnulib\"\n") "<20170623182344.kmgskfvzve457lly@jwilk.net>" ("<mpro.n8oiuc0ushvds06jd.taviso@cmpxchg8b.com>" "<20170623182344.kmgskfvzve457lly@jwilk.net>") nil nil nil nil nil nil nil "[oss-security] Re: charset.alias in pkexec/glib/gnulib" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15360 invoked by uid 550); 9 Feb 2021 16:29:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14303 invoked from network); 9 Feb 2021 16:29:31 -0000
Authentication-Results: garm.ovh; auth=pass (GARM-100R0036d831b81-2136-48bb-8c9f-447e789a9951,
                    C4B87EEFBBC8B6FDDEED3A35FC1F00712A2A172F) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.224
Date: Tue, 9 Feb 2021 17:29:15 +0100
From: Jakub Wilk <jwilk@jwilk.net>
To: <oss-security@lists.openwall.com>
Message-ID: <20210209162915.xuycdrqtslfu25zi@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <mpro.n8oiuc0ushvds06jd.taviso@cmpxchg8b.com>
 <20170623182344.kmgskfvzve457lly@jwilk.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20170623182344.kmgskfvzve457lly@jwilk.net>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.100]
X-ClientProxiedBy: DAG2EX2.mxp6.local (172.16.2.12) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 06357c28-64ad-4834-9adc-a772e84b03ec
X-Ovh-Tracer-Id: 13285337430027196183
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduledrheehgdeludcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepfffhvffukfhfgggtuggjfghisehttdertddtredvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpedvieeghfeguddtgeeludejudffudeitddtffdvveegtdehkeetveegudeftdfhjeenucffohhmrghinhepghhnohhmvgdrohhrghenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddruddttdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehoshhsqdhsvggtuhhrihhthieslhhishhtshdrohhpvghnfigrlhhlrdgtohhm
Subject: [oss-security] Re: charset.alias in pkexec/glib/gnulib

* Jakub Wilk <jwilk@jwilk.net>, 2017-06-23, 20:23:
>* Tavis Ormandy <taviso@cmpxchg8b.com>, 2014-07-13, 18:59:
>>because pkexec links to glib, the built-in iconv/gconv conversion 
>>stuff is used by default. This allows you to setup aliases, which 
>>are of the form "charset <arbitrary alias>", for example:
>>
>>
>>$ echo "UTF-7 ThisIsAnAlias" > charset.alias
>>$ CHARSET=ThisIsAnAlias CHARSETALIASDIR=$(pwd) pkexec
>>pkexec --version +AHw
>>      --help +AHw
>>      --disable-internal-agent +AHw
>>      +AFs---user username+AF0 PROGRAM +AFs-ARGUMENTS...+AF0

I believe this was fixed in glib 2.63.6:
https://gitlab.gnome.org/GNOME/glib/commit/3529bb4450a51995

-- 
Jakub Wilk
