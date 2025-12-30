Received: (qmail 3075 invoked by uid 550); 30 Dec 2025 19:10:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30528 invoked from network); 30 Dec 2025 06:34:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767076453; x=1767681253; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:reply-to:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=hUSdtYP96P/y8PEmyZSABticIRZmN/4YyXmJf0jdqRI=;
        b=gAq63iO3pIoKFBXU2EC2abuAqCQRYSgQKQjGBjtLYhd/kfSQLN0Gl349A+VMqAC9Tb
         LFboiSsYitU6bwGw/gwbCOliachR+jFndsxP+vzfDCp7E+ldd8jr9IIXEeq9CO109V8o
         bszhe9Yk5TJB4z++Ye+kDksUWDN0imoMZMcOHktMO4Y0V42GcdLXqeRU6SdhFa6S+jHt
         M4UdAMezbnwh+DOKjGGW4j3YfscvF24tl/aQWvmDUMpPC/BlDlfzSUWwmOwtsE8ZipIq
         UTbc4qBBPsh+DI0LJhC0doPRoLRjO9rD56/EeNAwLFAixiVx7y2D94/F0C8xgs8RUEbQ
         kW2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767076453; x=1767681253;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:reply-to:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hUSdtYP96P/y8PEmyZSABticIRZmN/4YyXmJf0jdqRI=;
        b=fRqQb59VWKhgMijXhPcoL6U+l+0JEhCMpWutwxqtAiX9JCyCzgV5GHXRTfqc6MHVNs
         vQD5mxqyy+my4m4Om4ChRwTw3ohKNGtvwiukPtNDnc7ueOCSfhliZHb4M9eTCJdny87Z
         9EqWXYpBOxLf7zzOUpuuC1lECn8e2cJy7+RozGxfrh+fZsvMOPjw82MUdqbkGiIAnXN+
         VIrjl7llh2gWqt/D3M4UaT5NQDOFNzywVN/W4RVMe/i40oD0vklGy//KYQ3jp5B6oHJd
         LROvTWQRbopMd1nS27CQSCKMPUV7JEyPALgo2xwC5vc1GNIFYkvrh/IMfmJDszYUlzQG
         0nUg==
X-Gm-Message-State: AOJu0YwXk34F59oJuYnfOnbPW7cxTWPMr8pl7zw/B7TVWot3g7xnV1YH
	pkyOfbD8Wn0x13e30xgC7v38tcIl+S4iJPDY55XvXxXdDfDUdsP3CsOTt275+vh7
X-Gm-Gg: AY/fxX7mL8rby8V7qyJUDebKZ+qoJfLft6te66tWiFCOhnHjl88tH/8yk04wtB9WeLq
	K9pMi8g4UNX7oc/r5arXwJYGxMI7Q1FDH+JMvt0SZIhe53PD7xpT6uM2Pa/2lZMH15UsLKgj6w0
	JcIAZXhD62oS3r3zk8TRU7BQxm+X+qGzAp/f3A+g3yuWjq5SiYPViNadrBjJJmNmPynwatmYloD
	z8bjnHajVSlfpppKCmIenxEpjH2ly2aq48QuQUBA8OQMgS4mpDnDv/dYJoTJklvYCT0BxqVA52L
	BCfWD8M1Vdzp3evT/90c0CMXETmydeLsxGAVv4vMkx8OEVFaBZJWyDhqKWEBZeU8wc1PgIkK+cC
	jo2+cmCG8bX783qAmCgJv+4Y18gTBlEotnP+eWCOZzbpMSBDiZN6d8rFhSJqYDhvxKVTkvAVmBC
	HH+r7XFnczVpgPmy66LLYSXbnkvr4x
X-Google-Smtp-Source: AGHT+IFOq/g0CQnP5wkp6yudFMCCqu3CWQSaeVgjFZOLNUEPfInrOuE3pAxL2yG3iwwuL+2E905JlA==
X-Received: by 2002:a05:6830:34a7:b0:7ca:c842:fe2 with SMTP id 46e09a7af769-7cc668a4bc8mr21914816a34.8.1767076453550;
        Mon, 29 Dec 2025 22:34:13 -0800 (PST)
Message-ID: <f1811ded-6a8c-4eca-a8fc-4f9c77e4db5a@gmail.com>
Date: Tue, 30 Dec 2025 00:34:04 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Werner Koch <wk@gnupg.org>
Cc: oss-security@lists.openwall.com, Solar Designer <solar@openwall.com>,
 contact@gpg.fail
References: <3318308d-70b1-4ab3-9cca-ab4ea67dd27d@gmail.com>
 <20251228042744.GA629@openwall.com>
 <0009d6cc-143e-41e6-b240-eb526a9cb306@gmail.com>
 <87zf71pqe9.fsf@jacob.g10code.de>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <87zf71pqe9.fsf@jacob.g10code.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] safe use of cleartext signatures? (was: Many
 vulnerabilities in GnuPG)

On 12/29/25 03:51, Werner Koch wrote:
> Hi!
>
> Jacob was so kind to comment on the reported bugs.  I agree with most of
> his comments.  [...]
Thank you.
> [...] At that time I also drafted an article to explain the well known
> prblem of hard-to-correct-use of cleartext signatures including a bit of
> history: https://gnupg.org/blog/20251226-cleartext-signatures.html

This is also the most important point to me, because cleartext 
signatures have their uses, for example, signing a list of file digests, 
which is also the use case attacked in item 10.

Is there a safe (but presumably less convenient) way to use cleartext 
signatures, perhaps by strictly validating the overall message 
structure, or is this basically an unfixable problem? Could GPG perform 
such validation steps and emit a warning if a clearsigned message does 
not strictly conform?


-- Jacob

