X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2100" "Thursday" "14" "July" "2016" "12:26:42" "-0400" "Jessica Frazelle" "me@jessfraz.com" "<CAEk6tEy06LoWDWfCcBrWBPO7n0mLYajNU69dMVSg9JGQ6e5p-A@mail.gmail.com>" "69" "Re: [oss-security] Re: cve request: local DoS by overflowing kernel mount table using shared bind mount" nil nil nil "7" "2016071416:26:42" "[oss-security] Re: cve request: local DoS by overflowing kernel mount table using shared bind mount" (number mark "U       me@jessfraz. Jul 14   69/2100  " thread-indent "\"Re: [oss-security] Re: cve request: local DoS by overflowing kernel mount table using shared bind mount\"\n") "<1209678068.4908811.1468512902793.JavaMail.zimbra@redhat.com>" ("<1929364718.4484556.1468421564523.JavaMail.zimbra@redhat.com>" "<20160713165940.E24C88BCE32@smtpvmsrv1.mitre.org>" "<20160713224500.GD12156@kroah.com>" "<1209678068.4908811.1468512902793.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13881 invoked by uid 550); 15 Jul 2016 02:17:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7714 invoked from network); 14 Jul 2016 16:27:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jessfraz.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=BzosMZgJxLqEdFV8VkaQK9UGQ+mQ74HR58DBVE4ycoc=;
        b=U9ZfTqCgqquqT1MeXjGE/a1JZ9iOPgHPYuFi6qLmKfEQ8MGD+1UUZvs/+GEH2Zlruv
         SOdCxDPt2c5bXtiugMfv5HCaSLUu6FrsXO95zujYA5NZ0fLg1ODrTIbr6XaxOxOwDXur
         FJObNXD5QxIpqqkr9znt259tsNLuqsRKLRock=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=BzosMZgJxLqEdFV8VkaQK9UGQ+mQ74HR58DBVE4ycoc=;
        b=kbNhVij2FgEa3hKmH1TskCSOJrb3VIa/2MZ0FPY3uJ97/TAlv9f5pqA71+/qqOxmW+
         sW+n+Nr0isFrnFGooy/J78QuRSAefT42egKjbkA8y+vivrqPlrWi4CDyzYoJ4swHttVk
         QtzqQZtJ8WIj2LZjCMDp7PzfA647tak3RONk5ibATBW6cZ/oGLQwmLBXp38tDsiD9axc
         1v/ad5QmedpSH8sSyhaTsCKUi+9pdpJ4ggKQbxdsgL6I3gTAil++A7oKhfzh/K9pkt85
         EQWLS9yb/KzHgNMT3DNJOmb5RSWiMaBST1EVBm+6o82/fvBSGPPwkM8wxcm1sqGrHHQs
         el2Q==
X-Gm-Message-State: ALyK8tK6gxx533DjUYmnpFXcrzR5MseHP9ue8wCRwPPxdvhLEBHkGcg/BDUrZZTcgti1iFJ8B7/gVHFcHFjn5UdI
X-Received: by 10.36.34.3 with SMTP id o3mr28890238ito.50.1468513621856; Thu,
 14 Jul 2016 09:27:01 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1209678068.4908811.1468512902793.JavaMail.zimbra@redhat.com>
References: <1929364718.4484556.1468421564523.JavaMail.zimbra@redhat.com>
 <20160713165940.E24C88BCE32@smtpvmsrv1.mitre.org> <20160713224500.GD12156@kroah.com>
 <1209678068.4908811.1468512902793.JavaMail.zimbra@redhat.com>
From: Jessica Frazelle <me@jessfraz.com>
Date: Thu, 14 Jul 2016 12:26:42 -0400
Message-ID: <CAEk6tEy06LoWDWfCcBrWBPO7n0mLYajNU69dMVSg9JGQ6e5p-A@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Greg KH <greg@kroah.com>, cve-assign@mitre.org
Content-Type: text/plain; charset=UTF-8
Subject: Re: [oss-security] Re: cve request: local DoS by overflowing kernel
 mount table using shared bind mount

it's running systemd in a container... isn't it...

On Thu, Jul 14, 2016 at 12:18 PM, Jessica Frazelle <me@jessfraz.com> wrote:
> what is the use case for mounting /mnt:/mnt in a container?
>
> On Thu, Jul 14, 2016 at 12:15 PM, CAI Qian <caiqian@redhat.com> wrote:
>> Maybe this is a better reproducer using docker. It is exploitable even with
>> user namespace enabled.
>>
>> # docker run -it -v /mnt/:/mnt/:shared --cap-add=SYS_ADMIN rhel7 /bin/bash
>>
>> # cat /proc/self/uid_map
>>          0        995      65536
>>
>> # cat /proc/self/gid_map
>>          0        992      65536
>>
>> (insider container) # for i in `seq 1 20`; mount -o bind /mnt/1 /mnt/2; done
>>    CAI Qian
>>
>> ----- Original Message -----
>>> From: "Greg KH" <greg@kroah.com>
>>> To: oss-security@lists.openwall.com
>>> Cc: caiqian@redhat.com, cve-assign@mitre.org
>>> Sent: Wednesday, July 13, 2016 6:45:00 PM
>>> Subject: Re: [oss-security] Re: cve request: local DoS by overflowing kernel mount table using shared bind mount
>>>
>>> On Wed, Jul 13, 2016 at 12:59:40PM -0400, cve-assign@mitre.org wrote:
>>> > > It was reported that the mount table expands by a power-of-two
>>> > > with each bind mount command.
>>> >
>>> > > If the system is configured in the way that a non-root user
>>> > > allows bind mount even if with limit number of bind mount
>>> > > allowed, a non-root user could cause a local DoS by quickly
>>> > > overflow the mount table.
>>> >
>>> > > it will cause a deadlock for the whole system,
>>> >
>>> > >> form of unlimited memory consumption that is causing the problem
>>> >
>>> > Use CVE-2016-6213.
>>>
>>> A CVE for an "improperly configured system"?  Huh?  What distro has such
>>> a configuration set by default?  This isn't a kernel bug, so what is
>>> this CVE classified as being "against"?  It better not be against the
>>> Linux kernel...
>>>
>>> confused,
>>>
>>> greg k-h
>>>
>
>
>
> --
>
>
> Jessie Frazelle
> 4096R / D4C4 DD60 0D66 F65A 8EFC  511E 18F3 685C 0022 BFF3
> pgp.mit.edu



-- 


Jessie Frazelle
4096R / D4C4 DD60 0D66 F65A 8EFC  511E 18F3 685C 0022 BFF3
pgp.mit.edu
