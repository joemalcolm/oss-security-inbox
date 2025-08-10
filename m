Received: (qmail 3971 invoked by uid 550); 10 Aug 2025 03:13:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11996 invoked from network); 10 Aug 2025 03:10:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754795440; x=1755400240; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=GKONsbkzmG77V2Z2k1a31djXGZvoe4v7n8P4qeUaW/s=;
        b=Gw4p0TcVmItKCRzbAWsdrFgxiwaOLoLVsAY9syiocm6YNirzMCJjDmOeFvbVpjlQh3
         Y7h+VKDW4Uh2dzJCbk6nMC771F1fu7BguUu+SSKXYzMCKxGcQX4MHFcuNMITi5GV9y3M
         Et7YE6LbBGMyJB7zHJe43wmlmPqLsXdimsPpfQTFrQ089uWVa3UcrhAFmMsO+wfopmkd
         CpUeYVrshbZ95G/3EqgozwYi9ZidEeQQZTMvnqON4f/Ds67kS9sTnzLfv3xzBoLgD4k5
         BLKh69+QRGdwzDuYvLNcEsE/kFvrUVeK1wjDtqtToGO5lf8VTE9q8diNzHgfXiamnpLX
         CUZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754795440; x=1755400240;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GKONsbkzmG77V2Z2k1a31djXGZvoe4v7n8P4qeUaW/s=;
        b=f7he+xEfLvPs0M9leLtDZar3sn3Edtr7+VGjz+yaHm4WqardFJUeRw4w+GZ2+nZU3A
         wE+FsrkmOhIITetrfynBDn6a4RUZYbqnmuQAPkfunXPAEbSFzbMMQoduB0brxfpv+XmJ
         2B7unJaT9n4+V0jwBQvZeXeQP2FPrmm2vBWwj0uSOQQObEbN2usA7BnbqF1aQeas0pb8
         af9x08r6LWV57i6Y672weePegKFW/9SdNolDyKAO2AF83PO9y6kKJTwYRTT70bHx085j
         3Ieqm0LksvSVZQraDJ0XW5O2ymxWpC5c9uLe1e6z7Lfnd+C0erl4UNP6rIlcCHXlfkWj
         Le+Q==
X-Gm-Message-State: AOJu0YzmpaYe/viNuWbwJpg6xkZQrwbE/l51U71SvTeXu37c2tZXr3Bk
	TZuYYayjJ5+eyfHOp4Rkad5ufoWj826xQwcXs4s3f/9Mzvg2qa6774ApyKUrRtxM
X-Gm-Gg: ASbGnctheNI8+8cpL3F0rFkG5KwFKNoI5zPj+Kwf7YUqMcSe5hs/pAaNmZJ8x3Ku/N5
	wS+fYgufXj67nOX8vonsGyDB0vNXL+4Co4pil7ALIN5ItutKO/EnUd9pEbS6v7tKVVoMVaz71MD
	kbp6ziIXySl/kh24YCDY3e7PPZm4N6GsjCjVkbD9XD4VrAdzjJLfk+nPPb3SE5p1kqqxbM31jev
	J68XFiyqGXfdgdSLW1YYnlL/FuMhw8oqCYM7zySewRDzbwkSJ0WHqYKOW9PN/qTWAu59WlL2Twr
	RXWvE33WL9AmVW1R64jkLqMumiolx3T+B3h2ZmGoxL7FZkqKDp2gf2ujKF35VMDW7WzRDtKt6Y4
	shJPHc8JueJSZuu74ZP8PtqFGVQW69Q==
X-Google-Smtp-Source: AGHT+IESwV+tYhUyosBJ4r24UBaCOW3Z7GSZU84tvpAXaf9tOaGEBGWP4GPKK10icADMJv/8mOALyA==
X-Received: by 2002:a05:6870:158f:b0:2c2:3eb4:e53 with SMTP id 586e51a60fabf-30c213983demr4335567fac.37.1754795439649;
        Sat, 09 Aug 2025 20:10:39 -0700 (PDT)
Message-ID: <a7169751-2b66-4123-b2b5-09e35623ff80@gmail.com>
Date: Sat, 9 Aug 2025 22:10:29 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, lunbun <lunbun021@gmail.com>
References: <CAMqWyhi=xW2sq2+Hb2aJ=ta-zfi_Zay6CztQ9mvDqgjbKr1HpQ@mail.gmail.com>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <CAMqWyhi=xW2sq2+Hb2aJ=ta-zfi_Zay6CztQ9mvDqgjbKr1HpQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] CVE-2025-55188: 7-Zip: Arbitrary file write on
 extraction, may lead to code execution

On 8/9/25 15:46, lunbun wrote:
> [...]
>
> ## Details
>
> 7-Zip before 25.01 does not always properly handle symbolic links during
> extraction. Prior to 25.01, it was possible for a maliciously-crafted 
> archive
> to create an unsafe symbolic link. 7-Zip follows symbolic links when
> extracting, so this leads to arbitrary file write.
>
> An attacker may leverage this arbitrary file write to achieve unauthorized
> access/code execution, such as by overwriting a user's SSH keys or 
> .bashrc file
> [1]. In one extraction, an attacker may attempt several times to 
> leverage this
> vulnerability to write to sensitive files.

How much does the attacker have to guess here?  Somehow I doubt that 
7-Zip resolves "~" in file names or symlink targets.  (I understand that 
the attacker can simply pack multiple symlinks into the archive.)

To target .bashrc or replace the SSH authorized_keys file, does the 
attacker need to know the user's login name, or is it possible to simply 
list relative symlink targets using .., ../.., ../../.., etc. and hope 
that the archive is being extracted somewhere below the user's home 
directory, as opposed to somewhere under /tmp?

Does a malicious archive produce suspicious output when listed with `7z 
l`?  Is this more of a concern for systems that automatically extract 
archives and incautious users or is this actually a general problem?


-- Jacob


