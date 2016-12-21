X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2064" "Wednesday" "21" "December" "2016" "20:46:43" "+0000" "tapper" "lancett01@googlemail.com" "<ba7df7a2-3a2f-b861-f4f3-bba12493056d@googlemail.com>" "51" "Re: [oss-security] Curious about the security of my router fermwair." nil nil nil "12" "2016122120:46:43" "[oss-security] Curious about the security of my router fermwair." (number mark "U       lancett01@go Dec 21   51/2064  " thread-indent "\"Re: [oss-security] Curious about the security of my router fermwair.\"\n") "<20161221200739.GA5225@hunt>" ("<513503eb-a66d-9999-0cb2-59fa300fbf5f@googlemail.com>" "<20161221200739.GA5225@hunt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19573 invoked by uid 550); 22 Dec 2016 08:14:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16325 invoked from network); 21 Dec 2016 20:46:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding;
        bh=gKUMs1yYaj5TZFYWvCppw9gHBnw5dZpybvVokW4nQuM=;
        b=jLpIfgmej1vZhz7YpanWJ5Msz9FZjtfQNPTGLatyd04T2LDpb/66URF7J7N5FjjNWZ
         xF3bFJ/J0xM13ddO/7d9NfVKwBYnK692m/nAQP7DmCWUjeJBrJVvNFndj2Y9HXvvHoqi
         8Oqznnwto/znhBTSwoS4bQUfK7L1UFL0bUcei+meBcaFHBO+RGNPtmfbKu/JmRLHoaIv
         crHZM/HDXaXH2il/C6VHJHtb9coO4S/niP3Y7qPvK29YLAHdNcGnvvrlUOOZhDPRM0QP
         kDYw96nSrZUGZ5+hUamAzAEWHFfcToNvHr2syIQNOD8WcnENX6Nzr/RIt6ZlFbEjL8VQ
         qrZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding;
        bh=gKUMs1yYaj5TZFYWvCppw9gHBnw5dZpybvVokW4nQuM=;
        b=ZDE3o+o86gtbvGxsblKRuXI+SWRb7DH/R5QIFIcrooZXqfx79TUkfsvMaMRIMjjL4b
         hvIKwsXT5Lx44NdgA5jXbpF2dNw1MUw0MtRf6mr7UR2pGbUQlzUh8jaCWnfm5iDCuIr5
         1mUYOC/2JcAOpb0EbKjT8FMbN8VcShUdCj4D7GzockmmiU1kGGFyKyGtlBxMQfOKiomg
         SQXhywRJg4d/7x0ebch/Hd8J1dx1+QH0tOv/I4OroXAXMBP9LKHbu1pYnQJtkDNkCwAE
         jcGF8sfGdfCvG7bdWPYKdhH7XjhoPzFYhr4caToIR5TsH4443tWH6GUTgdgtuZL5T1lf
         EMGQ==
X-Gm-Message-State: AIkVDXK/ffaaVzlyadWzZxKrLz90Bt6EREmrtNMaugIsitxte3lyeJM31gTrk4se1WFERQ==
X-Received: by 10.194.67.67 with SMTP id l3mr5942300wjt.151.1482353204854;
        Wed, 21 Dec 2016 12:46:44 -0800 (PST)
To: oss-security@lists.openwall.com
References: <513503eb-a66d-9999-0cb2-59fa300fbf5f@googlemail.com>
 <20161221200739.GA5225@hunt>
From: tapper <lancett01@googlemail.com>
Message-ID: <ba7df7a2-3a2f-b861-f4f3-bba12493056d@googlemail.com>
Date: Wed, 21 Dec 2016 20:46:43 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <20161221200739.GA5225@hunt>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Curious about the security of my router fermwair.

Thanks very much for this I will pass this on to the devs. I don't see 
this being much of a problem I will make a pr. I scanned my device with 
nmap and didn't find any thing open that should not be so that makes me 
happy :)


On 21/12/2016 20:07, Seth Arnold wrote:
> On Wed, Dec 21, 2016 at 11:39:26AM +0000, tapper wrote:
>> 	Hi my name is Jonathan. I don't know if this is the write place to ask
>> about this but here gos.
>
> It's not the usual use of this list but I suspect you won't upset many
> people either.
>
>> I would like to know if any one would like to have a poke around at the
>> third party router firmware I use on my router called Gargoyle.
>
> The first item I found in about one minute of inspection is that they
> include an utterly ancient version of ffmpeg:
>
> https://github.com/ericpaulbishop/gargoyle/blob/master/package/ffmpeg/Makefile#L10
>
> PKG_NAME:=ffmpeg
> PKG_VERSION:=2.4.4
> PKG_RELEASE:=1
>
> PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
> PKG_SOURCE_URL:=http://ffmpeg.org/releases/
> PKG_MD5SUM:=7e2819c71484ffba1ba1a91dd5285643
>
> The 2.4 branch of ffmpeg ended with version 2.4.13 on 2016-02-02. Not
> only are they nine point releases behind, they are also drastically
> behind on shipping newer versions entirely. (The latest version upstream
> is numbered 3.2.2. That's seven minor versions behind, too.) Granted,
> new versions bring new bugs, but picking one point in time two years
> ago and then never updating is trouble.
>
> I didn't spot any security fixes for ffmpeg in the patches-generic or
> patches-old directories, but perhaps they just weren't clearly labeled.
>
> Another concerning point is the use of md5 to validate the download. While
> use of md5 as a 'better crc32' is well established, most cryptographic
> authorities are saying it's time to replace md5's replacement, sha-1.
> They're two hash functions behind the times.
>
> A full review would take far more time than I have to offer but the
> initial impression is that it needs a serious refresh of its dependencies.
>
> Thanks
>

