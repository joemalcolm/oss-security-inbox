Received: (qmail 1439 invoked by uid 550); 14 Oct 2023 07:40:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1397 invoked from network); 14 Oct 2023 07:40:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697269193; x=1697873993; darn=lists.openwall.com;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/T+mqY0YyCdsBnqkUGefb0Qt7ybMEE7XE6wXA9RF76c=;
        b=h+LThh806SnXgaC+/ryYK8oyUvxv9W75WelhrvKRTjrnX5QOkm5INWDuHxb1K3oYCF
         DDeMxqxgilNUlK0wLrqaDfvB9nTp64UDPujOmYooo4hxlkbV/vwSwOOV73e2C1iFdcYX
         H1rGBfcra+tif5e/u2ay/JqNjBCmLqBd9P3EgDrUSnc6B5BRL5ElcZ4LbW80RUkI7Dek
         rNHwk3m0IIKdVUQVM6oFaCRbNVDQ0I5krkQNF2KSZElSEdjtII8X1BpG2I2DbqCTzfXI
         TIPVGDa1Gw0cAIX8acTp2vvKQhM3BnYJqKZ/+XVi9AsnEX04SnKx2DMojRctQqgpkWiC
         m1Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697269193; x=1697873993;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/T+mqY0YyCdsBnqkUGefb0Qt7ybMEE7XE6wXA9RF76c=;
        b=amG6u75/LEsMN5ngd1iyt/fVe4ni052Pe2zIbHxxmN66uZWqEmMT60bx9ctWr3dsAU
         YD0GLFXyHqO7HmxJm42cQsgMcamW8MMlxx/+74TC+QmERcIjQ7rBJC3Mff8MqmvSn73R
         I/vRpGplyyNNc9yxrYfNgSnf/bjs8WY9V0EUXvYDDq+PoIQcbX70esbOPqW2uB36ZoFh
         ekxHI7uxpnDCTADiXjrs2l5uoUBFi1H+/wX6jxliPlGvQLPbAhAMhbuTH8nmY6noSqRH
         fzlEcu11vZemS+l/5WmEbzRC2RKiYPa5eLUsj03KrSpygj4yLiniT1hTLqjRkwHzmGAm
         Kv9w==
X-Gm-Message-State: AOJu0YxrWXfuDn85zF07Ofz+zMl5s2v0ZyBPXua6ml0y7vq0a4D5xUKo
	C77crITfeHUuzNau8pbIHzz040Vjh93CGw==
X-Google-Smtp-Source: AGHT+IESxirTgvv6m3zV692Q9pQ5hTaN8BZ/Eywq0YLrZp6cuJTYzSnev3Bs01hzmkNmfRTWkWXVzw==
X-Received: by 2002:a17:902:e811:b0:1b8:8af0:416f with SMTP id u17-20020a170902e81100b001b88af0416fmr38018942plg.1.1697269192349;
        Sat, 14 Oct 2023 00:39:52 -0700 (PDT)
Message-ID: <56c8798b-0ad7-652b-d034-90229b6768f7@gmail.com>
Date: Sat, 14 Oct 2023 18:39:49 +1100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Matthew Fernandez <matthew.fernandez@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] sandboxing,of upstream programs by distros

Hi all,

I asked Alexander about this off-list in relation to his thread 
“linux-distros list membership application - CIQ Rocky Linux Security 
Team” but he suggested I bring it on-list instead.

Is there interest/solutions within the Rock Security SIG or other 
distro’s security teams for sandboxing that package upstreams can opt into?

To step this out a bit… we have a large, old code base that was written 
decades prior to current best practices. It has numerous known memory 
safety issues and ever-dwindling maintainer capacity. It is also a 
dependency, either directly or indirectly, of a significant fraction of 
the world’s software. I am guessing this scenario sounds uncomfortably 
familiar/common to many on this list.

We (the maintainers) have discussed sandboxing as a way of mitigating 
the risk of known bugs. However, one of the problems is that we don’t 
know the complete set of required privileges of our dependencies. The 
software can be configured with or without various libraries and also 
has a plugin mechanism for dynamic code loading. Basically if a 
sandboxing solution like seccomp wants to know our full set of system 
calls, we ourselves don’t know it.

The downstream maintainer packaging the software for, e.g. Rocky, does 
though. They have a complete picture of which libraries/features are 
enabled and how locked down the plugin stuff is.

So, where I’m going with this, is that if the various packaging 
ecosystems could (or do) offer sandboxing to upstream, people like us 
would gladly opt in to it. Of course, these downstream maintainers can 
already seccomp our software today. But expecting them to reverse 
engineer our exact needs seems a bit much.

I’d be interested to hear any thoughts on this.

Thanks,
Matt
