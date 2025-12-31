Received: (qmail 21944 invoked by uid 550); 31 Dec 2025 05:59:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24361 invoked from network); 31 Dec 2025 05:44:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767159853; x=1767764653; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=0KMFzzdkrsHYm1yTPKhtAsD5eCpEIiGrKWcqK7do5aM=;
        b=LfKu7fH/BmdwALOvQttb70dS0PzzpZv7DNMkSa+qwJSzlRXkVLCwxsM0njojktL0Zg
         1oo8QYUHa/fefa2eAZ+dqKCJ7EcoxYkS4hFFGosKSAwkkJpFyVgKcqf2um2Y7lu6h/Yn
         lR+3vdIiJmBGE+i3yTiXzPhaZlcqVGMCSZkUdqMkfQJJLmiCnydHVZJ+D/JDmS6lVMmO
         lbxuGlCXXIx94ov/pX24nRRvLcq0yCrKbioCLJAlk89t7XINTnihPRKVgAPWCfMw7qzg
         hVxKvUi6/wHsYXlqIuGYsfT12iY7+1+89E6JCW5ICyDRaJSlVyE5yW4De1UCEfiC1ctu
         adKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767159853; x=1767764653;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:reply-to:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0KMFzzdkrsHYm1yTPKhtAsD5eCpEIiGrKWcqK7do5aM=;
        b=J6g9jBuZTuv220iMd0wbhGrTR6gn1FtsgUi57ZR6YHTl2cW4GVGPTfsuUvemkDHqHP
         4Prjg99t3WJVBhHBsuZC6XLAEgzcw0gHWuIgprYzVjw0motfv6VVUqco/GfNoI3HVvzi
         yMRu9A6bfNN/TweQD9wyvlVeuMWqzNueksyO4cuEgO5hUNICyostVNR4k6bIsxVHyikb
         9Jbf71VLYCbYUBcDek0qOCV6finv7SA1Dv31oudjaD7ARv7oIFbiSQjCeJ+b4LYu1lD+
         ZgFKEJ5/nbPyY7MsegT913yFOvdsKVlTgPBsJYYIXseVLD+yekusCKnHeyg39NE3e570
         mVgg==
X-Gm-Message-State: AOJu0YyFWV7YVB5HNb+9oiU/cMfm5RPuWFJp9i3WZ+DbbfAKOd57MkUB
	wuj+IWJu5sT9UO9hUrzG+a0rmVVxYIcpK1gCOOxHrYR45PzKMiv/fiSCIYoTiBg7
X-Gm-Gg: AY/fxX7AGbX4eBs+cHXeBir29UFl2e0mUnSz4/k2Lp+/2VPpX/IsJUkd8SZ2C6qXvnx
	pi+4/73BNeDWcKP+OfoqDeuky7rHMUHumf0Isjl6L2rMVsKYKheBT48Bv3FGzGydjUdVQYb39hn
	xggSXSVQSzBZ7bMuWhtivuQDSdngQQTy7NZ3UYp5uPxH7kIoEObcI29CSCK98jTIHQVL/gfGKZQ
	QwZfswDkfhqLh0eCzSOdmiSYiewcZKr6TjutsdacZvNR3T9RQWckHxDsHSJLEIMnpp4Fj7Msn2C
	mZWR2q/htQErABXtHO7saUOLMgjBpEYwdZby44HEB51SAy4farHSQLjNyGsQUm1fM3AlukzQKQI
	r0IK6DSIAeiC3p02Dr9pdDcNIVW5yO+6Kp11nA0r29bZbPpZfrCYJ4ogFryR0N4EozieYjCi7HT
	jlQ/64AAw=
X-Google-Smtp-Source: AGHT+IGxd5bloaYjj/jDObRmbWF74BjHvRKQtBv0R4N1oZkBCrTKuF7pUKLBoCf7KUNgXVjKarclrA==
X-Received: by 2002:a05:6870:160c:b0:3f5:b411:ad9 with SMTP id 586e51a60fabf-3fda5886411mr16482274fac.41.1767159852665;
        Tue, 30 Dec 2025 21:44:12 -0800 (PST)
Message-ID: <0f885422-9937-438c-85cd-4f6850ee5b72@gmail.com>
Date: Tue, 30 Dec 2025 23:44:05 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, Peter Gutmann <pgut001@cs.auckland.ac.nz>
References: <3318308d-70b1-4ab3-9cca-ab4ea67dd27d@gmail.com>
 <0bf8169edb12d002a4654c4ccf6aa54d84eba14a.camel@verbuecheln.ch>
 <SYCPR01MB366178C350BB2649FA5B82D6EEBCA@SYCPR01MB3661.ausprd01.prod.outlook.com>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <SYCPR01MB366178C350BB2649FA5B82D6EEBCA@SYCPR01MB3661.ausprd01.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Many vulnerabilities in GnuPG

On 12/29/25 18:57, Peter Gutmann wrote:
> [...]
>
> A solution for mission-critical use like authenticating downloaded binaries
> would be to do two things:
>
> 1. Create an app that does just that and nothing else: Here is a blob of data,
> here is a detached signature, is it valid for the data?

Does using gpgv(1) with detached signatures fit this bill?

I am unsure what having a separate tool dedicated for verifying 
signatures using trusted keyrings says about the overall system...


-- Jacob


