X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1040" "Friday" "16" "October" "2015" "11:24:53" "+0200" "Florian Weimer" "fweimer@redhat.com" "<5620C265.3020703@redhat.com>" "26" "Re: [oss-security] CVE Request: Linux Kernel heap corruption on debug_read_tlb" nil nil nil "10" "2015101609:24:53" "[oss-security] CVE Request: Linux Kernel heap corruption on debug_read_tlb" (number mark "        fweimer@redh Oct 16   26/1040  " thread-indent "\"Re: [oss-security] CVE Request: Linux Kernel heap corruption on debug_read_tlb\"\n") "<20151015135348.GA8128@kroah.com>" ("<CAJpd-bHmTaQ37Tykmfu7HAJrfu1JuW7wgFR32u1MWy0BjcTv6Q@mail.gmail.com>" "<20151015135348.GA8128@kroah.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27862 invoked by uid 550); 16 Oct 2015 09:25:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27840 invoked from network); 16 Oct 2015 09:25:07 -0000
References: <CAJpd-bHmTaQ37Tykmfu7HAJrfu1JuW7wgFR32u1MWy0BjcTv6Q@mail.gmail.com>
 <20151015135348.GA8128@kroah.com>
Message-ID: <5620C265.3020703@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <20151015135348.GA8128@kroah.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Date: Fri, 16 Oct 2015 11:24:53 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: Linux Kernel heap corruption on
 debug_read_tlb
To: oss-security@lists.openwall.com

On 10/15/2015 03:53 PM, Greg KH wrote:
> On Thu, Oct 15, 2015 at 10:30:04AM +0200, Salva Peiró wrote:
>> Hello,
>>
>> Is there a CVE for this? If not, could one be assigned, please?
>>
>>      https://patchwork.kernel.org/patch/6853351/
>>      commit e203db293863fa15b4b1917d4398fb5bd63c4e88
>>      iommu/omap: Fix debug_read_tlb() to use seq_printf()
>>
>>      The debug_read_tlb() uses the sprintf() functions directly on the
>> buffer
>>      allocated by buf = kmalloc(count), without taking into account the size
>>      of the buffer, with the consequence corrupting the heap, depending on
>>      the count requested by the user.
>>
>>      The patch fixes the issue replacing sprintf() by seq_printf().
> 
> For a root-only-readable file?  Why is a CVE needed?

Fedora and downstreams do not system-level access to the root user by
default, as a result of the custom Secure Boot patches.  This does not
matter for pure denial-of-service bugs of course, but this bug looks
like something that might allow code execution.

Florian
