X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1523" "Wednesday" "22" "April" "2015" "19:14:33" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFkJoX8v=J2CgqHqZM_tCf18qO1aFzSBPsZZpD8o1L4y+tA@mail.gmail.com>" "37" "Re: [oss-security] USBCreator D-Bus service" nil nil nil "4" "2015042302:14:33" "[oss-security] USBCreator D-Bus service" (number mark "        taviso@googl Apr 22   37/1523  " thread-indent "\"Re: [oss-security] USBCreator D-Bus service\"\n") "<20150423005433.GA31697@openwall.com>" ("<CAJ_zFk+imjcZZTm8KwOZia0McwHZ2iQawpXoijRpejM9jt3PGA@mail.gmail.com>" "<20150423000423.GA31439@openwall.com>" "<CAJ_zFkJP2uMp6mGROdWC3pE9-V6FMbykvK1V=1d3p+nYgvPJMg@mail.gmail.com>" "<20150423005433.GA31697@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19463 invoked by uid 550); 23 Apr 2015 02:15:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18418 invoked from network); 23 Apr 2015 02:15:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-type;
        bh=ws3lFnmK9E0IJHl+zZyhGjE8BrcHP7byE4H26wqYuOU=;
        b=BjRr57yGE/Xq91cwn0gV/z3EG5993sBMJg7hqkVevRe8fwrncrno0R6nCRAdXgNypX
         D2y1Xsimw0jwjhYw14/6w/BwM2kNlRpQpdBjoWHFLWxnDp1UTlYvhLmCi7kO3OHeXSbd
         geeWQBDHSpAH+tqqVWzp8orwKNaOZqXEx0MTeitpmd0rhBBGNS/SVokmO3/c0OY6vYsp
         1DgpeuPxxEo4Zoi5o7fBhjb1DUtTS/a5kIVa0DI1meZ4rjs1mKq8+zOy6MH87QhdAl6R
         mps2yNjrIYDWoKSjzEpShSgPkiDw1wGRixG5PCosES+MA0VqeClt8H7I5PD7bsCvmxg+
         zeKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-type;
        bh=ws3lFnmK9E0IJHl+zZyhGjE8BrcHP7byE4H26wqYuOU=;
        b=GXNgTzaIV+1uwoXrx9S1IvulBkalw37CARtjbZ5NQoGZZKPR2QRKpZmKmJTJytUvmG
         fnpYD1AIR9QhfkZsRZJMnz4rJivpI0VHAVQZjVhzW5TQivDxL/TBNKrFvnjpK7YT7wKd
         ycJmJWQPMvNSwpoVomQOZJAyvUTZSq6xmuu0PlIp2s4KdkPbA89wyE/YId3fyIGh6eWU
         0Eu31f5DYYm7FxvFoiuCpxsLMfiiKuQo2WaC82X7ClYYWomibvLBt+lqUx5oaWRw5l7u
         n/z68ZrmKaJQglnX/paAXJZVS/Okn+FgMWiR5qhq4qA3vK2g/tkM0PwPuX24qcIOhVBn
         G0Ew==
X-Gm-Message-State: ALoCoQnijPma3wnAFmZFinIrIJ6HXPKOndjxCcAAKJVd8LPnwbrvShEOjhq/E+/UJF1P3eLOQr3R
X-Received: by 10.55.33.94 with SMTP id h91mr898324qkh.69.1429755294396; Wed,
 22 Apr 2015 19:14:54 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150423005433.GA31697@openwall.com>
References: <CAJ_zFk+imjcZZTm8KwOZia0McwHZ2iQawpXoijRpejM9jt3PGA@mail.gmail.com>
 <20150423000423.GA31439@openwall.com> <CAJ_zFkJP2uMp6mGROdWC3pE9-V6FMbykvK1V=1d3p+nYgvPJMg@mail.gmail.com>
 <20150423005433.GA31697@openwall.com>
Message-ID: <CAJ_zFkJoX8v=J2CgqHqZM_tCf18qO1aFzSBPsZZpD8o1L4y+tA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Wed, 22 Apr 2015 19:14:33 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] USBCreator D-Bus service
To: oss-security@lists.openwall.com

On Wed, Apr 22, 2015 at 5:54 PM, Solar Designer <solar@openwall.com> wrote:
> On Wed, Apr 22, 2015 at 05:09:48PM -0700, Tavis Ormandy wrote:
>> On Wed, Apr 22, 2015 at 5:04 PM, Solar Designer <solar@openwall.com> wrote:
>> > On Wed, Apr 22, 2015 at 04:50:08PM -0700, Tavis Ormandy wrote:
>> >> [as-per previous discussion on the vendors list, skipping closed
>> >> discussion of low-severity issue]
>> >
>> > What "vendors list" do you mean?  Do you possibly mean "vendor's" rather
>> > than "vendors" - that is, upstream's list?  (I do not recall seeing this
>> > on the linux-distros list.)
>>
>> Actually, I was referring to the discussion on linux-distros about
>> apport and abrt.
>>
>> > Either way, it sounds weird to keep a low severity issue private.  Low
>> > severity usually means not needing an embargo in the first place.  But I
>> > guess it was the vendor's preference?
>>
>> Sure, I didn't mention it for the benefit of anyone actually working
>> on linux security. I just wanted to be clear this was expected, as
>> unfortunately my posts tend to get undesired attention.
>
> Oh, I hope I see what you meant now.  You're saying you're skipping
> making this low severity issue closed, and you are instead posting it to
> oss-security right away.

Ah, right, this is what I meant.

> I initially read it almost the other way
> around, that there's also some other low severity issue that you're not
> mentioning on oss-security yet.
>
> Alexander

I see, I could have phrased it better! Apologies!

Tavis.
