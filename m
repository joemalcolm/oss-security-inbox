Received: (qmail 1260 invoked by uid 550); 28 Apr 2026 23:02:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20268 invoked from network); 28 Apr 2026 22:48:16 -0000
To: MOHAMED AZIZ RAHMOUNI <mohamedaziz.rahmouni@insat.ucar.tn>,
 oss-security@lists.openwall.com, secalert@redhat.com
References: <CAJBym6AuYxQE1pvsUj6zhRpJd1UqY-iNXD4HhhALJjB-9N=Y+Q@mail.gmail.com>
From: Dmitry Butskoy <buc@buc.spb.ru>
Message-ID: <a6a3fbc7-c275-a4ae-3f54-229c5d74bdaa@buc.spb.ru>
Date: Wed, 29 Apr 2026 01:48:07 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:128.0) Gecko/20100101
 Thunderbird/128.0
MIME-Version: 1.0
In-Reply-To: <CAJBym6AuYxQE1pvsUj6zhRpJd1UqY-iNXD4HhhALJjB-9N=Y+Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] =?UTF-8?Q?Re:_[SECURITY]_Out-of-Bounds_Read_in_MPLS_Extension_Parsi?=
 =?UTF-8?Q?ng_=e2=80=94_traceroute_2.1.2?=

MOHAMED,

 From the appearing of this fragment of code in 2.0.12 (2008 year), the 
statement "n -= hlen;" is present here. Including the current version of 
2.1.6, see line 1423 of traceroute/traceroute.c :

>         if (!err &&
>             af == AF_INET &&
>             /*  XXX: Assume that the presence of an extra header means
>                 that it is not a raw socket...
>             */
>             ops->header_len == 0
>         ) {
>             struct iphdr *ip = (struct iphdr *) bufp;
>             int hlen;
>
>             if (n < sizeof (struct iphdr))  return;
>
>             hlen = ip->ihl << 2;
>             if (n < hlen)  return;
>
>             bufp += hlen;
>             n -= hlen;
>         }

What source did you use? Why is your report for version 2.1.2 when the 
latest version is 2.1.6?

Note again, that the version of 2.1.2 has this statement as well.

Could you please find out where you got this inherently corrupted code 
based on an old version?


Best regards,
Dmitry Butskoy
http://traceroute.sf.net


MOHAMED AZIZ RAHMOUNI wrote:
> Hello,
>
> I am reporting a security vulnerability I discovered in traceroute 
> 2.1.2 during manual code review and dynamic fuzzing.
>
> Summary:
> An out-of-bounds read exists in traceroute/traceroute.c. After 
> recvmsg() returns, bufp is advanced past the IPv4 header (bufp += 
> hlen) but n is not decremented accordingly. The subsequent call:
>
>     handle_extensions(pb, bufp + offs, n - offs, step);
>
> passes a len value that is hlen bytes (20 for IPv4, 40 for IPv6) 
> larger than the actual data available from bufp + offs. This causes 
> the MPLS extension parser to read past the received packet boundary 
> into uninitialized stack memory within buf[1280].
>
> The vulnerability is remotely triggerable by any on-path network 
> device that can send a crafted ICMP Time Exceeded response with MPLS 
> extensions to a traceroute -e invocation. I have confirmed the issue 
> with a working proof of concept.
>
> Proposed fix (single line addition after line 1427):
>
>     bufp += hlen;
>     n -= hlen;   // add this line
>
> I have attached a full technical report including root cause analysis, 
> proof of concept code, memory layout analysis, and impact assessment.
>
> I am following a 90-day responsible disclosure policy. I intend to 
> publish details publicly on 2026-07-27 unless a patch is available 
> sooner, at which point I will coordinate the disclosure timeline with you.
>
> Please confirm receipt of this report.
>
> Regards,
> Security researcher Zyyz
>
> Mohamed Aziz Rahmouni

