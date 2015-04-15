X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1746" "Wednesday" "15" "April" "2015" "09:04:47" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFkL=xJagH5Fv+V0aZTHOKH8z1_HuQwV6nOVfExOV7fbi-Q@mail.gmail.com>" "45" "Re: [oss-security] Problems in automatic crash analysis frameworks" nil nil nil "4" "2015041516:04:47" "[oss-security] Problems in automatic crash analysis frameworks" (number mark "        taviso@googl Apr 15   45/1746  " thread-indent "\"Re: [oss-security] Problems in automatic crash analysis frameworks\"\n") "<552E828F.9020600@redhat.com>" ("<CAJ_zFkJw7hNxGp0PNmQbH0suVwfkgzbCsvs2Sv1OdxD+UBiraw@mail.gmail.com>" "<552E828F.9020600@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30149 invoked by uid 550); 15 Apr 2015 16:05:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30130 invoked from network); 15 Apr 2015 16:05:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-type;
        bh=OeCT9EeUfeHyjZaGjMTZjZCLtaEJ9zocpNk09ZazG5U=;
        b=ZGt4jvmEh20H2UTws/evvsOxnr168chzVIN3tuQiyszeR557/qkj3yPolijihw0f+m
         B4vppT/Uu0+xQUupXes/CZuguXLDK6tKVEJ0xW9540yIA8hbWyUMHQ5LcS78POTPa/Nb
         DumGpRGLkFRHcmfNx9jGhjOZzyiqLStk5Kx3ulTCVmzwXhnerqKinfe784xcFrsdbDue
         GkX2cvrWT+iy1SVmYWA0XRVS/4tGkRo5wmHoB447/IdzbeAph710LTlzxxQUVps+5xOT
         Biw0fPMlmS0K02e8vv/yDM2a53srxFdIDwvZmGWbEk68ASfKbI5k4kbNpZ28mM3rpvn0
         fo4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-type;
        bh=OeCT9EeUfeHyjZaGjMTZjZCLtaEJ9zocpNk09ZazG5U=;
        b=cmE1Q0n81gglh2ddB4McHRjAlgBeNCROiJ5xqNdViPGNtXcj8NP1o60wXjT7K9VU96
         +wqWXLf5VSghfsenb8TnvpIWmJQqdC3a87NB8NuvB7upHxrRJEzk7CDjk3kN7ZfhaFF4
         S/Z+j3bzI4qoRMF36H6+oJ0/PBBILpLq5rFjzHWiGgJdPc68yBacGbNAYPzJt53VxRGm
         n32NPgdX7kbmM1duv17jvVUW0Y0ICf7wF7E+lgfOlGBN0tOBpQqOiD54aWApjOEAvpQ7
         rSIGCwvYVK/2kayAFZfijXT8mD4NSY+cHj260Exdx17Wngt+ItmNidFYszsqWg7LLZIM
         t0Pg==
X-Gm-Message-State: ALoCoQlvdsaJv8nI382T4nsPimFGz7+G09hut4gTzQ6tw3wZ6mQyo2R+H1OHflmK6bFLweqGXgE6
X-Received: by 10.55.21.139 with SMTP id 11mr53204173qkv.19.1429113907576;
 Wed, 15 Apr 2015 09:05:07 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <552E828F.9020600@redhat.com>
References: <CAJ_zFkJw7hNxGp0PNmQbH0suVwfkgzbCsvs2Sv1OdxD+UBiraw@mail.gmail.com>
 <552E828F.9020600@redhat.com>
Message-ID: <CAJ_zFkL=xJagH5Fv+V0aZTHOKH8z1_HuQwV6nOVfExOV7fbi-Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Wed, 15 Apr 2015 09:04:47 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Problems in automatic crash analysis frameworks
To: oss-security@lists.openwall.com

On Wed, Apr 15, 2015 at 8:23 AM, Florian Weimer <fweimer@redhat.com> wrote:
> On 04/14/2015 03:30 PM, Tavis Ormandy wrote:
>
>> This code trusts the /proc/pid/exe symlink, even though it is possible
>> to link it anywhere you want.
>>
>> https://github.com/abrt/abrt/blob/master/src/hooks/abrt-hook-ccpp.c#L368
>>
>>         sprintf(buf, "/proc/%lu/exe", (long)pid);
>>         int src_fd_binary = open(buf, O_RDONLY); /* might fail and
>> return -1, it's ok */
>
> Does opening /proc/PID/exe really perform symlink resolution?  Or does
> the kernel create temporary /proc/PID entries for non-executable file?
>
> This feature is supposedly disabled by default.  As far as I can see, it
> can disclose the program text of execute-only binaries to users, which
> has been treated as a vulnerability in the past.

Ack, I knew /proc/pid/exe was magic, but for some reason I thought
when it was marked deleted symlink resolution did work.

I tested it and I think you're correct, it's just the execute-only disclosure.

>
> Upstream has posted patches for some of the vulnerabilities:
>
>   <https://github.com/abrt/abrt/pull/950>
>   <https://github.com/abrt/libreport/pull/343>
>
> There's still some debate how to best address the creation of the
> user-owned directory.  My proposal is to change from root:root to
> user:abrt as late as possible.
>
> (The Hotspot crash dump copying is disabled in the sources, so no patch
> for that is planned right now.)
>
> We also need to move off the /var/tmp/abrt directory (the code for
> creating the directory looks racy), back to /var/spool/abrt.
>
> I have not looked at how directory creation is handled for the other
> crash handlers (say Python).
>
> --
> Florian Weimer / Red Hat Product Security
