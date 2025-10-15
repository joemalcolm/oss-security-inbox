Received: (qmail 30650 invoked by uid 550); 15 Oct 2025 00:53:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20364 invoked from network); 15 Oct 2025 00:51:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760489474; x=1761094274; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=8pIPIC2dGsO6+II//MdR7bRmVSifs8P7DUsjmF4QNNE=;
        b=FLAQ+13j+ojFkoG9C2jK9u3smy6bgc0tecPtvfwCJGHvd6VVbPIdU+2WQ6d7IDq9EH
         Nh5BMrKidrPLz2NhlElHf8WqD2ioHx5sylP+F/yzr99ouW6lMVX1x2JrjNO8RVt+ubdY
         eyfxdLobr+RTZHwMKgcjHnIvhuphSBC68OKgapD94gE6mxfP6dKps8vvOs3waE+A8ZA+
         I1d4VFlEwRFgzFjdAw2kX1XTpA+G+czjzYbdUGfiVEVpe+g5RAj1rr4GyVYkqLMCsmsf
         ZIrjFqWcRvxATq2BQloj2HgbFvNrppOh9+BqCQFgjepaxkQIZ5AA64SpP3lZoP9gNIi3
         cf0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760489474; x=1761094274;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8pIPIC2dGsO6+II//MdR7bRmVSifs8P7DUsjmF4QNNE=;
        b=o8/B+zstscEYuBsHIX5DaFfJJp/ByJ7wZUtZpw/P9HRatT7gSs7NpQcCLcIa5bBdiw
         x1ItKyI+CcuGXRTtepuVGrz/wTx8HnjKyYmVkgWPbyOC37T4OoxAyFy1XUco+uYPRK3D
         ktHuUkcJuiq9pjB3XKYcx4yaXJQG0tmY2Z6+7vwSaF9fCNKB4rXNz+0c30XhAVLEBmu2
         +ud0wfmpCkI7nzH1Fe0ZXr2KL1Ht79oP91RK89Y8hq4gvVhpDIPf0HGGyJc6C3I9QJSJ
         hxik63cpDgoGuiGBENMVCvOsNBYOaSYUdVYCx8XRTuV8EtzPNj6pGt+mFhX8bK7TRwbi
         /y8w==
X-Gm-Message-State: AOJu0YyGf0b7SFsRUGPzgxTZ7OhU0goVbk4MKbjM2KBWNxuiLzn1o1o5
	ykIAJpby9eUGVN+6BNTwWW2isClXJJb0vOgJCoRpSbzu6d7qvINy2uSVycm7JdkYNuc=
X-Gm-Gg: ASbGncvFhQkXxtVGAIMUWJJEWO0U/rOtTZHlTelmBFIpZ53fkor4Mq/X+VmjR8qbfjp
	671V78L/HJQ9+WdNbb05vIqirq/fPI2L4cGzG2u3b7unxx9Uocl9CpHo3c6u7XmTlVLlnl3rxz2
	ZAkOc9dSCOQ3HmY1qVdm7O1KFkg5iLl/jzpbeUtXoc0VMcSXxcXjRCgPTgkBsQhi9VAzoNJgQve
	FC7TR6h5juVeD9Rf9HZS9GDWnFypi/n7n6Q9NDeY9FAHiBDB1P+2W1Dp8aBOUd/bbWrN3zON1qw
	syshzoBe8q8sZEfQB06aXmVVeFUvyE/1fK49FdIrQc872HFlfyv+MPID87ZVTuReQvvriiN7wIF
	RnmgkAW9Z4+S50sIEDRiIxL9294v89eCKBCMOZYr9N0zDH/yX
X-Google-Smtp-Source: AGHT+IFgYwtaI9xbg8hUT+Hs7OyT4ssW9dJ2c++BTmIQKeipZR/Ge8ighNnGzSU+j4wuKoW+4k/xeA==
X-Received: by 2002:a53:864c:0:b0:636:d520:32e4 with SMTP id 956f58d0204a3-63ccb95f9e3mr18164795d50.53.1760489474253;
        Tue, 14 Oct 2025 17:51:14 -0700 (PDT)
Message-ID: <a5948a82-c85b-443c-9adb-9d6985359828@gmail.com>
Date: Tue, 14 Oct 2025 19:51:06 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, David Benjamin <davidben@google.com>
References: <fd686bd9-d2a7-89f9-f438-7ed38e127591@iki.fi>
 <CAH8yC8nZDxYF1NyGjHn8yOADBioNwPB4WTjUZGPmbRTvPLq2tw@mail.gmail.com>
 <ME0P300MB0713AA2595680B38B28287AEEEEAA@ME0P300MB0713.AUSP300.PROD.OUTLOOK.COM>
 <CAFRnB2XECXsKDSuvBCeWHwC9apboBdvhYCEFrUo2TuonHs1yFw@mail.gmail.com>
 <CAF8qwaB=b0EDUTckx-ZHdAHkj-_kN9xPmfVFJP8XxCUq-W9Q5Q@mail.gmail.com>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <CAF8qwaB=b0EDUTckx-ZHdAHkj-_kN9xPmfVFJP8XxCUq-W9Q5Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] BoringSSL private key loading is not constant time

On 10/14/25 12:08, David Benjamin wrote:
> [...]
>
> With respect to the constant-time model, that import process indeed 
> leaks the byte length of the privateKey field, but this is actually 
> unavoidable. The encoding itself already leaked the length. The byte 
> strings themselves weren’t the same size and the constant-time model 
> assumes the trace of memory accesses (often visible to cache-timing 
> attacks) is leaked. That means merely constructing a buffer to pass 
> into the library leaks the length of the buffer.
>
> This means private key formats must have secret-independent lengths. 
> The privateKey field, by spec, achieves this, but these malformed, 
> truncated privateKey fields do not. If one passes a truncated 
> privateKey field to any decoder, leaking the byte length is 
> unavoidable. Rather, it is up to the encoder to follow the spec, which 
> will give a fixed-width, secret-independent byte length that can be 
> safely leaked.

Does the file size of the private key file also leak this information?

> The inputs in the test harness use this leaky, truncated encoding. One 
> can see this in how the test cases have different sizes. The issue is 
> that “randme.py” calls the Python hex() function on an integer, which 
> returns the minimal hex encoding. Something like theint.to_bytes(48, 
> "big").hex() would have constructed the correct, fixed-width private 
> key representation for P-384.
>
> Ideally, decoders would all reject these invalid inputs, so it would 
> be immediately apparent when encoders get this wrong, but the 
> environment of existing private keys makes doing so a compatibility risk.

Perhaps a warning that limited information about the private key has 
unavoidably been leaked and the key should be rotated should be emitted 
upon loading such an improperly-encoded key?  (The warning could include 
a URL for a page with a longer explanation of the issue.)


-- Jacob


