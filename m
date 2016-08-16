X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1014" "Tuesday" "16" "August" "2016" "20:15:49" "+0200" "Sona Sarmadi" "sona.sarmadi@enea.com" "<8e047f04-5c48-aaa8-0e71-e06a44cb8a2c@enea.com>" "31" "Re: [oss-security] CVE-2016-5696: linux kernel - challange ack information leak." "^Date:" nil nil "8" "2016081618:15:49" "[oss-security] CVE-2016-5696: linux kernel - challange ack information leak." (number mark "        sona.sarmadi Aug 16   31/1014  " thread-indent "\"Re: [oss-security] CVE-2016-5696: linux kernel - challange ack information leak.\"\n") "<20160815075301.GD6359@kroah.com>" ("<CALJHwhTAvhAB0DPe2m7h1X_uoz9R5adTOpr-YVXUd6pX3WVNyg@mail.gmail.com>" "<b84b5a3f-9e85-e3f2-fbbd-95dac3a76518@enea.com>" "<20160814195158.GA19228@kroah.com>" "<3230301C09DEF9499B442BBE162C5E48ABE26AE4@SESTOEX04.enea.se>" "<20160815075301.GD6359@kroah.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5165 invoked by uid 550); 16 Aug 2016 18:16:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5145 invoked from network); 16 Aug 2016 18:16:02 -0000
References: <CALJHwhTAvhAB0DPe2m7h1X_uoz9R5adTOpr-YVXUd6pX3WVNyg@mail.gmail.com>
 <b84b5a3f-9e85-e3f2-fbbd-95dac3a76518@enea.com>
 <20160814195158.GA19228@kroah.com>
 <3230301C09DEF9499B442BBE162C5E48ABE26AE4@SESTOEX04.enea.se>
 <20160815075301.GD6359@kroah.com>
Message-ID: <8e047f04-5c48-aaa8-0e71-e06a44cb8a2c@enea.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <20160815075301.GD6359@kroah.com>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [192.168.201.202]
X-Outbound-IP: 192.36.1.72
X-Env-From: sona.sarmadi@enea.com
X-Proto: esmtps
X-Revdns: mx-3.enea.com
X-HELO: mx-3.enea.com
X-TLS: TLSv1:AES128-SHA:128
X-Authenticated_ID: 
X-PolicySMART: 6551647
X-Virus-Status: Scanned by VirusSMART (c)
X-Virus-Status: Scanned by VirusSMART (s)
Date: Tue, 16 Aug 2016 20:15:49 +0200
From: Sona Sarmadi <sona.sarmadi@enea.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2016-5696: linux kernel - challange ack
 information leak.
To: <oss-security@lists.openwall.com>



On 2016-08-15 09:53, Greg KH wrote:
> On Mon, Aug 15, 2016 at 06:23:04AM +0000, Sona Sarmadi wrote:
>>>> This vulnerability is currently only fixed in mainline kernels (4.7 &
>>>> 4.8). Does anyone know if there is any work ongoing to backport this
>>>> fix to the  older versions?
>>> I just added the fix for this issue to the stable kernel queues and it will
>>> show up in the next stable releases, in about 2 days after it passes all of
>>> the needed review.
>>>
>>> Hope this helps,
>>>
>>> greg k-h
>> Great, thanks, this helps :)
> You can _always_ just apply the patch to your local tree, there's never
> a need to wait for me to get a kernel out.  That's the advantage of
> having the source for your systems :)
Yes, we can do that but sometimes the patches for newer kernels don't
apply cleanly on older versions.
There is always a risk that our home grown patches have undesired side
effects. We prefer your sign of approval on patches for older kernels :)

Cheers
//Sona

>
> thanks,
>
> greg k-h

