Received: (qmail 32431 invoked by uid 550); 28 Apr 2026 23:02:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30183 invoked from network); 28 Apr 2026 22:15:59 -0000
To: MOHAMED AZIZ RAHMOUNI <mohamedaziz.rahmouni@insat.ucar.tn>,
 oss-security@lists.openwall.com, secalert@redhat.com
References: <CAJBym6AuYxQE1pvsUj6zhRpJd1UqY-iNXD4HhhALJjB-9N=Y+Q@mail.gmail.com>
From: Dmitry Butskoy <buc@buc.spb.ru>
Message-ID: <2d6df6ac-419b-2b12-cafb-58b3cfd76936@buc.spb.ru>
Date: Wed, 29 Apr 2026 01:15:50 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:128.0) Gecko/20100101
 Thunderbird/128.0
MIME-Version: 1.0
In-Reply-To: <CAJBym6AuYxQE1pvsUj6zhRpJd1UqY-iNXD4HhhALJjB-9N=Y+Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] =?UTF-8?Q?Re:_[SECURITY]_Out-of-Bounds_Read_in_MPLS_Extension_Parsi?=
 =?UTF-8?Q?ng_=e2=80=94_traceroute_2.1.2?=

Thanks for the report. I'll review it in the next few hours.


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

