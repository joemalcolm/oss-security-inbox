X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1700" "Wednesday" "17" "June" "2015" "01:09:26" "-0500" "=?UTF-8?B?RmVybmFuZG8gTXXDsW96?=" "fernando@null-life.com" "<CAEr-gPHOxSadiPW+crbpJUD5qq=W_t6u+0yekVc026Dxg4eEpw@mail.gmail.com>" "46" "Re: [oss-security] CVE-2015-0848 - Heap overflow on libwmf0.2-7" nil nil nil "6" "2015061706:09:26" "[oss-security] CVE-2015-0848 - Heap overflow on libwmf0.2-7" (number mark "        fernando@nul Jun 17   46/1700  " thread-indent "\"Re: [oss-security] CVE-2015-0848 - Heap overflow on libwmf0.2-7\"\n") "<20150603131043.558df5e8@redhat.com>" ("<CAEr-gPFc1eriF6FA4vHq2quDsLr6L2ZPEL6yPDjNazR84iNkCw@mail.gmail.com>" "<20150603131043.558df5e8@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9823 invoked by uid 550); 17 Jun 2015 06:09:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9803 invoked from network); 17 Jun 2015 06:09:38 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-type:content-transfer-encoding;
        bh=WUct6bJc0dmkg1hI+xIhfb1VWCHuDizc8LIuBxKtVCo=;
        b=fb2EDNL87CM4tjTq4sDSIbTQAc6mxzl9CCYJgNia6q2DIykUyVoBS4+gdPOGf2Rksc
         AUafYpWPlqNiHrwcNXIku8Kz1C257XN0WBL0XmrY5jpIQuz4EDUXXiq0NqPzoPWR+VYz
         S35sjL/HMVUzO54j6/Png8MfFssFjYk2KqhmDaf6ctAMZSob9T8eE5+jd/fYSjiuIB8c
         wBgGDTeUtsyAtPXtKUlAlDFfrsAP0YJ9SdS+HXw/uDDiGyjkIPPFrSbXTB8Wnw6TjeDu
         hssvi0UU06OeTLEP+x26B4CUCwKBLcSG41gBhRYIO584LXvgfAczDWO8IobzGGLjEkgU
         ym+w==
X-Gm-Message-State: ALoCoQkGHZjohPLb1FdqbW5TxXa7mmUr1x7wKhiM9cVRWO+CbD9u/1JU13o38t5DGumdrQXJTQyQ
MIME-Version: 1.0
X-Received: by 10.50.136.134 with SMTP id qa6mr32431821igb.26.1434521366373;
 Tue, 16 Jun 2015 23:09:26 -0700 (PDT)
X-Originating-IP: [186.29.86.239]
In-Reply-To: <20150603131043.558df5e8@redhat.com>
References: <CAEr-gPFc1eriF6FA4vHq2quDsLr6L2ZPEL6yPDjNazR84iNkCw@mail.gmail.com>
	<20150603131043.558df5e8@redhat.com>
Message-ID: <CAEr-gPHOxSadiPW+crbpJUD5qq=W_t6u+0yekVc026Dxg4eEpw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 17 Jun 2015 01:09:26 -0500
From: =?UTF-8?Q?Fernando_Mu=C3=B1oz?= <fernando@null-life.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2015-0848 - Heap overflow on libwmf0.2-7
To: oss-security@lists.openwall.com, scorneli@redhat.com

Stefan,

There are two additionals invalid read issues inside libwmf, I
submitted both to Debian a while ago, I don't know if they are worth
to fix on a security update. One of them has a patch by me (not
heavily tested though)

invalid read on meta_pen_create player/meta.h (+ patch)
https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D784205

wmf2gd/wmf2eps invalid read
https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D784192

Thanks.


On Wed, Jun 3, 2015 at 6:10 AM, Stefan Cornelius <scorneli@redhat.com> wrot=
e:
> On Mon, 1 Jun 2015 03:06:57 -0500
> Fernando Mu=C3=B1oz <fernando@null-life.com> wrote:
>
>> libwmf is affected by a heap overflow on the function that decodes
>> BMP images.
>>
>> WMF files may contain both vector graphics and bitmap components. With
>> the attached WMF file, the issue can be reproduced, an overflow
>> happens because image_size gets a value of 32, that space is used to
>> allocate data->image
>>
>
> There's another issue related to the RLE decoding. DecodeImage() does
> not check that the run-length "count" fits into the total size of the
> image, which can lead to a heap-based buffer overflow. I've not
> assigned a CVE ID to this (mainly because I'm not sure if this
> warrants a new CVE or should be bundled with CVE-2015-0848, so I leave
> that up to the CVE experts on the list).
>
> We have some possible fixes in our bug [1], but be cautious - these are
> not fully vetted yet. So far, however, they look fine to me.
>
> [1] https://bugzilla.redhat.com/show_bug.cgi?id=3D1227243
> --
> Stefan Cornelius / Red Hat Product Security
>
> Come talk to Red Hat Product Security at the Summit!
> Red Hat Summit 2015 - https://www.redhat.com/summit/
