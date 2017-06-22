X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["811" "Thursday" "22" "June" "2017" "17:24:17" "+0300" "Vasily Averin" "vvs@virtuozzo.com" "<2fa23b64-faec-39ee-879a-9f03922f7edd@virtuozzo.com>" "27" "Re: [oss-security] stackguard fix in Red Hat and Ubuntu kernels" nil nil nil "6" "2017062214:24:17" "[oss-security] stackguard fix in Red Hat and Ubuntu kernels" (number mark "U       vvs@virtuozz Jun 22   27/811   " thread-indent "\"Re: [oss-security] stackguard fix in Red Hat and Ubuntu kernels\"\n") "<20170622133812.GA1672@kroah.com>" ("<20170622121330.GA18550@openwall.com>" "<20170622121833.GI32005@suse.de>" "<20170622133812.GA1672@kroah.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1360 invoked by uid 550); 22 Jun 2017 14:27:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29957 invoked from network); 22 Jun 2017 14:24:32 -0000
To: Greg KH <greg@kroah.com>, oss-security@lists.openwall.com
Cc: Konstantin Khorenko <khorenko@virtuozzo.com>
References: <20170622121330.GA18550@openwall.com>
 <20170622121833.GI32005@suse.de> <20170622133812.GA1672@kroah.com>
From: Vasily Averin <vvs@virtuozzo.com>
Message-ID: <2fa23b64-faec-39ee-879a-9f03922f7edd@virtuozzo.com>
Date: Thu, 22 Jun 2017 17:24:17 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <20170622133812.GA1672@kroah.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] stackguard fix in Red Hat and Ubuntu kernels

As far as I know this problem (SIGSEGV on access to mmap area) was not affect mainline,
mainline patch was correct.

We observe some problem with stack grow down,
https://patchwork.kernel.org/patch/9802797/

and all responsible developers are informed already.

Thank you,
	Vasily Averin

On 2017-06-22 16:38, Greg KH wrote:
> On Thu, Jun 22, 2017 at 02:18:33PM +0200, Marcus Meissner wrote:
>> Hi,
>>
>> Yes, we at SUSE are seeing similar crashes. Thanks for the reproducer!
> 
> The patches upstream in Linus's tree should resolve these crashes,
> correct?  If not, please let the kernel developers know, as we ended up
> going with a different set of changes than the distros shipped, and are
> still working on getting these backported to older stable kernels at the
> moment.
> 
> thanks,
> 
> greg k-h
> 
