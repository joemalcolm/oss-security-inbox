Received: (qmail 20038 invoked by uid 550); 13 May 2025 17:04:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20013 invoked from network); 13 May 2025 17:04:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=citrix.com; s=google; t=1747155832; x=1747760632; darn=lists.openwall.com;
        h=content-transfer-encoding:autocrypt:subject:from:cc:to
         :content-language:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CdiKmgPiB83vyJbNLyqD6vCzUOha0hDNrkNpiC/2CX8=;
        b=U0+DQFtJQuVU3ZOWcZsxxHdT1KXE+vG2AGByALnD3yiGDtDpTZznnZuzCIhYrPbqpQ
         nQj9JqHNaTV6u+htjYdH4J+fIkC7LO6MZpI8fhWNvjphjebDX8ssitsyoAFWfT+utejH
         WI3UzTHqVMtWUqFfdNaaEc2UEbKDwvdSmQm7U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747155832; x=1747760632;
        h=content-transfer-encoding:autocrypt:subject:from:cc:to
         :content-language:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CdiKmgPiB83vyJbNLyqD6vCzUOha0hDNrkNpiC/2CX8=;
        b=o9ZGJraJzgcUFcw/qKvVKR4Jw3Hmyn8W8gsO0y8NmVikPcP7LF0kYkq/sytdMATEsA
         mNtBbHbVAikil89Fty2jF4t5tQdhvSW31wRfACi/9PC+oOUpUZZeBZWZbjb16rzX3EOi
         7EH9aYS5BcX07eJle/CMzRwHJj6x7SN1VSSTGLDRUIV9Du7jTWkw/v/t8sRBae78blvI
         Sf4pabWxIn0OWa7a04pxOQluMBjLXusGsOkihRZgs81Vd59Y7wiTweKcrvtmTcxGkr5t
         RslpVIBIWN2NMGRUL/uc7d5oUVqt15mlsIk5Y7JVpK7hWU4REx5VJRB7k/IJJC9Bo2Wf
         9CFQ==
X-Forwarded-Encrypted: i=1; AJvYcCXPRTMySfWDAjCnKhVzisMdZCC/M2ClLldPEpkfkHqPF7tLwNl1E6bbwq3ijHWqXVDvPXGtemtNbfwWiF4=@lists.openwall.com
X-Gm-Message-State: AOJu0Yz7zztL+f44tJKs5vLzVLSJAtwl/hhyJLDuY38FUAbtpoaPqINL
	COeWRr/zrz3azRSKBLF4NTJz7PgEqu0ov3CwYVAF94F0Ji6vKC/i5++2tIFgQWE=
X-Gm-Gg: ASbGnct4LsalBE4VFyZJIMUL8IshjeIId3i614a4D0g3VN6NQhVf/CPt8AofSacGH9A
	ruhdEgtic+B7pY0XUBtwwTayluJvsdiyH9iAE2c4PxlGZ4yfZ7muxGQEpu81W7XabPiGa8MkH9D
	ybcxYNYH9QIJD5huIwdFZ0PBldSiAgypu/OuzWludCynSriGoPo37FPyU3yV37VYZ6Hj+qhhJHG
	4/YjvwDwfsfcNuOCj3v1xpXQEfe+MVqJ0n5azb6xB7WzrlaJapzs0C+0Ft/SHgR87GjwpQ+lX+G
	SkNWsHNSece0ufgoF5GxbFy17yhRWgZuQNtsrFcBm1FSAzRCOV+fxwcnfFN6HX/p6QQoQ80W7Mm
	ZRV3wuVckqo8P6N8Y
X-Google-Smtp-Source: AGHT+IFsHFUoejrqrNdXTxQcPHJd+q6q34anRsCYXGuSkQdKkx7aDqCHjt0t1A7Bq6ooEOFq8jkq5A==
X-Received: by 2002:a05:6000:2907:b0:39c:1429:fa57 with SMTP id ffacd0b85a97d-3a34968fc0emr71795f8f.3.1747155832320;
        Tue, 13 May 2025 10:03:52 -0700 (PDT)
Message-ID: <6ff1387d-6577-455d-8a1a-0dee04907b1c@citrix.com>
Date: Tue, 13 May 2025 18:03:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: "xen-announce@lists.xen.org" <xen-announce@lists.xen.org>,
 Xen-devel <xen-devel@lists.xen.org>,
 "xen-users@lists.xen.org" <xen-users@lists.xen.org>,
 "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Cc: "Xen.org security team" <security-team-members@xen.org>
From: Andrew Cooper <andrew.cooper3@citrix.com>
Autocrypt: addr=andrew.cooper3@citrix.com; keydata=
 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
 6+ahAA==
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [oss-security] Xen Security Notice 3 (CVE-2024-45332) Intel Branch Privilege
 Injection

Researchers from ETH Zurich have discovered Branch Privilege Injection,
a bug in hardware prediction-domain isolation whereby an attacker can
cause predictions to be tagged with the wrong mode/privilege, and then
use the incorrectly-tagged predictions to mount traditional Spectre-v2
attacks.

For more details, see:
https://comsec.ethz.ch/bprc
https://www.intel.com/content/www/us/en/security-center/advisory/intel-sa-01247.html

Intel are releasing microcode to address as part of IPU 2025.2.  There
are no software mitigations available.

https://github.com/intel/Intel-Linux-Processor-Microcode-Data-Files/releases/tag/microcode-20250512

~Andrew, on behalf of the Xen Security Team.
