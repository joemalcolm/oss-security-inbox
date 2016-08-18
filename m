X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4516" "Thursday" "18" "August" "2016" "20:16:27" "+0200" "Adam Maris" "amaris@redhat.com" "<3385bcd9-629a-5978-abfa-87cae962deb2@redhat.com>" "115" "Re: [oss-security] Re: CVE Request: Linux kernel crash of OHCI when plugging in malicious USB devices" "^Cc:" nil nil "8" "2016081818:16:27" "[oss-security] Re: CVE Request: Linux kernel crash of OHCI when plugging in malicious USB devices" (number mark "        amaris@redha Aug 18  115/4516  " thread-indent "\"Re: [oss-security] Re: CVE Request: Linux kernel crash of OHCI when plugging in malicious USB devices\"\n") "<1471538630.13300.95.camel@decadent.org.uk>" ("<20160818142216.GH2701@suse.de>" "<20160818143014.GA27854@kroah.com>" "<20160818143957.GI2701@suse.de>" "<20160818145724.GA32181@kroah.com>" "<20160818151654.GK2701@suse.de>" "<1471538630.13300.95.camel@decadent.org.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1539 invoked by uid 550); 18 Aug 2016 18:16:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1514 invoked from network); 18 Aug 2016 18:16:44 -0000
References: <20160818142216.GH2701@suse.de> <20160818143014.GA27854@kroah.com>
 <20160818143957.GI2701@suse.de> <20160818145724.GA32181@kroah.com>
 <20160818151654.GK2701@suse.de> <1471538630.13300.95.camel@decadent.org.uk>
Message-ID: <3385bcd9-629a-5978-abfa-87cae962deb2@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <1471538630.13300.95.camel@decadent.org.uk>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.30]); Thu, 18 Aug 2016 18:16:33 +0000 (UTC)
Cc: cve-assign@mitre.org, security@kernel.org
Date: Thu, 18 Aug 2016 20:16:27 +0200
From: Adam Maris <amaris@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE Request: Linux kernel crash of OHCI when
 plugging in malicious USB devices
To: oss-security@lists.openwall.com, Marcus Meissner <meissner@suse.de>,
        Greg KH <greg@kroah.com>



On 18/08/16 18:43, Ben Hutchings wrote:
> On Thu, 2016-08-18 at 17:16 +0200, Marcus Meissner wrote:
>> On Thu, Aug 18, 2016 at 04:57:24PM +0200, Greg KH wrote:
>>> On Thu, Aug 18, 2016 at 04:39:57PM +0200, Marcus Meissner wrote:
>>>> On Thu, Aug 18, 2016 at 04:30:14PM +0200, Greg KH wrote:
>>>>> On Thu, Aug 18, 2016 at 04:22:16PM +0200, Marcus Meissner wrote:
>>>>>> Hi,
>>>>>>
>>>>>> I think this does not have a CVE yet, please assign.
>>>>>>
>>>>>> https://www.spinics.net/lists/linux-usb/msg144177.html
>>>>>>
>>>>>> Headline:         Linux Kernel Panic Over USB with HID Keyboard wMax=
PacketSize
>>>>>> Platforms:        Ubuntu
>>>>>> Versions:         Linux Kernel 4.4.0-22-generic
>>>>> Huh?  It's much more pervasive than just that single platform or sing=
le
>>>>> version.
>>>> That was the quote from the original e-mail. I read further on it affe=
cts
>>>> more kernel versions.
>>>>=20=20=20
>>>>>> CVSS Score:       4.7
>>>>>> CVSS Vector:      AV:L/AC:M/Au:N/C:N/I:N/A:C
>>>>>> Filed Defects:
>>>>>> Related Defects:
>>>>>> CWE Tags:
>>>>>> Cycle:
>>>>>> Found by:         Jake Lamberson
>>>>>>
>>>>>>
>>>>>> Linux Kernel panics when using an OHCI controller if a USB device re=
ports being
>>>>>> a generic HID keyboard and reports a wMaxPacketSize of over 4095. Th=
e OHCI
>>>>>> controller driver fails to reserve bandwidth for the device, causing=
 the
>>>>>> keyboard handler to fail when attaching to the HID. Later, when the =
device is
>>>>>> removed, the system crashes due to a null pointer dereference in a l=
inked list
>>>>>> of endpoint descriptors. The crash can be re-created using a Facedan=
cer and UMAP
>>>>>> software. Given an appropriately configured Facedancer and UMAP setu=
p, the crash
>>>>>> can be re-created with:
>>>>>> sudo board=3Dfacedancer21 python3 umap.py -P /dev/serial_device_here=
 -f 03:00:00:E:0046 -l LOG
>>>>>>
>>>>>> Note: OHCI is a USB 1.1 controller standard that can be included wit=
h devices
>>>>>> that support either USB 1.1 or 2.0 as their highest USB spec. USB 3.=
0 devices
>>>>>> all use xHCI, which implements USB 1.1, 2.0, and 3.0, making them im=
mune to
>>>>>> this particular bug.
>>>>>>
>>>>>> -----------------
>>>>>>
>>>>>> The proposed fixing patch is here:
>>>>>> https://www.spinics.net/lists/linux-usb/msg144269.html
>>>>>>
>>>>>>
>>>>>> It has not yet been committed to the USB tree or to Linus Tree as fa=
r as I see.
>>>>> Not true, it is commit id aed9d65ac3278d4febd8665bd7db59ef53e825fe in
>>>>> the usb tree and in linux-next and will be sent to Linus tomorrow.
>>>> Ah sorry, only looked briefly.
>>> This was also asked about 2 hours ago on the linux-usb mailing list, why
>>> all of the sudden interest in something that we had been discussing for
>>> weeks now in public?
>> No one asked for a CVE before.
>>
>> If that email request was from Oliver Neukum, he pinged me on it, so I
>> started acting on it, so that explains this parallelism.
>>=20=20=20
>>>>> And are we really assigning CVE numbers for when you use an active
>>>>> "hardware test probe"?  If so, how many are people going to be assign=
ing
>>>>> for these same problems on other operating systems?  :)
>>>> I think attaching malicious USB devices and crashing the kernel should
>>>> probably get CVE ids, or do you think it should not?
>>> I don't know, that's why I'm asking, it requires "physical presence"
>>> which is much different from most threat models that people work to
>>> protect against.
>> There has been quite a number of CVEs assigned to malicious USB devices
>> this year already, this does not seem to be different.
>>
>> (e.g. CVE-2016-2384, CVE-2016-2188, CVE-2016-2187 etc.)
> An attacker that has physical access to a USB port can short VCC to GND
> and likely destroy chips.  If that is prevented by current limiting
> they can still destroy the port with glue or corrosive liquid.  The
> possibility of crashing the OS is (usually) a much less serious DoS and
> doesn't seem to me to be worth worrying about.

Attacker doesn't necessarily need to have physical access to USB port.=20
He can somehow
hand USB off to the victim that will with good intentions stick it to=20
his USB port, unexpectedly
causing kernel panic. Difference is that one probably wouldn't pour glue=20
or corrosive liquid
into his USB port believing that nothing bad will happen.

On the other hand, it's fairly minor issue, I admit that.

Regards,

--=20
Adam Mari=C5=A1, Red Hat Product Security
1CCD 3446 0529 81E3 86AF  2D4C 4869 76E7 BEF0 6BC2


