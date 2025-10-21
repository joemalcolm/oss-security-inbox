Received: (qmail 28501 invoked by uid 550); 21 Oct 2025 14:49:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 27876 invoked from network); 21 Oct 2025 03:21:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761016888; x=1761621688; darn=lists.openwall.com;
        h=in-reply-to:from:content-language:references:to:subject:reply-to
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0Mk7yoJzjTkYZ8LOlhGiqhJrq2VrDaFpEnqAdWFFAL8=;
        b=gQjEahmUTuzVL/bdkLPnxYDcPE5JfbzCgMglNS9685D4JoNPx9V6PkUD+YSwH3GG0t
         5buTvTbKX958tBlGqy9JK8/OR18+c6CylvZydii+Wk0BbQtPEkRII5YXKlhq1ceYIqdD
         Jx7XaQ0yFbFXQ0SU5GcwlXsG69rsMYUD9rYoyXKEtB4eLvJeP4+pPcjWLeTcPqLK2Zdb
         6Np7hOziF3zjt4DrWdcaG441ERLOUgM6qui22db+9oYM1bS847uazT4kwpkRcbPunN8L
         630uTgz5MI9CYOjBYGn8u/IxL5WSFvtsw3fzDLeANKeB/XFN1uaITKPCTXBG7v7m4M8s
         HV0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761016888; x=1761621688;
        h=in-reply-to:from:content-language:references:to:subject:reply-to
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0Mk7yoJzjTkYZ8LOlhGiqhJrq2VrDaFpEnqAdWFFAL8=;
        b=H/EN4+XUAvF7tI4sY2jpr0CeYGO51/hR5vFt6a8Z5o+XJaqSbMIB5STOnYiHa0yDH8
         elz2nwkzL84GPPpzNC62PAq4cHlAXu4vstVIHRb3ryLrzm04bCbBzJnbB9aRW7MgZ0hs
         tV/PRTQFxBBSZQuyUUhKGVmsKkoXC6eEMQe4OWc+1s0BV0+uQbQMqV02KD6W47KZEUdf
         1xv689z7jVHFVrn9DGThzkY8Eta15SPU0UuULpBzKJmJJvIXPGkefLOpPY6QWYToylta
         75EgAq2esHO0nykYT2i6mxx2j5PU+KPXLmKQ+n0JqGi9CsjHeonSy0hMM0iJst+wf+qd
         74Eg==
X-Gm-Message-State: AOJu0YxblHNP3aedH9iD1qfHSc34/J1al5mC40WuFXy8/e1+dtkNrTqK
	Xnd2aZzE2+pUlMPfRhu8XqdtKxnLztquUx6eNlT1AMzPZ8MuM6iI5NKvEF0XEj2j
X-Gm-Gg: ASbGncvakcRfAJs3csw7MCyfiz+72gzLmf/3vGX8T4eIlF6nI83h6243X/xakP+S4tY
	iI4VIxuO06+UCvodxJAAhBFqiTYEq8h2n8TW4+GW9ijSoR9rAB897AK6Df1dJy45AyAFXh1ihz4
	WdM6da6/ZpyuWwjq5875tvfWH8CXyRxNPX40u1JxCTaG+UB5vh1LeZ6gj38PuRc0eXuvR1NS8+A
	Qc6XtQlDDq0P6xVNSAd9Cav4YVHJiiD4JnhaR49W1y4982abEtAgGVFdwJdJ0uUtf9hjYK1ktpU
	Jr2uWgrOM9v0pTm2ygMxrLI1Avgt+nljG33lKRfIKT5m8fVRBJPmx1fJildT03ZNHVEpLgjdMWf
	GUUp9lU0xmO/cxNvZJQJ08Gy5QrALPqGn6IUQGovVHUeQ1Vdlh4fWOBH7Xs4n2x3b6RzqYgJs1s
	bgkSVPyCY=
X-Google-Smtp-Source: AGHT+IGWT96fXwVU2s/c/TRW+h7ugz2UJ9xWwIUlAre7bA4R+Rq+mVcjpeEnueXulaq5bP/moHD+bQ==
X-Received: by 2002:a05:6830:6104:b0:7bd:293b:2deb with SMTP id 46e09a7af769-7c27b62a765mr8251202a34.8.1761016888132;
        Mon, 20 Oct 2025 20:21:28 -0700 (PDT)
Content-Type: multipart/alternative;
 boundary="------------XojAZkInJlv6sVDeb0lTD7Wg"
