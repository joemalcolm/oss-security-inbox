X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["917" "Tuesday" "11" "October" "2016" "09:03:36" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFkJ5Dc6JwjZsb9EbhbYKDJe4vwXmpe9usRHepZp7GQF5MQ@mail.gmail.com>" "22" "[oss-security] Re: CVE Request - multiple ghostscript -dSAFER sandbox problems" "^Date:" nil nil "10" "2016101116:03:36" "[oss-security] Re: CVE Request - multiple ghostscript -dSAFER sandbox problems" (number mark "        taviso@googl Oct 11   22/917   " thread-indent "\"[oss-security] Re: CVE Request - multiple ghostscript -dSAFER sandbox problems\"\n") "<CAJ_zFkL0F5i-=14bDxN3_PDAvNqQT8PMNGmmij60DLuaHj+meA@mail.gmail.com>" ("<CAJ_zFk+f8Q-4UQt0gv6X_v_gSb12UVVVQ1knJBdZjpA=MQ-S5w@mail.gmail.com>" "<CAJ_zFkL0F5i-=14bDxN3_PDAvNqQT8PMNGmmij60DLuaHj+meA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11751 invoked by uid 550); 11 Oct 2016 16:04:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11733 invoked from network); 11 Oct 2016 16:04:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=HVsP69i68LC3PXrxqhgnCIIBUPve+J7krn11YFh1gYE=;
        b=hM7Dlzkgdu2xT4XvnCnmHSAqjIxirewklKO+Oqdpqc/H425Xq1McU4YAdGZ+f6nkZu
         HKYsYwvAGd6SESruZx/Ew+h5m36E/NJsVLElu8w+tVPbqNgRvW5Mhx2Mq2X495wtj6Uy
         BviPsL3eMHd2gPNHzMSBW6iux/jOpHKV6BU37U1dtvd9RMSdqisUEMPBS8A98qqUTH+Z
         OoKQCGVtcFfxNPH1Z2UbX1FTChFPtA7Mg5HmO6S0z6IQ24qEuEj1QSqGOZo46W73njrO
         8qq/MsEdzKvmj2bwes4fbCaXCWNco/LKj+3UOKe7CT5Im+O/j2Xxgif451WtfBtJtAx6
         59SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=HVsP69i68LC3PXrxqhgnCIIBUPve+J7krn11YFh1gYE=;
        b=aw6IgA2npCPq1HuPskwsLGcGXN/bVKXmtcbr3JSilCf3bqfjGJDAtgLZu16bp6NVtJ
         LHGguG8VrQMhugtKG5j/c0yLRPzUinNVlW6GYPkjZr9pT3xP+xJBzqpGEvPkkHJOLWeN
         E00GU4goETIdj60OFG0wq72q/AvKX8luitawHQdOIoi+wJRcEZjfrlIeog80F8MyRDOI
         jW2am1ER6HG1rmI9UNE2/1ZTbSr9rE+GJLJ1vU4lO3P6qUQ5msUlMrXWSBfQiIG/cSqJ
         OHbMxU6wLtHvSs8duKK34YRlGTJgVZF5WssAPnrHCkTv1iZunAIUfhmc/VyqyTstLnb3
         M5lw==
X-Gm-Message-State: AA6/9RnY4AiM0JTwOTypLvxnM2r8Q+v0K4z84OTs0PZV7RAYKK+QMUKl2B/C56FCZ4JKIP+who6eygcDH/05ZPfK
X-Received: by 10.31.234.194 with SMTP id i185mr3767321vkh.127.1476201837266;
 Tue, 11 Oct 2016 09:03:57 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAJ_zFkL0F5i-=14bDxN3_PDAvNqQT8PMNGmmij60DLuaHj+meA@mail.gmail.com>
References: <CAJ_zFk+f8Q-4UQt0gv6X_v_gSb12UVVVQ1knJBdZjpA=MQ-S5w@mail.gmail.com>
 <CAJ_zFkL0F5i-=14bDxN3_PDAvNqQT8PMNGmmij60DLuaHj+meA@mail.gmail.com>
Message-ID: <CAJ_zFkJ5Dc6JwjZsb9EbhbYKDJe4vwXmpe9usRHepZp7GQF5MQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Tue, 11 Oct 2016 09:03:36 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request - multiple ghostscript -dSAFER sandbox problems
To: oss-security@lists.openwall.com

On Wed, Oct 5, 2016 at 1:12 PM, Tavis Ormandy <taviso@google.com> wrote:
> On Wed, Oct 5, 2016 at 9:13 AM, Tavis Ormandy <taviso@google.com> wrote:
>> bug: type confusion in .initialize_dsc_parser allows remote code execution
>> id: http://bugs.ghostscript.com/show_bug.cgi?id=697190
>> repro: http://bugs.ghostscript.com/show_bug.cgi?id=697190#c0
>> patch: http://git.ghostscript.com/?p=ghostpdl.git;h=875a0095f37626a721c7ff57d606a0f95af03913
>
> It was pointed out to me that my testcase doesn't work on the 9.0x
> versions, because it doesn't allow encoding 64-bit integers, but it's
> still exploitable.
>

Here is a different type confusion bug, originally I thought it was
just a NULL dereference, but after seeing the patch it does look
exploitable.

patch: http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=f5c7555c303
repro: clear 16#41414141 .sethalftone5

Please assign a CVE for this one.

Tavis.
