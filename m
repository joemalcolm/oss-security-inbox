Received: (qmail 6003 invoked by uid 550); 25 Sep 2025 19:09:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5966 invoked from network); 25 Sep 2025 19:09:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758827340; x=1759432140; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pCNfCRyWnmWZNpbiJjKAYxipHFBiVnZ7MyNhkGXTSok=;
        b=Xd7cvqVmiNpaaes0lYvoOQpfRv98/bmBB0QS1E3JlLHYnJBuhGI1MNTx0SMAxBB+78
         BQh5E+TerxqiR2OBEoQcziSGid1a721ugCP2oV3fq1bjfK8qA0wMAY7YhRPlX+u6xDYM
         Bkx/P62ZjiWu6lvke0Ugkyh8QObt8U20usmHmBy3gWZBHLgiTzsmR8IYdJEkkfWJrjXg
         pk/PF2TRnbqP2S9scKRYC4skKwmnWtNA54MvP3O5V+jTRa86zWC8ZrsxzfowdeBqBGK8
         CzfAeuNyw5PkEOlx24/IVPozRVup6bttHYUgPd+NFb9v6fWLQEgV8WMody/OxNsFmS6C
         9cQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758827340; x=1759432140;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pCNfCRyWnmWZNpbiJjKAYxipHFBiVnZ7MyNhkGXTSok=;
        b=imFUnYIb2RNdfEyt0AXRY1kl6LnhjikE4Re47qKVc6EMcM1X1I2BLadEWNk5LG+zHg
         LPDuu//OZRFGEtTFgIf2GyR44iiN/03Ek7DCNXwad0D/1qWilUC3aePO0rcWVG6BbZoI
         nbyr0MsRxnNODWCpY1xRSc/aQB8fE1tk109dIDmcKnJjt3SIOcwRCGmaSo3HRbDA3IhA
         3Q7x1xt0R//mIl6qO0W6A2rgNcjBAuyzjwv7f2/xKEQ95mi4MlF9H6B74CS4+EcGG8Gh
         j/YrM/mnF4QDs2NCFJOy8/r66NchNmZ7fR+wk5BR4w38xngD7nh/3ylX5QAmD9/xIIWi
         aw6Q==
X-Gm-Message-State: AOJu0YxrlEh3UGcEQggxzZ8IzY+naSTZpA8PUPjl/IgwPwbpu2mM75UR
	TaFfNJ6rgqYCoDJRjID+cNlTILqKMgRWmFCHPziPzrNAMXdYsi0kBt1TPe/G8w==
X-Gm-Gg: ASbGncv9VhlYudvBaG9OPBpqgMS9F1ho59t+zRuqkZdvLWP8df3Q53xOVh56wt0Ltt7
	OvMwI438EJCHLlhjs0YUaJyJ8ICYyg81o8YjTEAvhiGlK1Youv8bBue83Mc8ornGNFkYBe9MXKR
	0QQ392UGh9NfWQlpOqOC7IvAiXRINY3DOuX8i9EGe6YB5Dyvy/rL/0UvJFc5XOUvXmN4K/ZBTnN
	pbrhFDRk+ybUhm9Bh3Ahq4QHEIASaCJqHj4bGllw3BLwZqvz6OabdUwk0Ns23GLwQNbCpVl8Fgl
	oA3EO2sMFsSvpFwKVUxllqm8AhLxWDDiYHCVvui0+JUBqu92DkxFdunGYV4BMfS/+HEYwfKql4f
	j78qn6EsFOuucZhC4AXXmF5Zv0e8WoSZNRobgf8TLKbmKSloUvobQEeHSNMwV+ZkOD1IJ4KuCtt
	WJ
X-Google-Smtp-Source: AGHT+IHswYa/acexWnZ5EsAFBgfLTZheBtWV1X20XU8k/8cCwm4wlM5/FwhbA8y0I62s4h8RcXyUHA==
X-Received: by 2002:a17:902:db06:b0:261:cb35:5a08 with SMTP id d9443c01a7336-27ed4a30d42mr48278025ad.38.1758827339724;
        Thu, 25 Sep 2025 12:08:59 -0700 (PDT)
Message-ID: <2e423790-d7f1-4873-a840-9af284c3576f@gmail.com>
Date: Thu, 25 Sep 2025 12:08:58 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, vmware.psirt@broadcom.com
References: <CADOAh9cRx64wR8a7X7918ma_nkYDXzQ8uK6Jsp0q4oe-ECr3Eg@mail.gmail.com>
 <20250513015957.GA29601@openwall.com> <20250924023739.GA21012@openwall.com>
 <CAL2zhBTvrV3kpq9u-RaF87CtsD+SCtERcjNWwah8EW1wNPEwng@mail.gmail.com>
Content-Language: en-US
From: Matthew Fernandez <matthew.fernandez@gmail.com>
In-Reply-To: <CAL2zhBTvrV3kpq9u-RaF87CtsD+SCtERcjNWwah8EW1wNPEwng@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] CVE-2025-22247 - Insecure file handling
 vulnerability in open-vm-tools



On 9/24/25 23:38, VMware PSIRT wrote:
> Hi Alexander,
> 
> We somehow missed your previous e-mail. Thank you for reviving this thread.
> 
> Please see our responses below:
> 
>> Skimming the code changes, I see that the second part - "disallow
> unexpected symlinks in file paths" - is implemented by calling
> realpath() (or a Windows function on that platform) and seeing whether
> that changed the pathname or (almost) not.  However, this will not
> disallow a symlink that appears after the realpath() call but before
> subsequent use of the pathname.
> 
> Thanks you for raising this. You are right about realpath() and
> symlink usage in general. However, as you can see we are performing
> realpath() check after we completed the open() but before we read
> anything from the file. So, there is no use of pathname after realpath()
> call here.

Is this not now simply vulnerable to the opposite race?

   1. Attacker creates unexpected symlink
   2. open()
   3. Attacker overwrites symlink with something benign
   4. realpath(), sees nothing suspicious

You now have an open FD through the unexpected symlink without having 
detected it.
