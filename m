X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1287" "Monday" "18" "January" "2016" "14:05:23" "+0100" "Florian Weimer" "fweimer@redhat.com" "<569CE313.4060002@redhat.com>" "30" "Re: [oss-security] Qualys Security Advisory - Roaming through the OpenSSH client: CVE-2016-0777 and CVE-2016-0778" "^Date:" nil nil "1" "2016011813:05:23" "[oss-security] Qualys Security Advisory - Roaming through the OpenSSH client: CVE-2016-0777 and CVE-2016-0778" (number mark "        fweimer@redh Jan 18   30/1287  " thread-indent "\"Re: [oss-security] Qualys Security Advisory - Roaming through the OpenSSH client: CVE-2016-0777 and CVE-2016-0778\"\n") "<1452862593.9500.48.camel@opteya.com>" ("<20160114171301.GH28298@localhost.localdomain>" "<5698D299.6020202@redhat.com>" "<1452862593.9500.48.camel@opteya.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9634 invoked by uid 550); 18 Jan 2016 13:05:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9616 invoked from network); 18 Jan 2016 13:05:37 -0000
References: <20160114171301.GH28298@localhost.localdomain>
 <5698D299.6020202@redhat.com> <1452862593.9500.48.camel@opteya.com>
Message-ID: <569CE313.4060002@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.4.0
MIME-Version: 1.0
In-Reply-To: <1452862593.9500.48.camel@opteya.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Date: Mon, 18 Jan 2016 14:05:23 +0100
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Qualys Security Advisory - Roaming through the
 OpenSSH client: CVE-2016-0777 and CVE-2016-0778
To: oss-security@lists.openwall.com

On 01/15/2016 01:56 PM, Yann Droneaud wrote:
> Hi,
> 
> Le vendredi 15 janvier 2016 à 12:06 +0100, Florian Weimer a écrit :
>> On 01/14/2016 06:13 PM, Qualys Security Advisory wrote:
>>> Internal stdio buffering is the most severe of the three problems
>>> discussed in this section, although GNU/Linux is not affected
>>> because the glibc mmap()s and munmap()s (and therefore cleanses)
>>> stdio buffers.
>>
>> This will change in glibc 2.23, stdio will use regular malloc and
>> free for its buffers.  I did not expect this change to have security
>> implications.  Considering that the actual bug lies elsewhere, and
>> stdio usage is based on copying out of the buffer (so leaks can still
>> happen elsewhere), I do not wish to revert this change.
>>
> 
> Would setvbuf(stream, NULL, _IONBF, 0); be used to disable buffer
> before reading/writting sensible data to a stream ?

That entirely depends on how the data is read or written.  glibc will
make additional copies on the heap in some cases.  In any case, this is
an implementation detail.

Even if the data is gone from the process image, the kernel or its
hypervisor may still keep copies, particularly if the data is (or was
once) on the file system.  It is very hard to override data reliably on
modern systems.

Florian
