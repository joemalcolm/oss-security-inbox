Received: (qmail 5912 invoked by uid 550); 7 Aug 2024 12:39:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26240 invoked from network); 6 Aug 2024 22:23:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722983005; x=1723587805; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=sYRlRKvw4Hys6IU3181XXQeKjSiiNke53SOHSpDXDSM=;
        b=bApmXkeSbUOiLEixwAKpzt5WiOMTnQVNa7F5Iz8HemVlDqX5RDrsiEedfM3VDETdoC
         A5gMZcGOORm45FLsy3q+ONdZsRnOPcXGpKFf6pFfGqx11gql82L4GOqUrk4bu63SNefR
         rAytk0kr/0A+xzZ/ntUUjj3TvNeArJol0ZYNtznDtwkEkJ89Ob8QSOh3KTKDjhjmgEJI
         1XuEELItQk9D+8cMM88sxIJ2ViAXNP0R01UGS9gr+/+napYZZXrWl3lbqARvmuiWw3f4
         mCMSE1nL6GN9Kcaf/CvYSy6yowCzKoH7vMbHqxLScMDqZw764n0AiG8s1gxfhVZ1vBkk
         TliA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722983005; x=1723587805;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sYRlRKvw4Hys6IU3181XXQeKjSiiNke53SOHSpDXDSM=;
        b=mN/+gBsRMpLdTL5vekmwqvqoILWn+5/L7iqON2caa597ohlWn1z6jZ9Zr5phAyOSLg
         wG2N/sfNoz0ew0NukJ/a1EY+0SvwlfExyAF/1O+Zho64shQCwwRjOWKnFF3E2peruVL2
         qzAFZ0BUxZ8Lwr89U+PlYl37psgFGu5R5eRZu4mrRrIXTP26T+2nBl6GZ/Uwj+n8gf65
         fxlnFr3c9uqz9ZJYf4xjQRlWpPfi+jnaC26sQjTdbJ7jPBHRc0YfL57gdb8B4qqG4vlt
         fhs3l8il+mlRInv/5WSvnLDVv/P+5WedOoU9RJg56OxR/VvLsD1+iSfpV587L2qImkMB
         1Q8w==
X-Gm-Message-State: AOJu0Yx5L89cWpuYEe0oKGw6zrESTats/pc6IiG8R752tn6+YRBv6sqL
	5zVsZG4Y0ru+ZFOySUw9KxkfF50btmpltRE56bz2WIKWNGtbN2Z6tMvLpw==
X-Google-Smtp-Source: AGHT+IHE1iewtBdpzhyYN8ID++aYumd+a14yPR34zYkAg7TEZ7vKQcg6PaueG9kstG1KIPMWn7+3tg==
X-Received: by 2002:a05:6820:1503:b0:5d5:b49c:b6ed with SMTP id 006d021491bc7-5d671459f57mr16228832eaf.5.1722983005383;
        Tue, 06 Aug 2024 15:23:25 -0700 (PDT)
Message-ID: <1dfc8a2f-cc26-4e05-b41d-0398c925226d@gmail.com>
Date: Tue, 6 Aug 2024 17:23:24 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com>
 <20240806171232.6bd08942@zbook> <ZrJQpDftQthxOT2g@symphytum.spacehopper.org>
Content-Language: en-US
From: Bob Friesenhahn <bobjfriesenhahn@gmail.com>
In-Reply-To: <ZrJQpDftQthxOT2g@symphytum.spacehopper.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] feedback requested regarding deprecation of TLS
 1.0/1.1

On 8/6/24 11:34, Stuart Henderson wrote:

> On 2024/08/06 17:12, Marco Moock wrote:
>> As a user, this is acceptable for me, but I know there are still
>> machines outside that only offer such old versions.
>> Some of them can't be upgraded easily because the vendor doesn't
>> provide any new versions.
> BTW, mainstream web browsers disabled pre-1.2 TLS by default around 2020.
FYI, I have old networking equipment for which there is no way to update 
the firmware, but the hardware is still in use.  I find it necessary to 
enable pre-1.2 TLS support in the browser in order to administer the 
equipment.

It seems important to consider the use cases before disabling old protocols.

Bob

