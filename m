Received: (qmail 16092 invoked by uid 550); 27 Nov 2025 17:00:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5292 invoked from network); 27 Nov 2025 15:11:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1764256258;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:autocrypt:autocrypt;
	bh=KS/fFYoujj04LnrXrWVeW7VoOZ9tMAxZGl9wXg0kKAg=;
	b=eUv8uEqbmTH1HT7ho0jWOhuaB/8j9fKRmw8AZoxs3NRN24dNraF0h7DxOEqKPgQf2zcqQv
	cpbQ52Bu1RM5DXNTJiGUCkOgedS/kAH2U8g4SilctrpD9edrtPiEKOrd1DyL94vLj7laxp
	3hcrejjbBl5AVyD3yc7VqoJCUKLDCjc=
X-MC-Unique: BXbrP4otO5G66T83I29yWw-1
X-Mimecast-MFC-AGG-ID: BXbrP4otO5G66T83I29yWw_1764256256
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764256255; x=1764861055;
        h=content-transfer-encoding:autocrypt:content-language:to:subject
         :from:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KS/fFYoujj04LnrXrWVeW7VoOZ9tMAxZGl9wXg0kKAg=;
        b=htX2LW+qC2lRk+zunIpx6mB+A0O/dPz3eicm0LQmxS7K1+2KXXk2QaD0P32SfmRnyO
         LI5L6ihDS1W5UUcvokuyqAdnoHlqb2rdU079Z74kAoRIGAlZB7brsPVl+armywSC+obV
         9Vqs8Qj7s/K0k7fSLUMHTWu1G3Xf1F6ewx53Id/eBLf1t6RX3JDtEcBnvzsWR86SGLNX
         GknV9b+hTlNrkiTKqi5jlQrEeWg8Vj+hKBeJmHLgSoKVtIZDS+ypkWkEx+59+jCV7FBg
         m0TdLkF+YBgWeGNccVrakuuEhm+xd605YyQP7lel1T+RTiERHmAiKr1eNWP4W3A8v2Mc
         hyww==
X-Gm-Message-State: AOJu0Yxh127K6jsRRzZAH2aCUbxy6DIko+TegqddjkHndFclJfXx5bpn
	DRj9Oge6XYX8Rfkt/ykLHt/OgxDF1jFtBshYx1FKlSQaMh4dVK1uXkSpDxysm9L5VwW7pVtnpF1
	A4ukhBTtol3dNuUuZkVoeWrpO0sHcPm8Q2rrwiqIEYsNtoCp/kuSOyLmtR2MP3JUCLb6BK5s1k6
	UAS9PgzSRatF5otlzXH8Mqk0PEpaXUW0mateNFNlgAe9oDRzF3Atdg
X-Gm-Gg: ASbGncstfVBvmNMh08SasIYN56jnp6+/coQaF8JRPFdlq9A3c48meSSwo6vFe+b4Y4l
	O3iVtEM34DxN4j01KUu00Bz1Owt7hwWlMOb6cUq9VnT2SHuVpOEhto6bYWBT7A7mcUpKlNXjjWI
	SHNC7K/80BO6OjtaGT2pIi9vtEyh0YkD9yj1EJHThtAScU513icYe9RWncz0ko0BYbK1p4bwH3+
	Gq+L4yiBqOO2Pws+vTfj0zsGFNkfBpHioC6YeO9Nw3rhVHb4A/juGqhG/smB4PiNMAcgugx3RdY
	q2riJcynR9/IlUQ02eRg72Z/Ds9JefEFt+OgvUGix9Lvzk4WlqCoM/WTbg4NxRl6mZsuRCilHQ=
	=
X-Received: by 2002:a05:600c:4f82:b0:477:952d:fc11 with SMTP id 5b1f17b1804b1-477c11175a9mr282085485e9.16.1764256254972;
        Thu, 27 Nov 2025 07:10:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEHf751SN6G8OAV6cAUV+ASMSGfvEyhZLBNQ7eJNs3u/ZYkhYBBR9gyYu/D5avUU+O6MuiR7A==
X-Received: by 2002:a05:600c:4f82:b0:477:952d:fc11 with SMTP id 5b1f17b1804b1-477c11175a9mr282085185e9.16.1764256254495;
        Thu, 27 Nov 2025 07:10:54 -0800 (PST)
Message-ID: <f30121aa-5fa6-4d1c-93f2-2c1e3032a6a2@redhat.com>
Date: Thu, 27 Nov 2025 16:10:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Zdenek Dohnal <zdohnal@redhat.com>
To: oss-security@lists.openwall.com
Autocrypt: addr=zdohnal@redhat.com; keydata=
 xjMEYfKEjRYJKwYBBAHaRw8BAQdAJggn9NALyWqrgrFGPJ9RvPb7wYbskxKRKQcLv+8HpbrN
 QVpkZW5layBEb2huYWwgKFRoZSBvbGQgNEQ0MjI3RDcga2V5IHJldm9rZWQpIDx6ZG9obmFs
 QHJlZGhhdC5jb20+wpQEExYKADwWIQRwgqClCi6SZA84gODkUi3MmyRv9wUCYfKEjQIbAwUL
 CQgHAgMiAgEGFQoJCAsCBBYCAwECHgcCF4AACgkQ5FItzJskb/fbUQEAm6R78JoZSIOpu68g
 tUUp1qbfDdsfoQkbdyfws/myB6gA/A6/9QiIk50DNCmBTisZk5CFP51YNvwnyxafmE3cDn8G
 zjgEYfKEjRIKKwYBBAGXVQEFAQEHQF6Qgj5UQqUdvqvnDqygQ6Vm59nRGHbPVDTwendtM5cC
 AwEIB8J4BBgWCgAgFiEEcIKgpQoukmQPOIDg5FItzJskb/cFAmHyhI0CGwwACgkQ5FItzJsk
 b/e2CwD/SyRi/I5Il5XY5VXEL/eBsnNvvtaO0T10V4/vBMiDb+sBAK3YmRl6WStfRiEvMXQv
 OhMT+sEjx6ufQXkuPeXHvrgK
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: sQDkuJNSol0jH86Be_e82kfPDqrQma5Xwm8BkScj7k0_1764256256
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] CVE-2025-58436 cups: Slow client communication leads to a possible
 DoS attack

Hi all,

we have CVE-2025-58436 reported by pzirnik, jsmeix, cmatos689, msmeissn 
- it is moderate CVE with CVSS 
score CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:N/I:N/A:H

The published advisory: 
https://github.com/OpenPrinting/cups/security/advisories/GHSA-8wpw-vfgm-qrrr

The commits fixing the issue:

- master: 
https://github.com/OpenPrinting/cups/commit/40008d76a001babbb9beb9d9d74b01a86fb6ddb4

- 2.4.x: 
https://github.com/OpenPrinting/cups/commit/5d414f1f91bdca118413301b148f0b188eb1cdc6


Have a nice day!

Zdenek

-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC

