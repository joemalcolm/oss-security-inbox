X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2708" "Tuesday" "17" "May" "2016" "10:19:16" "+0200" "Andrej Nemec" "anemec@redhat.com" "<a21ce701-cd83-f4da-736a-0977b1e7f31f@redhat.com>" "63" "Re: [oss-security] ImageMagick heap overflow and out of bounds read" "^Cc:" nil nil "5" "2016051708:19:16" "[oss-security] ImageMagick heap overflow and out of bounds read" (number mark "        anemec@redha May 17   63/2708  " thread-indent "\"Re: [oss-security] ImageMagick heap overflow and out of bounds read\"\n") "<20160511120119.056ad3c2@pc1>" ("<20160511120119.056ad3c2@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7386 invoked by uid 550); 17 May 2016 08:19:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7367 invoked from network); 17 May 2016 08:19:30 -0000
References: <20160511120119.056ad3c2@pc1>
Message-ID: <a21ce701-cd83-f4da-736a-0977b1e7f31f@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.0
MIME-Version: 1.0
In-Reply-To: <20160511120119.056ad3c2@pc1>
Content-Type: multipart/alternative;
 boundary="------------13D50C127A27999EB7FA9257"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.30]); Tue, 17 May 2016 08:19:18 +0000 (UTC)
Cc: cve-assign@mitre.org
Date: Tue, 17 May 2016 10:19:16 +0200
From: Andrej Nemec <anemec@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ImageMagick heap overflow and out of bounds read
To: oss-security@lists.openwall.com

--------------13D50C127A27999EB7FA9257
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 05/11/2016 12:01 PM, Hanno Böck wrote:

> https://blog.fuzzing-project.org/45-ImageMagick-heap-overflow-and-out-of-bounds-read.html
>
> Recently the ImageTragick vulnerability shed some light on the security
> status of ImageMagick.
>
> This made me wonder how resilient to fuzzing ImageMagick is these days.
> It's pretty much a posterchild example for a good fuzzing target: Lots
> of supported complex binary file formats.
>
> I already did some fuzzing on ImageMagick, but as far as I remember
> that was before I used american fuzzy lop and was done with zzuf. I was
> also aware that others did some more thorough fuzzing on ImageMagick.
> http://www.openwall.com/lists/oss-security/2014/12/24/1
>
> What I did now was relatively simple: I took a trivial, few pixels PNG
> and used ImageMagick's "convert" tool to convert it into all file
> formats that have both read and write support in ImageMagick. I used
> that to run a fuzzing job with afl and asan. By design ImageMagick will
> sometimes do huge memory allocations, these can be prevented by setting
> limits for the width, height and memory usage in the policy.xml file.
>
> I discovered one heap buffer overflow in the PICT parser and one heap
> out of bounds read in the PSD parser. Given how big the attack surface
> is this is not terrible, but it shows that despite previous efforts
> there's still potential to fuzz ImageMagick.
>
> https://crashes.fuzzing-project.org/imagemagick-heapoverflow-WritePixelCachePixels.pict
> Sample file for heap buffer overflow in WritePixelCachePixels() (PICT
> format)
> https://github.com/ImageMagick/ImageMagick/commit/cfbe890d0cfcd5d3b0f63744a6901e40e992e07c
> Git commit / fix
>
> https://crashes.fuzzing-project.org/imagemagick-oob-heap-read-PushShortPixel.psd
> Sample file for heap out of bounds read in PushShortPixel() (PSD format)
> https://github.com/ImageMagick/ImageMagick/commit/15dd190dfd7e7a3341bdc378f4f0daba9873322c
> Git commit / fix
>
> https://www.imagemagick.org/script/changelog.php
> Both issues have been fixed in the versions 6.9.4-0 and 7.0.1-2. In the
> meantime new versions (6.9.4-1, 7.0.1-3) came out that, as far as I
> understand the ChangeLog, remove another potential vector for the
> ImageTragick vulnerabilities, so you should preferrably update to those.
>
Hello,

This seems to have fallen through the cracks.
Mitre, do you want to assign CVE IDs to these vulnerabilities?

Thanks!
Best Regards,

-- 
Andrej Nemec, Red Hat Product Security
3701 3214 E472 A9C3 EFBE 8A63 8904 44A1 D57B 6DDA


--------------13D50C127A27999EB7FA9257--
