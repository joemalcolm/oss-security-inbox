Received: (qmail 15589 invoked by uid 550); 4 Oct 2023 01:11:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15570 invoked from network); 4 Oct 2023 01:11:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=citrix.com; s=google; t=1696381860; x=1696986660; darn=lists.openwall.com;
        h=in-reply-to:autocrypt:references:cc:to:content-language:subject
         :from:user-agent:mime-version:date:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=mxlnDTiqEVwy7gahVSvMHyERgGTKefvbhpk30l/pX54=;
        b=IYJ+jb8iiD6Ti+fVe7a/5K6Br5GBpk46WLDMOwmGjtQUxNI1weXQVtBz1SU3mPcZnn
         J4earD3CecTbjX+qv4hNcWSJF3fNphEUSuZSrEOiDPlfCLVYIZ8JIqu9cdKLELcvhKrs
         vTIcr7p9lCeZsuzwS7jcbGNt1bgJPcrwEhDPQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696381860; x=1696986660;
        h=in-reply-to:autocrypt:references:cc:to:content-language:subject
         :from:user-agent:mime-version:date:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mxlnDTiqEVwy7gahVSvMHyERgGTKefvbhpk30l/pX54=;
        b=TlaV4qcMpmqzPes5Gs50PVlkYXLiPM2/KWYOaHzga411YpPwRu3IGf+JYup9lE6qJV
         F1ve5WkzZftMDgsO9rHLB4MW6+9jIpjKW+WyDX2tX4RfIj3UnHNBD9afsKaAhjqijp00
         Nk05gvYIsfqO0ZZKptcGmWNuIiUx8VpUp4olnz/bSGbSAL/zEdp2R95BXw4sZ6N/+o65
         hoAwcO3QLBdxTBAhsvxiFY/m6yoXjiLvQlSkHn0VeNiRAxfH9g4HrGWQOybOyIW0uT28
         ZV8rmWJ+f7+ZMS6+/3NTefKGhnTnv05JH+AcsIdeAl4cjcKsk5muJUyj+SLJoNwLkfWr
         ka7A==
X-Gm-Message-State: AOJu0YzOWML28d3m+TcBeEn0onYVqueeXLEIq0ZyhhzKKi31xzDGRiM1
	xLToIV6rOAvlOmh6AnSGOwVTSg==
X-Google-Smtp-Source: AGHT+IFC9CRKLlDgTSuE1zSIJcm3olqxEH/0wEkiB6UNQDKNCo3z77QtKhU/tU4VfpnC5u1vUWbGLw==
X-Received: by 2002:adf:fec4:0:b0:31f:f9fb:d5bd with SMTP id q4-20020adffec4000000b0031ff9fbd5bdmr815075wrs.68.1696381860456;
        Tue, 03 Oct 2023 18:11:00 -0700 (PDT)
Content-Type: multipart/alternative;
 boundary="------------d1K35FGwLhN0PWhbI8H6tXug"
Message-ID: <4b386d20-6b24-427b-ac3f-2098cf402329@citrix.com>
Date: Wed, 4 Oct 2023 02:10:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Andrew Cooper <andrew.cooper3@citrix.com>
Content-Language: en-GB
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com,
 "Xen. org security team" <security-team-members@xen.org>
References: <E1qko5Z-0003cF-KD@xenbits.xenproject.org>
 <20230925163652.GA6750@openwall.com>
 <70e568d7-9e09-a1a9-030f-40473447a619@citrix.com>
 <20230925182834.GA8247@openwall.com>
 <3241bf87-b01b-4b65-e972-f0cede9e1855@citrix.com>
 <20230926160943.GA12790@openwall.com>
 <3df9034c-6fab-141c-ad69-ce00df0b81f9@citrix.com>
 <20231003205825.GA24992@openwall.com>
Autocrypt: addr=andrew.cooper3@citrix.com; keydata=
 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
 6+ahAA==
In-Reply-To: <20231003205825.GA24992@openwall.com>
Subject: Re: [oss-security] Xen Security Advisory 439 v1 (CVE-2023-20588) -
 x86/AMD: Divide speculative information leak

--------------d1K35FGwLhN0PWhbI8H6tXug
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 03/10/2023 9:58 pm, Solar Designer wrote:
> However, this may be another reason to actually look into whether the
> remainder also leaked, and whether the byte-sized form prevents that
> leak despite of it not touching the architectural register where the
> remainder would be stored by a preceding larger DIV.  I expect that
> we're fine here - it's the divider unit's internal register and not the
> architectural register that should matter - but worth making sure.  It
> could also theoretically be e.g. some buffer registers in the middle,
> where the byte-sized form wouldn't overwrite the full contents.

I've spent a while trying to reason about this...  I'm not sure I'm any
the wiser, but here goes.

In order for values to be forwarded to dependent operations, the
register file entries allocated to the answer(s) of the DIV must have
been marked as ready.  (i.e. it's not sufficient for it to "just" be
left on the output of the divider because there won't be a special path
sideways to other execute units.)

Furthermore in this case, a real answer from the divider must have
written back, as we're concerned here about the last DIV to have
completed, and not some other stale content which happened to live in
the register file.  (The Gather Data Sampling vulnerability from the
same deadline is an example of a vector register being marked as good
before it has been completely overwritten, hence the leaking of stale
content.)

There are two sources of #DE.  A divide by 0, or result out of range.

A sane implementation of a hardware divider isn't going to multiply the
numerator and denominator to evaluate result out of range, when it can
just look for a carry/overflow on the final iteration.  On the other
hand, checking for 0 has to be done first because the result of the
operation is nonsensical otherwise.  Indeed, this is exactly how the
8086 did it[1].

So the practical results of the divider are either a failure at the
start (which is div0) or a result at the end (which is either success,
or out-of-range).

Viewed from this perspective, it's perhaps easy to see why the div0 case
passes the prior result (i.e. nothing mutated the buffer), whereas all
other cases have put a result (correct or otherwise) into buffer before
signalling a completion of the instruction.

Either way, it's just speculation for now, and we all know how dangerous
that can be...

~Andrew

[1]
https://www.righto.com/2023/04/reverse-engineering-8086-divide-microcode.html
--------------d1K35FGwLhN0PWhbI8H6tXug--
