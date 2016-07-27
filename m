X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1178" "Wednesday" "27" "July" "2016" "23:31:03" "+0100" "Luis Henriques" "henrix@camandro.org" "<87d1lyiuhk.fsf@camandro.org>" "44" "Re: [oss-security] Re: CVE-2016-5400 - linux kernel: denial of service in airspy USB driver." "^Cc:" nil nil "7" "2016072722:31:03" "[oss-security] Re: CVE-2016-5400 - linux kernel: denial of service in airspy USB driver." (number mark "        henrix@caman Jul 27   44/1178  " thread-indent "\"Re: [oss-security] Re: CVE-2016-5400 - linux kernel: denial of service in airspy USB driver.\"\n") "<CALJHwhSoHKvrNxFbYL4HJk4GtxHxaetQWBZQQf8ROVYqm+N=dg@mail.gmail.com>" ("<CALJHwhS5Qin0-snXT458ARcXDPTHAdpsS3ax1CCPFdWSeLeLAQ@mail.gmail.com>" "<CALJHwhSoHKvrNxFbYL4HJk4GtxHxaetQWBZQQf8ROVYqm+N=dg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16119 invoked by uid 550); 27 Jul 2016 22:31:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16100 invoked from network); 27 Jul 2016 22:31:28 -0000
References: <CALJHwhS5Qin0-snXT458ARcXDPTHAdpsS3ax1CCPFdWSeLeLAQ@mail.gmail.com>
	<CALJHwhSoHKvrNxFbYL4HJk4GtxHxaetQWBZQQf8ROVYqm+N=dg@mail.gmail.com>
In-Reply-To: <CALJHwhSoHKvrNxFbYL4HJk4GtxHxaetQWBZQQf8ROVYqm+N=dg@mail.gmail.com>
	(Wade Mealing's message of "Mon, 25 Jul 2016 10:51:16 +1000")
Message-ID: <87d1lyiuhk.fsf@camandro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-BlackCat-Spam-Score: -28
X-Mythic-Debug: Threshold =  On = 
Cc: oss-security@lists.openwall.com
Date: Wed, 27 Jul 2016 23:31:03 +0100
From: Luis Henriques <henrix@camandro.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE-2016-5400 - linux kernel: denial of service in airspy USB driver.
To: Wade Mealing <wmealing@redhat.com>

Wade Mealing <wmealing@redhat.com> writes:

> Hit send too early,
>
>
> Upstream patch:
> https://git.linuxtv.org/media_tree.git/commit/?id=3Deca2d34b9d2ce70165a50=
510659838e28ca22742
>

I believe the above commit isn't really related with CVE-2016-5400;
the following commit in mainline claims to fix this issue:

commit aa93d1fee85c890a34f2510a310e55ee76a27848
Author: James Patrick-Evans <james@jmp-e.com>
Date:   Fri Jul 15 16:40:45 2016 +0100

    media: fix airspy usb probe error path

Cheers,
--=20
Lu=C3=ADs


> Maintainer has yet to send to LKML.
>
>
> On Mon, Jul 25, 2016 at 10:50 AM, Wade Mealing <wmealing@redhat.com> wrot=
e:
>> Hello All,
>>
>> A flaw was found in the linux kernel's implementation of the airspy
>> USB device driver in which a leak was found when a subdev or SDR are
>> plugged into the host.
>>
>> An attacker can create an targeted USB device which can emulate 64 of
>> these devices. Then by emulating an additional device which
>> continuously connects and disconnects, each connection attempt will
>> leak memory which can not be recovered.
>>
>> This issue was assigned CVE-2016-5400.
>>
>> Wade Mealing
>> Red Hat Product Security Team
