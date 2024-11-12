Received: (qmail 17842 invoked by uid 550); 12 Nov 2024 17:23:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17821 invoked from network); 12 Nov 2024 17:23:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=citrix.com; s=google; t=1731432181; x=1732036981; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=kC3kqnz5pyZ4ovBVhPpdQ+XzgGFZj1wbcVPXG8NTjCE=;
        b=k611aFxNfQgKX2uN41XBqVoxC8QYX75aJ3SFW3pPB2JATDxlC58HWREiAcefsNaZTd
         MaaaP1Nlnp6zMpovSKZSFokIFoYj3ZkVNVI/Zt24tVOeScJRwII+Bl9DzRhJSTBwmIxi
         yiVQqF3iNQGSmvwkG5U2WyllbPT8e5jx10hPk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731432181; x=1732036981;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kC3kqnz5pyZ4ovBVhPpdQ+XzgGFZj1wbcVPXG8NTjCE=;
        b=MbvmMkZFfY5+s9ya1JuaBD8pjHuANsAnKFvss9TWZ0YuFtPrbhzWUWELIPZHMiBau3
         TrYPZWsa/nqbXuriE3XkNgLYWjIQJ78whMtsffl2pjDInsaYmz0F4jyWVYNwxu/GVyEZ
         2gDPJTEY0i5IAbavngY4vjuWmeivaDzKcBMd74Ac4raath/awEJHTjJ0lLMLtzI7B2tA
         M8Bei1LtKqT27al/nNh7gyc63I5f7Rpj0zwDJC5Z1VBX1RHVOp4FGdHr1S/ipsmqb0lx
         R/RoRPNXBbhpx/RV9x5jDQ44gVaf/af9KIqnwoPFG781Dvpss+1D7n2zIvJEKo62lB2n
         nuzQ==
X-Forwarded-Encrypted: i=1; AJvYcCU7tgvoD0dtc33KQ84COKqGBEzAmn4xfchvTI0Y53zfsK1Uu63OO+BqTMyLXb1H4pth1rJL6S0zctHxVss=@lists.openwall.com
X-Gm-Message-State: AOJu0Yzkj2thkrzoI8JZKt/F/JXvDnuE+5iBrxmfcTOUDvcSZj3RU1/5
	ce4FnXZsqT7TOeAzqEaCgRSOz13Up/eqbsvGtVnUO//y7YYjj/B5jhJrjEVnD5U=
X-Google-Smtp-Source: AGHT+IFdjkS3HTCUEPK1CAQOMow7yeDSkQ8IPYKv8WIp+bnsZ94F2hDM1JuIBSD2DHdx6jqKJsw4Kw==
X-Received: by 2002:a2e:a995:0:b0:2fb:5206:1675 with SMTP id 38308e7fff4ca-2ff2028a9a5mr124919711fa.27.1731432180930;
        Tue, 12 Nov 2024 09:23:00 -0800 (PST)
Message-ID: <08301b10-4a1b-447c-9537-aabadf380570@citrix.com>
Date: Tue, 12 Nov 2024 17:22:58 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Demi Marie Obenour <demi@invisiblethingslab.com>,
 oss-security@lists.openwall.com, xen-announce@lists.xen.org,
 xen-devel@lists.xen.org, xen-users@lists.xen.org
Cc: "Xen.org security team" <security-team-members@xen.org>
References: <E1tApeV-001S2c-2H@xenbits.xenproject.org>
 <ZzONuZFo1-AXNOFd@itl-email>
Content-Language: en-GB
From: Andrew Cooper <andrew.cooper3@citrix.com>
Autocrypt: addr=andrew.cooper3@citrix.com; keydata=
 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
 6+ahAA==
In-Reply-To: <ZzONuZFo1-AXNOFd@itl-email>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Xen Security Advisory 464 v2 (CVE-2024-45819) -
 libxl leaks data to PVH guests via ACPI tables

On 12/11/2024 5:17 pm, Demi Marie Obenour wrote:
> On Tue, Nov 12, 2024 at 12:05:47PM +0000, Xen Security wrote:
>> Only PVH guests can leverage the vulnerability.  HVM and PV guests
>> cannot leverage the vulnerability.  Note that PV guests when run inside
>> the (PVH) shim can't leverage the vulnerability.
> Is this unconditional (perhaps because the relevant data gets zeroed out
> by the shim), or does it only apply when the PV guest can't extract data
> from the shim's memory?  For instance, 32-bit PV guests aren't security
> supported anymore, but the PV shim isn't supposed to rely on the
> security of the shim itself, only of the rest of the system.

Data are leaked into the PVShim guest, but it is the shim Xen
(exclusively) which has access to the ACPI tables.

The guest which has been shim'd can't architecturally access the leaked
data.

~Andrew
