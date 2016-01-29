X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1017" "Friday" "29" "January" "2016" "18:43:32" "-0300" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdSmJz5Waf2nL2pHYrRsw1OvmS7uny-_KZuXi4tFc5ROZQ@mail.gmail.com>" "39" "Re: [oss-security] Re: CVE request: out-of-bounds write with cpio 2.11" "^Date:" nil nil "1" "2016012921:43:32" "[oss-security] Re: CVE request: out-of-bounds write with cpio 2.11" (number mark "        gustavo.grie Jan 29   39/1017  " thread-indent "\"Re: [oss-security] Re: CVE request: out-of-bounds write with cpio 2.11\"\n") "<87twlwqfat.fsf@marcos.anarc.at>" ("<CACn5sdTx4m+mrn6i59Cz4iiAzpbxg=3Qrp6yHxyoaZp8YrS=ZA@mail.gmail.com>" "<87twlwqfat.fsf@marcos.anarc.at>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30692 invoked by uid 550); 29 Jan 2016 21:43:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30674 invoked from network); 29 Jan 2016 21:43:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=vbXxCzWu/bYC+JltsoCy10Eiyhmdbng1UD1hK6RxQv0=;
        b=mOT1VDvbIx9o7x/kl1/al5XHkNJwtHDUWkOla83gaFKenHqt1IeXp74INHvivmrvy+
         oM1sZOd29dUd0myP493afbg5KjQVkusCTi54M9YRdymZoyGZIIGM8t818LiPJv0uvhjV
         PqH7gLS9B8ZTJR6wf4Qwo50vPyPaiEijFM96p788rGpgPOUqKkT5fHK77qnShRmRvL9x
         K/F6nFAgAkLSitogFwQeQvoYwd9uyxS0UmqVoqh2bc2Muld3CNkUK5CVky8VmjjYiBuM
         A22ydasiVz64bYq7HjrGFPg5T3idmtVV4dmIqqI6AGcA0rVMVO6P09i7VmJ+4+JDYpM5
         oHlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-type;
        bh=vbXxCzWu/bYC+JltsoCy10Eiyhmdbng1UD1hK6RxQv0=;
        b=ZyBhYiH8ufrIms4n60hxXtRTpSd3WaTnuaEMSlTiI0eUNCibj76wZYnfoY7vHyz8+s
         ovZiAc0DXUk4zfp1flcFyvTC6bFIWBPWGsioBg+cmB6Tpp63xi7OQI2snd9qyJaFAH/X
         Rka4USFb8kxgGdU1PZCCti1UMv1ByNHU1l9dS0sEY3usKLBttsJL7zBLdyvZRJxelG4H
         8a0ghDCbcplm1X+fFc4HsfRR1fcxRIo6C879jibheqLO2As/prLKGWmQi9hxmBzu6/VK
         vcch356rC5ZdHJ6kJ0qOPf5y5BEm15YViXJrEfsovI44DIwY8P2Num+FW+k1ZZv9yQ1Y
         7yKQ==
X-Gm-Message-State: AG10YOSDs9lVVKggLLG/e5v/upvZzLEzZXckUUhRQcuaBK3llWIsWkEsvtAYKRGvD9Ck6x9qO6+Xk38JJkAP9A==
MIME-Version: 1.0
X-Received: by 10.25.161.144 with SMTP id k138mr4172765lfe.83.1454103812528;
 Fri, 29 Jan 2016 13:43:32 -0800 (PST)
In-Reply-To: <87twlwqfat.fsf@marcos.anarc.at>
References: <CACn5sdTx4m+mrn6i59Cz4iiAzpbxg=3Qrp6yHxyoaZp8YrS=ZA@mail.gmail.com>
	<87twlwqfat.fsf@marcos.anarc.at>
Message-ID: <CACn5sdSmJz5Waf2nL2pHYrRsw1OvmS7uny-_KZuXi4tFc5ROZQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a114028a6366597052a7fed97
Date: Fri, 29 Jan 2016 18:43:32 -0300
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE request: out-of-bounds write with cpio 2.11
To: oss-security@lists.openwall.com

--001a114028a6366597052a7fed97
Content-Type: text/plain; charset=UTF-8

2016-01-29 17:52 GMT-03:00 anarcat <anarcat@orangeseeds.org>:

> I can't actually reproduce this on Debian, which runs 2.11 all the way
> back to squeeze:
>
> (gdb) run -i < ../overflow.cpio
> Starting program: /bin/cpio -i < ../overflow.cpio
> [Thread debugging using libthread_db enabled]
> Using host libthread_db library
> "/lib/x86_64-linux-gnu/libthread_db.so.1".
> /bin/cpio: Malformed number0000000
> /bin/cpio: warning: skipped 8 bytes of junk
> /bin/cpio: Substituting `.' for empty member name
> /bin/cpio: . not created: newer or same age version exists
> /bin/cpio: premature end of file
> [Inferior 1 (process 191) exited with code 02]
>
> Did i miss something?
>

Yeap, you need to user valgrind to expose this issue:

$ valgrind cpio -i < ../overflow.cpio



>
> a.
> --
> The United States is a nation of laws:
> badly written and randomly enforced.
>                         - Frank Zappa
>
>

--001a114028a6366597052a7fed97--
