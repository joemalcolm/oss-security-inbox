Received: (qmail 13885 invoked by uid 550); 12 Jun 2024 23:12:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13867 invoked from network); 12 Jun 2024 23:12:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718233927; x=1718838727; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xK6YOhwO6HlpvIOhtszKdBrT4GIF4S1XntiuVsU4HlU=;
        b=J9oNA9SEEkhKShimoZPYDj609ajanpOoOzcH6Zr++gojnBFYERlLe+P0T0eWKhZrXE
         kvXNT934XaoZwWTPgsHJYgRNSH8G95dz43RWrswvTAQA2Kj0csYu87+lPlvp3hzyMaiH
         +0XpV/TyELzQGOwEK1W2U1TzeA9OGv1/bJxE4mAKNvzuOCj0cA6GhntQx+daVT1kqA2O
         1E1nEGBIC/PZx3ao8w0LvSkmJKOh8dEGLK6dLB2cK6eJePEo4IeX0vbiZAlnfA5ND3E3
         NHcgkXu9j8EM5xSLm1WoSy1/BIcjv62PSNtfcbWzjbw3AL1nfFS8ZXHnXpHvwKOkBWgt
         rlGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718233927; x=1718838727;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xK6YOhwO6HlpvIOhtszKdBrT4GIF4S1XntiuVsU4HlU=;
        b=BwYHOQXfkTkV8+djfYpYcXKwU0Ab3zMyJArIKKaBYgk/+8Mafgsx+w1H9cDKftVIkc
         i7uI0JRPXVOKE2Eu6coXaGbtesu1Rn16m/d4BAinVvllmcn4GOXxSCKWJnG6RUTJoLVm
         LIQandzDGHH0/8yDfHE1jvDDXfHmzj9otlftxG2WBh55JeDOKif9JJsohNr9YIIywuVb
         UL8UobdO6FfZGvH/e1NoUhIVYFpgBbliYaHT8SH3Tmac9SJwzIg2THIPfd0/hWkP36Bo
         C7HGhlGVkrLNiigIJuKyA+VV9QTa8dDeeOwke2IC9+s2251dNMBiIT2Dexi+glGg2G1v
         hukw==
X-Gm-Message-State: AOJu0YxLp9wunYTpYWB7XhUJvIiw7115rHM7o0zSyAl79+099f+qQTN0
	1KN5UkMo8kYgVjbUHNJRlR0h7VgQ0oZ9cW7wtoaN/n2r7paKBl1rT/OJig==
X-Google-Smtp-Source: AGHT+IHqZ4IcB3AM6+lewb+NAS4urMnlmGpyziDT8txvdLV6ZqLXS+XH3++JTPOnxclCrThmTAwsZA==
X-Received: by 2002:a05:6808:d51:b0:3d2:2749:6a8a with SMTP id 5614622812f47-3d23dfaf567mr4045079b6e.4.1718233926645;
        Wed, 12 Jun 2024 16:12:06 -0700 (PDT)
Message-ID: <ae09940c-6dc5-4de2-899a-0093cff4d6a0@gmail.com>
Date: Thu, 13 Jun 2024 09:12:02 +1000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <28902b9a-3255-4bfe-a3c8-d0e08fb5f426@redhat.com>
 <v4d8ln$2ut$1@ciao.gmane.io>
Content-Language: en-US
From: Matthew Fernandez <matthew.fernandez@gmail.com>
In-Reply-To: <v4d8ln$2ut$1@ciao.gmane.io>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Re: CVE-2024-35235 cups: Cupsd Listen arbitrary
 chmod 0140777



On 6/13/24 08:49, Tavis Ormandy wrote:
> On 2024-06-11, Zdenek Dohnal wrote:
>>   ???????? Impact
>>
>> Given that cupsd is often running as root, this can result in the change
>> of permission of any user or system files to be world writable.
>>
>>
>> https://github.com/OpenPrinting/cups/commit/a436956f3
>>
> 
> This is a pretty confusing description... if we accept the premise that an
> attacker can somehow get root to run cupsd with a modified configuration
> file (how???), then this patch doesn't seem sufficient. They can still
> get root to unlink() an arbitrary file, no?

Also with debug printing enabled `DEBUG_printf` does not 
save-and-restore `errno` and then does numerous things that can 
overwrite it. So presumably the `errno == ENOENT` branch is not reliable 
in this scenario.
