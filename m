Received: (qmail 21997 invoked by uid 550); 20 Apr 2023 11:18:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21589 invoked from network); 20 Apr 2023 11:15:50 -0000
Message-ID: <f7586453-d83d-26a6-7d9a-e7a54009209f@innerheight.com>
Date: Thu, 20 Apr 2023 13:15:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: oss-security@lists.openwall.com
References: <CAGUWgD88WiJwryGFt9hQe1rEpLX2PKb=ms-8iONvQ2qhDgtigA@mail.gmail.com>
 <e5fcafc733c2fca7baf25537eca9837a6950beac.camel@wisec.it>
From: Jan Klopper <janklopper@innerheight.com>
In-Reply-To: <e5fcafc733c2fca7baf25537eca9837a6950beac.camel@wisec.it>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Checking existence of firewalled web servers in
 Firefox via iframe.onload

Hi

The topic is still relevant.

Combining this attack with webservices that might be present behind a 
NAT network, eg IOT or appliances can result in various serious issues.

There are loads of devices that do not require csrf, or even POST for 
requests that update settings or even firmware.

Performing GET requests on those internal ip's, even though no content 
will be returned is still plenty dangerous.
Knowing which ip to perform these attacks on, can be found by looking at 
the timing of various ready/error calls.

However, it begs the question, is it the browser that is in the wrong 
here, or those appliances/devices. And, should the browser be guarding 
users against flaws in those appliances? And where then does the scope 
of the browsers security features stop?

I'm also expecting heaps of these issues to re-discovered when looking 
at the whole websockets domain.

With regards
Jan Klopper


On 20-04-2023 12:57, Stefano Di Paola wrote:
> Hello George,
> 
> from time to time it happens to rediscover techniques issues.
> This is one of those times :)
> 
> In 2006 there has been a lot of interest around browser based port
> scans, in particular to pivot internal networks.
> 
> The following links are some of them:
> 
> http://web.archive.org/web/20060813034434/http://www.spidynamics.com/assets/documents/JSportscan.pdf
> 
> https://www.gnucitizen.org/blog/javascript-port-scanner/
> 
> https://www.blackhat.com/presentations/bh-usa-06/BH-US-06-Grossman.pdf
> 
> 
> https://www.blackhat.com/presentations/bh-usa-07/Grossman/Whitepaper/bh-usa-07-grossman-WP.pdf
> 
> Some of those thecniques have been mitigated, and some it's still
> there.
> 
> There are surely other resources IIRC, although some of them might have
> been deleted, such as the ones on sla.cke.rs which is a real pity..
> 
> Cheers!
> Stefano
> 
> Ps. this email applies to the other Script technique thread/email as
> well.
> 
> On Tue, 2023-04-18 at 15:59 +0300, Georgi Guninski wrote:
>> In short in Firefox 112, it is possible to check existence
>> of firewalled web servers. This doesn't work in Chrome and Chromium
>> 112
>> for me.
>>
>> If user A has tcp connection to web server B, then in the
>> following html:
>>
>> <iframe src="http://B" onload="load()" onerror="alert('error')"
>> id="i1" />
>>
>> the javascript function load() will get executed if B serves
>> valid document to A's browser and will not be executed otherwise.
>>
>> This work for both http and https, and for http it is allowed
>> B to be IP address. Under some configurations of Apache2,
>> it serves http despite having https configured.
>>
>> In some sense, this is close to nmap via javascript in a browser.
>>
>> Potential privacy implication is when the attacker guess the
>> range of firewalled IPs and check them all in a loop.
>>
>> For online test:
>> https://j.ludost.net/onload1.html
>>