Message-ID: <df34c8da-9514-4f55-ae41-45e1a6bffe94@gmail.com>
Date: Mon, 20 Oct 2025 22:21:15 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, Billy Brumley <bbb@iki.fi>
References: <fd686bd9-d2a7-89f9-f438-7ed38e127591@iki.fi>
 <CAH8yC8nZDxYF1NyGjHn8yOADBioNwPB4WTjUZGPmbRTvPLq2tw@mail.gmail.com>
 <ME0P300MB0713AA2595680B38B28287AEEEEAA@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
 <CAFRnB2XECXsKDSuvBCeWHwC9apboBdvhYCEFrUo2TuonHs1yFw@mail.gmail.com>
 <CAF8qwaB=b0EDUTckx-ZHdAHkj-_kN9xPmfVFJP8XxCUq-W9Q5Q@mail.gmail.com>
 <a5948a82-c85b-443c-9adb-9d6985359828@gmail.com>
 <d74cbc65-644-aa18-d2a0-7eb34c4ff@iki.fi>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <d74cbc65-644-aa18-d2a0-7eb34c4ff@iki.fi>
Subject: Re: [oss-security] BoringSSL private key loading is not constant time

--------------XojAZkInJlv6sVDeb0lTD7Wg
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 10/18/25 02:47, Billy Brumley wrote:
> Howdy Folks,
>
> A lot of questions piled up directed at David Benjamin. I was 
> patiently waiting for on-list responses, but I'm not seeing any, so 
> I'll jump in.

There have been no on-list responses because the discussion has been 
driven off-list.

>> Applications could emit warnings when loading such keys
>
> They could certainly do that, Hanno. I know you're aware of this but 
> just for general knowledge, there's Vaudenay's seminal work on padding 
> oracle attacks
>
> https://en.wikipedia.org/wiki/Padding_oracle_attack
>
> Not that that maps directly here -- I'm just pointing out, even the 
> act of emitting a warning / error can be leaky, too and cause -- in 
> general -- security issues.

I have been informed that there are two major problems here:

    (1)  Invoking write(2) will greatly amplify the timing side channel.

    (2)  Many (most?) applications using BoringSSL run in environments
    where stderr is effectively (or even directly) sent to /dev/null.

> [...]
>
>> Does the file size of the private key file also leak this information?
>
> At first glance it might seem so, Jacob. But the ECPrivateKey OID 
> encoding format contains lots of optional fields, and you don't know 
> if those fields are present until you decode it :shrug:
>
> So when you see varying file sizes with these keys, it could be for 
> many different reasons, unfortunately.

The side channel is most likely to leak that the top octet of the 
private key is zero.  It does so by making the file *shorter*.

Do any of the optional fields contribute, in total, an odd length to the 
file?  If none of the optional fields are used, does the incorrect 
encoding still leak by reducing the minimal size of the private key file?

>> This appears to be a misunderstanding of the ECPrivateKey format
>
> No, David, there is no misunderstanding at all. We studied tons of 
> different formats and wrote about it in 2019 (but you know that, already)
>
> https://www.usenix.org/conference/usenixsecurity20/presentation/garcia
>
> We even discussed with the BoringSSL security team in 2019, and you 
> dismissed us. If you would've taken the time to read the paper and 
> understand our contribution to the security community, you'd know that.
>
>> The issue is that “randme.py” calls the Python hex() function on an
> integer
>
> No, David, rofl.
>
> ROFL.
>
> For those still reading, this would be like when you submit a PoC 
> exploit for an OOB write vulnerability, and you'd get a response like
>
> "The issue is in your harness, you're sending unexpected inputs"
>
> NO THAT'S NOT AN ISSUE OR BUG, IT'S THE WHOLE GOSH DARN EXPLOIT
>
> But ofc David knows it, he knows I'm encoding the keys deliberately 
> like that, he's just trolling me on-list, and spreading misinformation 
> in public in an attempt to wipe the egg from his face.
>
> Still waiting for the "sorry, we screwed up, we'll fix it" from 
> BoringSSL.
>
> David, mea culpa is free, you can stop digging the hole any time you want.

These personal attacks are the reason that most of the discussion for 
this issue has been driven from the list.

Please take a few steps back, look in a mirror, and ask yourself if 
these attacks have really been helpful.


-- Jacob

