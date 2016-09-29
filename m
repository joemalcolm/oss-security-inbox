X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1564" "Friday" "30" "September" "2016" "00:14:04" "+1000" "Vitaly Nikolenko" "vnik5287@gmail.com" "<CACXSKC8AZevw7LatqKf8RdVWR9srfkEQ49RQABHbQeK38Ono+w@mail.gmail.com>" "48" "Re: [oss-security] CVE request - Linux kernel through 4.6.2 allows escalade privileges via IP6T_SO_SET_REPLACE compat setsockopt call" "^Cc:" nil nil "9" "2016092914:14:04" "[oss-security] CVE request - Linux kernel through 4.6.2 allows escalade privileges via IP6T_SO_SET_REPLACE compat setsockopt call" (number mark "        vnik5287@gma Sep 30   48/1564  " thread-indent "\"Re: [oss-security] CVE request - Linux kernel through 4.6.2 allows escalade privileges via IP6T_SO_SET_REPLACE compat setsockopt call\"\n") "<20160929134526.GA24474@kroah.com>" ("<F73DA7D7DA7D984B81025139D7CADECC0120DCFC@EX02.corp.qihoo.net>" "<20160929134526.GA24474@kroah.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3530 invoked by uid 550); 29 Sep 2016 14:16:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21665 invoked from network); 29 Sep 2016 14:14:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=mhMEfcXgp+7MjRisznTe4/6fd88HpE3KLVkNG8SA2dE=;
        b=hpKmDEmj8SpxfXQ9OQMZeJPfc9ji2PAaDnFyC2Sq9tdE/OFlD6AgPVdKmAgUoTP5Lw
         gX6hu6SpzVO3IXzpu3YcbECpQFR82+Mh6dqiJ/5FBmaHC51650GcGN6di1nDtu9w6gy0
         e4A3vj9C8FAkTRpGPlr1hM/XoSbxSKvkyffrmVEhAF6qUJa1DjeYN2yFI8guKKKaXFw8
         a2ndM45f/h4oCfNOoYojb5d1lPaw2hq0zEEk4zNtRSxg3nFWQzsUv9eGY8S774DdukvP
         n+QVCx3+CEWgRfkrPGaHsj7t/TNQAPQS9MET9kjg1H6RU5tS8P+XPQYXY+U1X/8lXHbo
         Elmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=mhMEfcXgp+7MjRisznTe4/6fd88HpE3KLVkNG8SA2dE=;
        b=EbuSw6okh6Y6i6klkrZp5MX3gggFzDX22pOr1+IXriWANzoYPAdYyin/miulHUZKGf
         Xezzr7q7tOnEWhnlj7+zpl1L0jV1C1sd5j1S4091KR8crv8dhZPcKTCXg/XU4dKzG3rS
         R8AVQ1H6dzS2hy75WzQJo/sIstBW98oxEhF6NyZ68SZ1jFmJCeeLoiT/bhDAVM8gKp2J
         JhcR2GTYS1yqWrX8a9d5yoWhqnE778PUkczII6u+Wwj6oscgPyw8esb1/GVwmiTVvsfu
         mz6ODyfqXAdyZoXGEKnV59ajiv32HezgKJRUP/AS9xMHNB55NeYmcSwBs1/WQUsQXuB8
         jQJQ==
X-Gm-Message-State: AA6/9RlbrsfViFrEb54XSZ9ZbBsgaIllsZY1p5Eum3OP42/VHaOThj7qbt44jyDKuxurrkPkPiOsFWqWu9kEfg==
X-Received: by 10.37.110.136 with SMTP id j130mr1019468ybc.139.1475158444584;
 Thu, 29 Sep 2016 07:14:04 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160929134526.GA24474@kroah.com>
References: <F73DA7D7DA7D984B81025139D7CADECC0120DCFC@EX02.corp.qihoo.net> <20160929134526.GA24474@kroah.com>
Message-ID: <CACXSKC8AZevw7LatqKf8RdVWR9srfkEQ49RQABHbQeK38Ono+w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: "cve-assign@mitre.org" <cve-assign@mitre.org>
Date: Fri, 30 Sep 2016 00:14:04 +1000
From: Vitaly Nikolenko <vnik5287@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request - Linux kernel through 4.6.2 allows
 escalade privileges via IP6T_SO_SET_REPLACE compat setsockopt call
To: oss-security@lists.openwall.com

Wasn't this already covered by CVE-2016-4997? There's a public exploit

https://www.exploit-db.com/exploits/40049/

I'm assuming for IPv6 this would be exactly the same except for
changing the setsockopt optname from IPT_SO_SET_REPLACE to
IP6T_SO_SET_REPLACE. The code path for IPv6 looks almost identical
unless I'm missing something?

Commit ce683e5f9d045e5d67d1312a42b359cb2ab2a13c included fixes for
ARP, IP and IPv6 and my assumption was that CVE-2016-4997 covered all
of them.

--
Vitaly

On 29 September 2016 at 23:45, Greg KH <greg@kroah.com> wrote:
> On Thu, Sep 29, 2016 at 07:43:35AM +0000, =E5=BC=A0=E8=B0=A6 wrote:
>> Hi there,
>>
>> I found a memory corruption vulnerabiliry in Linux kernel through 4.6.2,=
 and I
>> have a working exploit to escalade privileges which requires the ip6_tab=
les
>> module to be loaded, that it is properly blocked on all up-to-date versi=
ons.
>>
>> Due to the number of users running vulnerable code(not update to 4.7 or
>> higher), and that this exploit is only available to security researchers=
 and
>> kernel packagers upon request but that I don't want it to spread.
>>
>>
>>
>> I have reported this issue to Linux kernel official and they have alread=
y fixed
>> this.
>
> Note, this was fixed many months ago, in May of 2016, and went into the
> stable kernel updates in June, 2016.  Any distro that updated to the
> stable kernel updates received this fix then.
>
> Any distro that hasn't updated their kernel since then, well, you need
> to revaluate your trust of such a distro :)
>
> thanks,
>
> greg k-h
