X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2128" "Wednesday" "17" "June" "2015" "11:10:43" "+0200" "Pierre Schweitzer" "pierre@reactos.org" "<55813993.3020307@reactos.org>" "66" "Re: [oss-security] PostgreSQL - Predictable cancel key" nil nil nil "6" "2015061709:10:43" "[oss-security] PostgreSQL - Predictable cancel key" (number mark "        pierre@react Jun 17   66/2128  " thread-indent "\"Re: [oss-security] PostgreSQL - Predictable cancel key\"\n") "<CACYkhxirraZ9g4HForJBSSTfckHXuinkrz3zwagW_jq0JKLUwA@mail.gmail.com>" ("<20150613093351.GF11230@mail.waldi.eu.org>" "<557E8DA5.6080707@reactos.org>" "<20150615182632.GA22032@mail.waldi.eu.org>" "<557FF729.9000109@reactos.org>" "<CACYkhxirraZ9g4HForJBSSTfckHXuinkrz3zwagW_jq0JKLUwA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30128 invoked by uid 550); 17 Jun 2015 09:10:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30110 invoked from network); 17 Jun 2015 09:10:56 -0000
Message-ID: <55813993.3020307@reactos.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Icedove/31.7.0
MIME-Version: 1.0
References: <20150613093351.GF11230@mail.waldi.eu.org> <557E8DA5.6080707@reactos.org> <20150615182632.GA22032@mail.waldi.eu.org> <557FF729.9000109@reactos.org> <CACYkhxirraZ9g4HForJBSSTfckHXuinkrz3zwagW_jq0JKLUwA@mail.gmail.com>
In-Reply-To: <CACYkhxirraZ9g4HForJBSSTfckHXuinkrz3zwagW_jq0JKLUwA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Date: Wed, 17 Jun 2015 11:10:43 +0200
From: Pierre Schweitzer <pierre@reactos.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] PostgreSQL - Predictable cancel key
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

OK, got it. Thanks for the extra details!

Cheers,

On 06/16/2015 01:04 PM, Michael Samuel wrote:
> Hi,
> 
> On 16 June 2015 at 20:15, Pierre Schweitzer <pierre@reactos.org>
> wrote:
> 
>> Well, I've thought about it, but that's still one million seeds
>> and the cancel key you're looking for might have been generated
>> after several random() call. So, that means perhaps 10 millions
>> values to explore? (If we make the hypothesis that for a given
>> initialization, it will only draw 10 PRN)
>> 
> 
> This is CPU, maybe GPU territory. 2^15-2 * 10m =~ 2^38 work
> offline.
> 
> 
>> How relevant would still be your cancel key once you found it?
> 
> 
> In the postmaster mainloop:
> 
> ConnCreate() RandomSalt() -- the md5Salt craziness in the original
> post BackendStartup() MyCancelKey = PostmasterRandom();
> 
> No other calls to random(), srandom() that I can see, and the other
> calls to PostmasterRandom() are generating cancel keys for worker
> procs.
> 
> So if you brute the md5Salt you have a pretty good chance of
> guessing something that was/is/will be a cancel key of another
> session.
> 
> Regards, Michael
> 


- -- 
Pierre Schweitzer <pierre@reactos.org>
System & Network Administrator
Senior Kernel Developer
ReactOS Deutschland e.V.
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJVgTmTAAoJEHVFVWw9WFsLPvQP/2wSyLB66VHajEtw+VQ49SKX
PQgznRxQaALO37RMZl9iXt5vAWuvTaRaue8LgmXl9GBSc6FYhYwXNO/WLNyodHO9
p8TAORnpGLvC8ncFjvK5Ier+t1/Fql9JUgIRO3pxHQuN8f7VK57GzobQzscNZK9I
6+7rka8/0cajgD6v1Ug3tbzSxcXzUVBC2wKW+vrqq0+g5I4V3Pc8JcfHp9UW4cXG
eDLtMUas/V2L2X8FDJiqHr+Y3nxB/Ijc3uXrI7DScyjvzr4KcCTtEN8+XRuOe5IQ
Zko/bSao+z0ar7k+MJxWS8zrQlfhAXHMhoQlvJI5z8QHokf4Fx+qQcmbgj7yIwxE
yQmXjeuwK1j7Qdu6L23/lmomRf7Ol861hbfVE8OWppAbAh7nSc6zd5aIVC0+KVQ0
6XrbUJDqWH9v1uzu/y7jYVb8/h6W80CDhzKyAUYlGN2mif9rok3xc6fOK7zhizoY
fOmGhpaLK2hdSorTluQYjyC8BpjeN4u6rQS3tDYKLgcxkIMFKs86QBqQ6t7C/po4
eAyXZc54FkzAaPNKGNN3LWYS3BzneFCZHlb5TTRBm0icJec2HNjR9gyXQ7uSAbiL
mtPKZP3lAh7UmnPqu43bbqddGG4b80+5Ec9d6cnUccHcxUMoTdFCSWBpExWxYuCb
+s82K50ECPtZIBOqg64+
=f/5m
-----END PGP SIGNATURE-----
