X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1330" "Tuesday" "11" "August" "2015" "09:51:50" "+0200" "Adam Maris" "amaris@redhat.com" "<55C9A996.5090705@redhat.com>" "45" "Re: [oss-security] CVE for crypto_get_random() from libsrtp" nil nil nil "8" "2015081107:51:50" "[oss-security] CVE for crypto_get_random() from libsrtp" (number mark "        amaris@redha Aug 11   45/1330  " thread-indent "\"Re: [oss-security] CVE for crypto_get_random() from libsrtp\"\n") "<CACYkhxiBvVbV-Xg-gM7ZdJzR=xaR2ta_OA-K6Lvftxvo9j3=uA@mail.gmail.com>" ("<55BB6E77.1070007@redhat.com>" "<CACYkhxiBvVbV-Xg-gM7ZdJzR=xaR2ta_OA-K6Lvftxvo9j3=uA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20161 invoked by uid 550); 11 Aug 2015 07:52:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20143 invoked from network); 11 Aug 2015 07:52:04 -0000
References: <55BB6E77.1070007@redhat.com>
 <CACYkhxiBvVbV-Xg-gM7ZdJzR=xaR2ta_OA-K6Lvftxvo9j3=uA@mail.gmail.com>
Message-ID: <55C9A996.5090705@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <CACYkhxiBvVbV-Xg-gM7ZdJzR=xaR2ta_OA-K6Lvftxvo9j3=uA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Date: Tue, 11 Aug 2015 09:51:50 +0200
From: Adam Maris <amaris@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE for crypto_get_random() from libsrtp
To: oss-security@lists.openwall.com

Hello,

The weakest method it provides uses no encryption at all, just HMAC-SHA1 
with 80 bit authentication tag:
http://srtp.sourcearchive.com/documentation/1.4.2.dfsg/group__SRTP_g94d0056e812802ac2920aa474bc5b59b.html

Unless CVE is assigned, we don't plan to ship any patch at the moment.

Regards,

On 01/08/15 11:31, Michael Samuel wrote:
> Hi,
>
> I can't see any reference to it using 80 bits of random data - it looks
> like it's AES-CTR mode.  Do you have further information on that?
>
> That being said, I can see quite a few ways it can go wrong - it's doesn't
> appear thread-safe for a start.  Is it worth taking a closer look or are
> you planning on shipping the patch anyway?
>
> Regards,
>    Michael
>
> On 31 July 2015 at 22:47, Adam Maris <amaris@redhat.com> wrote:
>
>> Hello,
>>
>> I've got question whether this bug (
>> https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=793971) is CVE-worthy?
>> Could it be classified as CWE-330: Use of Insufficiently Random Values?
>>
>> According to the SRTP documentation (
>> http://srtp.sourcearchive.com/documentation/1.4.2.dfsg/group__SRTP_g1d4c228c6a58096dfab3cefbabd66f17.html),
>> it provides 80 bits of random data, which is quite a borderline.
>>
>> Thanks.
>>
>> --
>> Adam Maris / Red Hat Product Security
>>
>>

-- 
Adam Maris / Red Hat Product Security

