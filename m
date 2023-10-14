Received: (qmail 11925 invoked by uid 550); 14 Oct 2023 20:52:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11902 invoked from network); 14 Oct 2023 20:52:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697316731; x=1697921531; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=G6VqWPvHZMyiNbjmMV/JV0Z+YGrpe1Wx8K/gnKRwe7E=;
        b=byIZJ3r38SY4DkBOkf69m3E5EqEE4xMSX9KWVFHAcoQfOhDM7s7tRScmfKg1nr46L5
         f6tITw3j18M3tfBvuFQ1aoOJS7GuDWc+Y203Ur2gbLz9somrzxM9yIRUWbSKZOHcJ3uo
         xPaO3pYKfQp2jFlSJmwIqzy/Eh3CmIwSXQxorc3P45+5HvOVlJYrmaY6daEXSqvP/BB1
         zYaI8/YHjNJP7tZtJM2mKCh8lgxumAZMZzJQIl+VRS6qxLWs9bOVMaQ8N8VsLZsKWesW
         iLorJe04bU4kIwzxTFH7W3Y76JQxpZb0uyB6UuMcmeaPe07V6cwt9Db2MH4tNCyD2mHY
         0Mkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697316731; x=1697921531;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=G6VqWPvHZMyiNbjmMV/JV0Z+YGrpe1Wx8K/gnKRwe7E=;
        b=NXBGMYjet0ira5RgylnputNNvbUryhH5s5YIIcXQBjsg0SVopWZHq7YKp+9+8yU+R0
         eJyOncIljyVUL0PPYhcTsLORWesvKmljJDSiwMDKrhX+3q+k+UW6wQzmOjw5hc6oaVms
         WTjOiiu8jrqxnEub3wvWFZAZ/rUcnQsqOAE3ataKKxLV83Dv5FZOKr9SlPI61rZvbH46
         eKpYlw60VtYVHQCiXyAW+IIzB/231Qs6au8kIlEse0BetwF8WgZ7s9yZVrVq31sdcvvc
         lgQ2kfjvlaMKO+TgNIvk6FUS+kzuGzi1pZlFoS39hwd2b0u0IkumNHKzkKXMiq4iDXGo
         s1qA==
X-Gm-Message-State: AOJu0YzzVZ3hNXhk+8Jl7t6s7E7blxjsXKlO7OToMV9l/LV/bTGfRwJC
	4eWVtj1pLJWTUL3jJxjamWjBJ3bO+3ZQnA==
X-Google-Smtp-Source: AGHT+IE3A8yYdn9p112/nmBJH0+7ZOIDpbP/A0b1QHvE04gHmipnAP8gbL+rrLN0/qltAi9mRlz6Fg==
X-Received: by 2002:a25:949:0:b0:d9a:4f26:68bb with SMTP id u9-20020a250949000000b00d9a4f2668bbmr13871280ybm.6.1697316730921;
        Sat, 14 Oct 2023 13:52:10 -0700 (PDT)
Message-ID: <5492404f-bfed-d812-85b5-a871d46e1a79@gmail.com>
Date: Sun, 15 Oct 2023 07:52:07 +1100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
To: oss-security@lists.openwall.com
References: <56c8798b-0ad7-652b-d034-90229b6768f7@gmail.com>
 <ZSrK1GqJsL8oD7y+@itl-email>
Content-Language: en-US
From: Matthew Fernandez <matthew.fernandez@gmail.com>
In-Reply-To: <ZSrK1GqJsL8oD7y+@itl-email>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] sandboxing,of upstream programs by distros



On 10/15/23 04:07, Demi Marie Obenour wrote:
> 
> Which software is this?  Are there plans to at least fix the known
> memory safety problems?  If not, I think it would be best to disable the
> known-vulnerable features by default.  If the entire software package is
> vulnerable, I recommend deprecating it and recommending that downstream
> users migrate to a more secure alternative.

I deliberately did not name it to avoid getting into a discussion like 
this. The short answer is that we’re doing our best but the history of 
the project includes 10+ year old bugs that no one has had the time or 
resources to address. “fix all the bugs” simply is not a strategy that 
survives contact with the real world.

> You have to be willing to break compatibility to at least some degree.
> If you try to support everything, you wind up with something like Qubes
> OS’s “convert to trusted image”, which creates and destroys an entire
> virtual machine for every operation.  Even then, you will still break
> a (hypothetical) plugin that accesses the Internet, because that VM
> should not have network access.
> 
> What I would do is compile a list of system calls that are reasonable to
> make after startup.  Once all plugins have been loaded and all
> configuration files have been read, no plugin should be opening files or
> making network connections.  If it does, that plugin is broken and needs
> to be fixed.  You can have these system calls fail rather than killing
> the entire process, but you cannot try to support arbitrary plugins.
> That said, I expect most existing plugins will work fine with
> sandboxing.

Sure, but you’re answering a different question than the one I asked.
