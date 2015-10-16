X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1406" "Friday" "16" "October" "2015" "19:46:17" "+0200" "=?UTF-8?B?U2FsdmEgUGVpcsOz?=" "speiro@ai2.upv.es" "<CAJpd-bGP4k0sxUUvZGnKKTcfVYYaTZOOMpugZabTWjDqPz9EMg@mail.gmail.com>" "38" "Re: [oss-security] CVE Request: Linux Kernel heap corruption on debug_read_tlb" nil nil nil "10" "2015101617:46:17" "[oss-security] CVE Request: Linux Kernel heap corruption on debug_read_tlb" (number mark "        speiro@ai2.u Oct 16   38/1406  " thread-indent "\"Re: [oss-security] CVE Request: Linux Kernel heap corruption on debug_read_tlb\"\n") "<5620C265.3020703@redhat.com>" ("<CAJpd-bHmTaQ37Tykmfu7HAJrfu1JuW7wgFR32u1MWy0BjcTv6Q@mail.gmail.com>" "<20151015135348.GA8128@kroah.com>" "<5620C265.3020703@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28499 invoked by uid 550); 16 Oct 2015 17:46:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28469 invoked from network); 16 Oct 2015 17:46:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:reply-to:sender:in-reply-to:references:from:date
         :message-id:subject:to:content-type:content-transfer-encoding;
        bh=LP5x134AR/hetGkRll5IvJwC83rE+UtoCd6HvK+etEI=;
        b=C8PQa3mEoxDB3puiriQnQyWmCS3w1nYbnEZDvjcPWEqvJcKQ2tqYUXAJEfOX/F7bNe
         doK1gPdUmd+Z2fGM/9AC8bOgu/EJcVTGTiDfelnOrEEfL0vVF93Ppq9gtQDFkvSPeSiC
         sOYRISkwQaCxnWQ3jQFuJxwzVBj0pjtT92pAi98TWMLILTDdfQU2ZlrUvGOVp1EThMIL
         cKLC96KApwRS4Sb5oVa2uigC7ST03kV2hPwbz35nhjxUPIdWYrJz05Mc8kFHaNrBwCSq
         kJhh/OSyCr/0KDlUE+57m2gjKmx1cMcwS/0Zbf39vg8pInEIuuj3/hma9veQEqP5cZbi
         3deQ==
X-Received: by 10.180.186.100 with SMTP id fj4mr101338wic.14.1445017597137;
 Fri, 16 Oct 2015 10:46:37 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <5620C265.3020703@redhat.com>
References: <CAJpd-bHmTaQ37Tykmfu7HAJrfu1JuW7wgFR32u1MWy0BjcTv6Q@mail.gmail.com>
 <20151015135348.GA8128@kroah.com> <5620C265.3020703@redhat.com>
X-Google-Sender-Auth: rwsVexMNOz6Bmkduv9thcIMK2YY
Message-ID: <CAJpd-bGP4k0sxUUvZGnKKTcfVYYaTZOOMpugZabTWjDqPz9EMg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 16 Oct 2015 19:46:17 +0200
From: =?UTF-8?B?U2FsdmEgUGVpcsOz?= <speiro@ai2.upv.es>
Reply-To: oss-security@lists.openwall.com
Sender: saoret.one@gmail.com
Subject: Re: [oss-security] CVE Request: Linux Kernel heap corruption on debug_read_tlb
To: oss-security@lists.openwall.com

On 10/16/15, Florian Weimer <fweimer@redhat.com> wrote:
> On 10/15/2015 03:53 PM, Greg KH wrote:
>> On Thu, Oct 15, 2015 at 10:30:04AM +0200, Salva Peir=C3=B3 wrote:
>>> Hello,
>>>
>>> Is there a CVE for this? If not, could one be assigned, please?
>>>
>>>      https://patchwork.kernel.org/patch/6853351/
>>>      commit e203db293863fa15b4b1917d4398fb5bd63c4e88
>>>      iommu/omap: Fix debug_read_tlb() to use seq_printf()
>>>
>>>      The debug_read_tlb() uses the sprintf() functions directly on the
>>> buffer
>>>      allocated by buf =3D kmalloc(count), without taking into account t=
he
>>> size
>>>      of the buffer, with the consequence corrupting the heap, depending
>>> on
>>>      the count requested by the user.
>>>
>>>      The patch fixes the issue replacing sprintf() by seq_printf().
>>
>> For a root-only-readable file?  Why is a CVE needed?
>
> Fedora and downstreams do not system-level access to the root user by
> default, as a result of the custom Secure Boot patches.  This does not
> matter for pure denial-of-service bugs of course, but this bug looks
> like something that might allow code execution.
>
> Florian
>

The value that corrupts the SLUB allocator freelist pointer is known and
predictable. In principle, it should be possible to mmap() that pointer
to a user controlled page, so the SLUB allocator ends up managing a
user-controlled memory memory block.
--
salva
