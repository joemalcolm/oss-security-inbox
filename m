Received: (qmail 15713 invoked by uid 550); 6 Mar 2025 05:18:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23899 invoked from network); 6 Mar 2025 05:04:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741237442; x=1741842242; darn=lists.openwall.com;
        h=in-reply-to:from:content-language:references:cc:to:subject:reply-to
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8c72nmtSHkGr3McWaYqw6CVTQNX9M12DYjVU5XcaQUE=;
        b=HkQ9BRPPBH2pE7b84FPKS+/A1z0dA6j30hbM21836cGKBUgjUR1tH7eWvy2WC9DnCw
         260P1yRQMcdqSdt6AUhf/yJPQW7SoIOBgq6zGfAbmp5BDPOiVhvZrd0LSfEsF0ZvuX2R
         q4oc34zOnYuk+sDsczVmRODl+t5J/gMPuSL7cFqxg1dMHEcFsksQy21B6Xs0PCiegrLK
         GOWMgaA4T+hR+qRmkN+l5nIv7S9rNbHWpGF00FF9ANpVaXAR+dnPEa6v/26xBUbCoRk7
         7KvHzUbd7sF73rDHT8S53e64f3Mk9/AyLh+Y/0jyewlAz5DawuzQdWGeAfOZ+Sp2wYgL
         M1Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741237442; x=1741842242;
        h=in-reply-to:from:content-language:references:cc:to:subject:reply-to
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8c72nmtSHkGr3McWaYqw6CVTQNX9M12DYjVU5XcaQUE=;
        b=jP95cOyDaKq7qb+2R9tZ7UjJjj1VCXkijyjrMMsrpP5QeY5efjndr15KjUMiFALsq7
         PV41hCDuz8VkUYHAFKIhaLG3UUEOKvjnTu2PR7u5ON8L15BTPv44vP6ACVkhJRb3MfP7
         jaFId3f9cb2y3gWX9qC/tjKuPCD/Ab64GeTIMEHhtcC/CsrPuxNyZKLIcyid4COKzQ+K
         bSx3uAiGhW+bmtj2fqPH13wVm7osC5Vbcb92WHCOCY+J86cS63DoJ1mRZAAPeQL/dSw5
         es3vUMXTo4Y7SpcFn4pATpAmjihpHg/7BfyD59zNmd918Pu30IIHGha/HYsb0wSqJzfN
         YJxw==
X-Gm-Message-State: AOJu0YxxfcTdgmUSRnz8Tj9cENdRAnWUXriLoM0yM+pPzhNUix6xFEBU
	BIBZIKoHXK5yD5B6vJ8tSTNZNyfzNAGgmOqTfNqjZW0eK0qg0E/WkfkYZw==
X-Gm-Gg: ASbGncvKdShRvUmpDfcaKxcRhivSs0/9xS3Y7lCDIorNjc9vz6QzH0tlSJ+p9YYLWPp
	YmwkF4dGYgXKyPax3mVLPGxex3W6fctVQ7f6jP0w6yqVR7VS+9m+5Gll192+5qg4b0P36aiIb7e
	tnnUANl7TejwPgzeNuZiCbW1iIBHRebpBgtAkACZRSNpFmI9CAJeitra4lBYNMQNGCzMHoGk0oJ
	AIX28qL0swuxPPaHxbyBUVDDxeDBlm3TcD7tJ2A3eZ4KzRF8IUQcUwlalfN/Nt0Sa7fgsAvYNSn
	Cu6vyCVtDtZK3GQLS8Bn+Fd8LFl4EWPXULTjdYpxDw==
X-Google-Smtp-Source: AGHT+IGLHtvzly7T8rdxuAR6MNQPp9zkoFLpL2LunTa3D98splttNxiGqDXFjzYZHiIpA00MxyV1Eg==
X-Received: by 2002:a05:6871:d111:b0:29e:353b:8f25 with SMTP id 586e51a60fabf-2c21c96fa31mr2843587fac.12.1741237441898;
        Wed, 05 Mar 2025 21:04:01 -0800 (PST)
Content-Type: multipart/alternative;
 boundary="------------cnsquh313ZrqwVzSlG0QapcJ"
Message-ID: <6f9ffc49-ad46-45eb-9d6f-7d58769c3671@gmail.com>
Date: Wed, 5 Mar 2025 23:03:49 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, Solar Designer <solar@openwall.com>
Cc: Tavis Ormandy <taviso@gmail.com>
References: <Z5BYg9WPFBF7JBEB@thinkstation.cmpxchg8b.net>
 <Z5B2PA7DHTBbvbOq@itl-email> <Z5EUUMd1xkSSKAEM@thinkstation.cmpxchg8b.net>
 <20250204101028.GA20864@openwall.com> <20250306033000.GA4987@openwall.com>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <20250306033000.GA4987@openwall.com>
Subject: Re: [oss-security] AMD Microcode Signature Verification Vulnerability

--------------cnsquh313ZrqwVzSlG0QapcJ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 3/5/25 21:30, Solar Designer wrote:
> [...] I'll focus on what the vulnerability and its fix are:
>
>> [...]
>>
>> Forging On
>> We noticed that the key from an old Zen 1 CPU was the example key of the
>> NIST SP 800-38B publication (Appendix D.1 2b7e1516 28aed2a6 abf71588
>> 09cf4f3c) and was reused until at least Zen 4 CPUs. [...]

They... used... the... example... key... in... a... real... 
production... system...

[I have no words.]


-- Jacob

--------------cnsquh313ZrqwVzSlG0QapcJ--