--------------XojAZkInJlv6sVDeb0lTD7Wg
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 10/18/25 02:47, Billy Brumley wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:d74cbc65-644-aa18-d2a0-7eb34c4ff@iki.fi">Howdy Folks,
      <br>
      <br>
      A lot of questions piled up directed at David Benjamin. I was
      patiently waiting for on-list responses, but I'm not seeing any,
      so I'll jump in. <br>
    </blockquote>
    <p>There have been no on-list responses because the discussion has
      been driven off-list.</p>
    <blockquote type="cite"
      cite="mid:d74cbc65-644-aa18-d2a0-7eb34c4ff@iki.fi">
      <blockquote type="cite">Applications could emit warnings when
        loading such keys
        <br>
      </blockquote>
      <br>
      They could certainly do that, Hanno. I know you're aware of this
      but just for general knowledge, there's Vaudenay's seminal work on
      padding oracle attacks
      <br>
      <br>
      <a class="moz-txt-link-freetext" href="https://en.wikipedia.org/wiki/Padding_oracle_attack">https://en.wikipedia.org/wiki/Padding_oracle_attack</a>
      <br>
      <br>
      Not that that maps directly here -- I'm just pointing out, even
      the act of emitting a warning / error can be leaky, too and cause
      -- in general -- security issues.<br>
    </blockquote>
    <p>I have been informed that there are two major problems here:</p>
    <blockquote>
      <p>(1)  Invoking write(2) will greatly amplify the timing side
        channel.</p>
      <p>(2)  Many (most?) applications using BoringSSL run in
        environments where stderr is effectively (or even directly) sent
        to /dev/null.</p>
    </blockquote>
    <blockquote type="cite"
      cite="mid:d74cbc65-644-aa18-d2a0-7eb34c4ff@iki.fi">[...]<br>
      <br>
      <blockquote type="cite">Does the file size of the private key file
        also leak this information?
        <br>
      </blockquote>
      <br>
      At first glance it might seem so, Jacob. But the ECPrivateKey OID
      encoding format contains lots of optional fields, and you don't
      know if those fields are present until you decode it :shrug:
      <br>
      <br>
      So when you see varying file sizes with these keys, it could be
      for many different reasons, unfortunately. <br>
    </blockquote>
    <p>The side channel is most likely to leak that the top octet of the
      private key is zero.  It does so by making the file *shorter*.</p>
    <p>Do any of the optional fields contribute, in total, an odd length
      to the file?  If none of the optional fields are used, does the
      incorrect encoding still leak by reducing the minimal size of the
      private key file?</p>
    <blockquote type="cite"
      cite="mid:d74cbc65-644-aa18-d2a0-7eb34c4ff@iki.fi">
      <blockquote type="cite">This appears to be a misunderstanding of
        the ECPrivateKey format
        <br>
      </blockquote>
      <br>
      No, David, there is no misunderstanding at all. We studied tons of
      different formats and wrote about it in 2019 (but you know that,
      already)
      <br>
      <br>
<a class="moz-txt-link-freetext" href="https://www.usenix.org/conference/usenixsecurity20/presentation/garcia">https://www.usenix.org/conference/usenixsecurity20/presentation/garcia</a>
      <br>
      <br>
      We even discussed with the BoringSSL security team in 2019, and
      you dismissed us. If you would've taken the time to read the paper
      and understand our contribution to the security community, you'd
      know that.
      <br>
      <br>
      <blockquote type="cite">The issue is that “randme.py” calls the
        Python hex() function on an
        <br>
      </blockquote>
      integer
      <br>
      <br>
      No, David, rofl.
      <br>
      <br>
      ROFL.
      <br>
      <br>
      For those still reading, this would be like when you submit a PoC
      exploit for an OOB write vulnerability, and you'd get a response
      like
      <br>
      <br>
      "The issue is in your harness, you're sending unexpected inputs"
      <br>
      <br>
      NO THAT'S NOT AN ISSUE OR BUG, IT'S THE WHOLE GOSH DARN EXPLOIT
      <br>
      <br>
      But ofc David knows it, he knows I'm encoding the keys
      deliberately like that, he's just trolling me on-list, and
      spreading misinformation in public in an attempt to wipe the egg
      from his face.
      <br>
      <br>
      Still waiting for the "sorry, we screwed up, we'll fix it" from
      BoringSSL.
      <br>
      <br>
      David, mea culpa is free, you can stop digging the hole any time
      you want.<br>
    </blockquote>
    <p>These personal attacks are the reason that most of the discussion
      for this issue has been driven from the list.</p>
    <p>Please take a few steps back, look in a mirror, and ask yourself
      if these attacks have really been helpful.</p>
    <p><br>
    </p>
    <p>-- Jacob</p>
  </body>
</html>

--------------XojAZkInJlv6sVDeb0lTD7Wg--
