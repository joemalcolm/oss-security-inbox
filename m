X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2848" "Tuesday" "19" "April" "2016" "10:09:32" "+0100" "Ignat Korchagin" "ignat.korchagin@gmail.com" "<CAOs+rJVMeTCh8J38eKABrf7WVd=HCv=q0doYkURsgh4bC6MsTw@mail.gmail.com>" "71" "[oss-security] Re: CVE Request: Linux kernel: remote buffer overflow in usbip" "^Cc:" nil nil "4" "2016041909:09:32" "[oss-security] Re: CVE Request: Linux kernel: remote buffer overflow in usbip" (number mark "        ignat.korcha Apr 19   71/2848  " thread-indent "\"[oss-security] Re: CVE Request: Linux kernel: remote buffer overflow in usbip\"\n") "<20160419083512.GB18866@kroah.com>" ("<20160419080643.GA26432@suse.de>" "<20160419083512.GB18866@kroah.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14269 invoked by uid 550); 19 Apr 2016 14:53:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28434 invoked from network); 19 Apr 2016 09:09:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc;
        bh=jbwAbSzlENNHwWKJyic1X88KchbHTAQQDyyRFVYLgS4=;
        b=DVE5EAV7EXH+GmtLcW4WUl/xMwTe5xRAYunWBqwTjrv1UadoTojun/eoljjAj4CSqr
         4XZr8a25MdTc+e3ieswMa6o2/m0qmIEVi68rBfwcuV7vsQ63oIjet8TP/CE5LTkjTQHm
         cDvLuqc0mKFysD3RYKWx3oPp3bs3+OIlqdHPGVglHh6PJ2cEa+PdpNFPtWQQBJNw/6pg
         6x+bcMBg812IjzyyDeuicyDQJnhKG2WMHQzS5qRL3uYm0+grG7Ig/xKWyeAboAWvkmhw
         ofpCSX9yd7RpUHdN6BRFzMabSb3huUJeD8ijdTo6WkTAT/b08ihwsaOgwKHuOTyenRLi
         GU6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc;
        bh=jbwAbSzlENNHwWKJyic1X88KchbHTAQQDyyRFVYLgS4=;
        b=W01YUl2fmHlcfA89qmmpsiN3WRw7qiAdGeNA+2KGE53is9lMzz3mvICfoR1Qgitaun
         GCXl5mO43lf31IxbNlQnadOTUNcfTr4fBWujcEmpFIdkrtgQ2CoGRDdFvKx7MOW/v2rJ
         5qjoNPexkAwHydvYZeDx0zuPwUvRJ0aOkdGnLuwSOgkbTZnAYrf8RiRGo6fq6SVYfXNl
         hD3r4B6DM57k/R01bCi2JCRRUlUpa3P8W0MXhdtbOdvZ7PTVRAoo9hdoseANCkwPZHou
         ci6Q2AgCW74sAR/+QwpkDh8UBPLGPt1vjxnSG0fd3D3bQUyT+AdV+Fkd7g42Fq16kY/I
         jVTg==
X-Gm-Message-State: AOPr4FUj96b7ctZLRYX1DDjSwiLUfYNe5zpp1iIDNxa6T50i1BzUDv07gAs80p5MDISu4XSrDBlWBrYuaMowWA==
MIME-Version: 1.0
X-Received: by 10.159.40.200 with SMTP id d66mr860114uad.89.1461056972979;
 Tue, 19 Apr 2016 02:09:32 -0700 (PDT)
In-Reply-To: <20160419083512.GB18866@kroah.com>
References: <20160419080643.GA26432@suse.de>
	<20160419083512.GB18866@kroah.com>
Message-ID: <CAOs+rJVMeTCh8J38eKABrf7WVd=HCv=q0doYkURsgh4bC6MsTw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: Marcus Meissner <meissner@suse.de>, OSS Security List <oss-security@lists.openwall.com>, 
	security@kernel.org
Date: Tue, 19 Apr 2016 10:09:32 +0100
From: Ignat Korchagin <ignat.korchagin@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: Linux kernel: remote buffer overflow in usbip
To: Greg KH <greg@kroah.com>

Hello,

Yes, I contacted cve-assign@mitre.org and they provided me with the
following number:
CVE-2016-3955

Regards,
Ignat

2016-04-19 9:35 GMT+01:00 Greg KH <greg@kroah.com>:
> On Tue, Apr 19, 2016 at 10:06:43AM +0200, Marcus Meissner wrote:
>> Hi,
>>
>> https://github.com/torvalds/linux/commit/b348d7dddb6c4fbfc810b7a0626e8ec9e29f7cbb
>>
>> commit b348d7dddb6c4fbfc810b7a0626e8ec9e29f7cbb
>> Author: Ignat Korchagin <ignat.korchagin@gmail.com>
>> Date:   Thu Mar 17 18:00:29 2016 +0000
>>
>>     USB: usbip: fix potential out-of-bounds write
>>
>>     Fix potential out-of-bounds write to urb->transfer_buffer
>>     usbip handles network communication directly in the kernel. When receiving a
>>     packet from its peer, usbip code parses headers according to protocol. As
>>     part of this parsing urb->actual_length is filled. Since the input for
>>     urb->actual_length comes from the network, it should be treated as untrusted.
>>     Any entity controlling the network may put any value in the input and the
>>     preallocated urb->transfer_buffer may not be large enough to hold the data.
>>     Thus, the malicious entity is able to write arbitrary data to kernel memory.
>>
>>     Signed-off-by: Ignat Korchagin <ignat.korchagin@gmail.com>
>>     Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>>
>> diff --git a/drivers/usb/usbip/usbip_common.c b/drivers/usb/usbip/usbip_common.c
>> index facaaf0..e40da77 100644
>> --- a/drivers/usb/usbip/usbip_common.c
>> +++ b/drivers/usb/usbip/usbip_common.c
>> @@ -741,6 +741,17 @@ int usbip_recv_xbuff(struct usbip_device *ud, struct urb *urb)
>>         if (!(size > 0))
>>                 return 0;
>>
>> +       if (size > urb->transfer_buffer_length) {
>> +               /* should not happen, probably malicious packet */
>> +               if (ud->side == USBIP_STUB) {
>> +                       usbip_event_add(ud, SDEV_EVENT_ERROR_TCP);
>> +                       return 0;
>> +               } else {
>> +                       usbip_event_add(ud, VDEV_EVENT_ERROR_TCP);
>> +                       return -EPIPE;
>> +               }
>> +       }
>> +
>>         ret = usbip_recv(ud->tcp_socket, urb->transfer_buffer, size);
>>         if (ret != size) {
>>                 dev_err(&urb->dev->dev, "recv xbuf, %d\n", ret);
>>
>> Our USB developer confirms:
>> https://bugzilla.suse.com/show_bug.cgi?id=975945
>> |The vulnerability is true. If an attacker can get a malicious package
>> |into the connection the kernel will accept all of the data in that
>> |package whether it fits into the buffer or not.
>> |You can scribble about 1k into RAM, albeit at an unpredictable location.
>
> I think Ignat already asked for a CVE for this through some other
> channel, and was going to announce it in some manner.
>
> Ignat, did you do that?
>
> thanks,
>
> greg k-h
