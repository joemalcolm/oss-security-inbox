Received: (qmail 9484 invoked by uid 550); 14 Jan 2026 04:58:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20354 invoked from network); 14 Jan 2026 03:54:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768362889; x=1768967689; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=j1iGMmnuNlWWTtG1PbvpfVhr9bmlg1Bk1OcAbf+EqsI=;
        b=gtsuNSc+LheceK4Rv3KYiAqK0YM8WimLbocyp6OjHdl60fRU1y/7lgF5C1Gy4EvGGl
         C9C/R3qyCQRyr6fwQFhhjN6pxjc1kB2RYxKlX4Y8ZNYovuaeCcDIDLlIl6CDfW6tS/xA
         s8b3ccWNbcek3xh+rl8O4yvb8/QJqMFRUfrhlgWef+KILDXXhyfuFVMYlM7zsLb0LHEL
         5AxzEmV97Yy2h6dbmO6ORnBOHamDZM/JKrESv0LH/alt2zPyv4DkxPiIuvsslbojKPvw
         pggY98cvz/ijXY6ZaClBCdpHm3wCrs31i1sXMww0AWtANEY/EiLDKGxTX2i/pwiAO/aH
         4yAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768362889; x=1768967689;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j1iGMmnuNlWWTtG1PbvpfVhr9bmlg1Bk1OcAbf+EqsI=;
        b=nsUmPfCOzNvT7KvkaAP9MWdKWVy86j3e/uBr9LEWqkaD4ZGAirYOVaUvF5ISyEPAdg
         VuAR3SAWfI4Y1VDBYuoSxLfNuAO4i78o99yfCjI3FPPRxGvKZt8Jr5z/7VcwLrYZaSgj
         +yOEeE5dxgNdZysI3a3wD8KxBBN67g/KtQffwQb7jPE6fBFx1FVxF5u5xZhrywB5+oVp
         UR4bDItVXTDsY4ufujrv84nNpKLZsQ3i39ujJQoyZRAgQfRlxmRlZBCrRSL1i5e2q2qZ
         7QRNK1VlEgXR2saRj5tMjNJy8LtxeASuOZFy3FotNmz43xLeZV3iq2qZ24UCvfRGfsDL
         5EDQ==
X-Gm-Message-State: AOJu0YwlPsb26PYkV7ZjCxC6/S6LjgRi1ozmjGPSfGRFSN41KBPUWbOP
	EHeDJYwtfNwYwbl+HdCEGetTcFt6/wMM4uzxhM1sdzdRh4w6XSV8wkVUoSVdkzsv
X-Gm-Gg: AY/fxX7qcAsx/gXw0UAgLc/DOBlv6K2Hg6VPmhre6qAnrBtOlu4Ub0IFgNHorbw3SYs
	6n/tM2ygxFyOYcYtqf/2CUKXstlmhPEshJXYdal63/F1slkYnpKVEoqe74Z+x3Koh7y09rdT/eP
	PKqh0Scz6r7474FBe/mTZcx2O6U/0IAS9OYfx/UlOMVBw2xjR9NoHckY9teuRh8CyrMUJlqdLKt
	Q7i3GB2rB0aRGAXBbqA1ArtvXjaNgklVi7+DhhH2NgvrDREoMcaBPSSvrNY8X+XEitLW51nwaV2
	3jDPNDn+TAf1n5LewwvAS6I6RvRtnKY8R6Kt4RC0G8Dixwr2DbMsbIrl3PE/Ax6H8pQGqJ3qSq7
	/E96LNLHMXpYgYm0oFjLI45w0pp+Rpnc18NSsvvq8ml36oGojjmS1JhfBGiYjyLn2vf+va9INQO
	ADAhzm6WI=
X-Received: by 2002:a05:6808:1a1c:b0:459:b40c:8a3d with SMTP id 5614622812f47-45c714c2887mr654261b6e.32.1768362888919;
        Tue, 13 Jan 2026 19:54:48 -0800 (PST)
Message-ID: <1ad23a34-402f-4ac7-8425-1def37154d1b@gmail.com>
Date: Tue, 13 Jan 2026 21:54:43 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <f6825a3e-06ba-4672-afc1-171c7ae48d9d@oracle.com>
 <56e7f252-59a4-447c-b8ee-29e647c6bc3b@gmail.com>
 <20260112142559.GA974242@joooj.vinc17.net>
 <6c34559b-d38a-49d3-8917-8ea3d235f77c@gmail.com>
 <20260113123402.GD279805@cventin.lip.ens-lyon.fr>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <20260113123402.GD279805@cventin.lip.ens-lyon.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Null Pointer Dereference in HarfBuzz

On 1/13/26 06:34, Vincent Lefevre wrote:
> On 2026-01-12 23:33:37 -0600, Jacob Bachmeyer wrote:
>> The issue reported here is a write to address zero causing SIGSEGV.  I doubt
>> that compilers can optimize placement new to avoid writing through the given
>> pointer without introducing undefined behavior in correct programs, since
>> the contents of allocated-but-not-initialized memory are undefined.
> Perhaps in the case of HarfBuzz. But this is not necessarily the case
> everywhere. Consider the following code:
>
> ------------------------------------------------------------
> #include <stdio.h>
> #include <stdlib.h>
>
> __attribute__((noipa)) // imagine it in a separate TU
> int ptest (int *p)
> {
>    return p != 0;
> }
>
> int main (void)
> {
>    int *p = malloc (99999999999);
>    int r = ptest (p);
>    p[0] = 12345;
>    free (p);
>    printf ("%d\n", r);
>    return 0;
> }
> ------------------------------------------------------------
>
> On my machine, with GCC and optimizations (e.g. -O), the output is 0
> while such a value could be regarded as impossible by the program
> Due to optimizations, one cannot rely on a crash if the memory could
> not be allocated. So a more complex program would continue with
> inconsistent information.

I am unsure about that:  GCC may have been able to elide the write 
because it could prove that the value would never be read, since p is 
free()d immediately after the write.  That is different from library 
code that returns a newly-constructed object.


-- Jacob


