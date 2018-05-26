X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2516" "Saturday" "26" "May" "2018" "06:53:09" "-0700" "Bryan Pendleton" "bpendleton.derby@gmail.com" "<CANi-yg-yDVpTxvDEuRLefXW8fWRem=QKRzZY0DEb36KAxOVpkA@mail.gmail.com>" "53" "Re: [oss-security] [ANNOUNCE] CVE-2018-1313: Apache Derby externally-controlled input vulnerability" nil nil nil "5" "2018052613:53:09" "[oss-security] [ANNOUNCE] CVE-2018-1313: Apache Derby externally-controlled input vulnerability" (number mark "U       bpendleton.d May 26   53/2516  " thread-indent "\"Re: [oss-security] [ANNOUNCE] CVE-2018-1313: Apache Derby externally-controlled input vulnerability\"\n") "<20180521145731.60826823@redhat.com>" ("<CANi-yg-6VPUhWvAHHEkQYByYT4HPBcpTgqb+d5WsGJBVHKrm1Q@mail.gmail.com>" "<20180514145244.64c73b08@redhat.com>" "<CANi-yg8cdZzBMZRv_siCMwt8gfLWrtPvyO_vGNgGvzcAC-QngA@mail.gmail.com>" "<20180521145731.60826823@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24146 invoked by uid 550); 26 May 2018 16:42:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3500 invoked from network); 26 May 2018 13:53:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=WH3HFZHSAfNm8/+PjErzSii6flE9mNZQ+OOz/WY+3Ao=;
        b=TP2iQXgw8LzQC4Hm4W+7fR1qTOJC0sm5biDP+zQxd0grjGd6JX0TMVhr83P5n3gPyE
         tx1Ic9hhJWbQRYJO/wjHnfc7m79V9b4xhyKPPUuVBmhh8dANHf0q1+8IrWB0M32XMYwY
         NrJ9tKUv4Fs9U/PvpvLW1SClK4aBNZNllCgqha2hysFZ0Ga/u2vbiFj64ui0tblIqd95
         L0sn2WUzZCZOmySSnA9TdeK0JGae55CqtmtcPeRTqCmqvx4j+6FhcA6jOsuat1FrmUpI
         mEWwDNIGachZleoJjsUegWuumps3mjFP08bB6Dr6B5TXUacTQY47ePOZtHh4ddyKgHFd
         xA1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=WH3HFZHSAfNm8/+PjErzSii6flE9mNZQ+OOz/WY+3Ao=;
        b=hy93YU4qKzKGyB8AslSZZEjcJBJ1cg+RmZP6LIWlim6EKdSkFn7BWh0Q4y5kRAgh+d
         feGh0S3W1yS/peJamPPhYg1IOrnRiu5eETR3KphBfbcuQNX6m/5Y1/X6ByWdiVv9ONzC
         Wh9YNlpduGtpy5aDCXqtas/at2xqX9NG7L4Jyy2MJDyZIzr2tdA4ojhOUXB/S9fGWH35
         Qub92IRlAOXoS1EI6YEpNUpVwN3dfkUq+h1rgljNawq1x/6aKLjOL2lHxNB280StVgPT
         n0trMG2/SglG3dPSeZuRV5V5YPI5qJTXkjsNO8k6xmnEeUSrr/SaP8pW4GUSWpfFKOj9
         4QcA==
X-Gm-Message-State: ALKqPwdAasvrYVsWDYDOjDMfkesimH1UbXpLKGUnl3cTspTpctlOC0nb
	gyHjlWDTo526sU07iSD0CH+SaA93JcQmkJDqda4=
X-Google-Smtp-Source: ADUXVKJxYoefsB590eV3Awo3zllMxGLREGlv4geOTD8+klOT2vEFCSIAidg4yUM8yZauGIRtjvV9/q+mBs2b4lhfpOM=
X-Received: by 2002:a1f:3197:: with SMTP id x145-v6mr3828930vkx.3.1527342789543;
 Sat, 26 May 2018 06:53:09 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180521145731.60826823@redhat.com>
References: <CANi-yg-6VPUhWvAHHEkQYByYT4HPBcpTgqb+d5WsGJBVHKrm1Q@mail.gmail.com>
 <20180514145244.64c73b08@redhat.com> <CANi-yg8cdZzBMZRv_siCMwt8gfLWrtPvyO_vGNgGvzcAC-QngA@mail.gmail.com>
 <20180521145731.60826823@redhat.com>
From: Bryan Pendleton <bpendleton.derby@gmail.com>
Date: Sat, 26 May 2018 06:53:09 -0700
Message-ID: <CANi-yg-yDVpTxvDEuRLefXW8fWRem=QKRzZY0DEb36KAxOVpkA@mail.gmail.com>
To: Tomas Hoger <thoger@redhat.com>
Cc: oss-security@lists.openwall.com, security <security@apache.org>, 
	gregory draperi <gregory.draperi@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] [ANNOUNCE] CVE-2018-1313: Apache Derby
 externally-controlled input vulnerability

Yes, Tomas, that is a very good point; I agree completely.

Thank you for the follow-ups and discussion!

bryan

On Mon, May 21, 2018 at 5:57 AM, Tomas Hoger <thoger@redhat.com> wrote:
> On Mon, 14 May 2018 21:04:58 -0700 Bryan Pendleton wrote:
>
>> Hi Tomas, thank you for getting in touch, and for the excellent questions.
>>
>> I think the problem here is primarily my lack of skill in clearly writing
>> disclosure information about vulnerabilities, so let me try to do my best
>> to clarify.
>>
>> Indeed, allowing the Derby server to open an untrusted database is
>> of serious concern, and, due to Derby's rich extensibility features, can
>> allow the execution of arbitrary *Java* code directly in Derby. So this
>> is an important concern.
>>
>> And yes, you are correct that the selection of 10.3.1.4 as the first
>> affected release is because the default security policy dates from
>> that release, and you are also correct that the "ping with arguments"
>> pre-dates that. We certainly hope that nobody is running such 11-year-old
>> software any more; if possible, we would really like them to upgrade.
>>
>> Regarding the question of which fix is the "actual security fix," I find
>> this a challenging question. In order to exploit the vulnerability, the
>> ping command must allow the specially crafted request packet, *and*
>> the security policy must allow the access to the untrusted database.
>> Closing *either* of those holes is enough to prevent that exploit; we chose
>> to close *both* of them with the 10.14.2.0 release.
>>
>> The Derby development team's primary recommendation is that
>> any Derby Network Server deployed in a production environment
>> should use an explicitly-developed custom security policy, and not
>> depend on the default policy; still, the new security policy that is
>> installed by default by 10.14.2.0 is considerably more secure than
>> the policy that was previously in place.
>>
>> I hope this helps. If I have misunderstood the intent of any of your
>> questions, please let me know.
>
> Thank you for your detailed reply.  It addresses my questions.
>
> FWIW, in this case, the change of the ping command handling is what I'd
> view as the security fix.  The change of the default security policy
> would not be sufficient in deployments where custom security policy is
> used and that policy is less restrictive than the new default policy
> (even though it's maybe more restrictive than the old default).
>
> --
> Tomas Hoger / Red Hat Product Security
