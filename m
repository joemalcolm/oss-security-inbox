Received: (qmail 23560 invoked by uid 550); 27 Nov 2025 17:00:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9298 invoked from network); 27 Nov 2025 15:11:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1764256289;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:autocrypt:autocrypt;
	bh=4ntKrmhJyDnh5JvPEHtP2FMqtxlnmOiVTPErtQksuWA=;
	b=ISw+hxu7DlmGQKLl6oXl0wAvOjQlg9WtdENuNZ06jyUQWzFUdJVmJYqJ5Z157Av0lExaft
	/Cv58PMO2z4kO/Nt8Y6Yw+gwOhrj9VQI7kJl7ze4KiTiFXzKS+nMnQ9GendwF4cpKa+puG
	ZEqi3/FkVaJGTYVjEmzi6FRowbjm3ME=
X-MC-Unique: nSJmgK8oO7aE8MxvzDeNjA-1
X-Mimecast-MFC-AGG-ID: nSJmgK8oO7aE8MxvzDeNjA_1764256286
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764256285; x=1764861085;
        h=content-transfer-encoding:autocrypt:content-language:to:subject
         :from:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4ntKrmhJyDnh5JvPEHtP2FMqtxlnmOiVTPErtQksuWA=;
        b=aDCNZb4ZZ2zj/aDpwTbVVQ0uvjZrn6TkJqcPGaaV/oO41J7sa9SaiQZ/ZFk+392c9S
         40wo6eI6BzI5SeJP21DDNEcfrr0ObuCC9P49zvCj14Alt/ERo4sG4Nm80gF/H9OJpD+O
         Cfl7/qjSxU/Jtmxt635fBG8dO3rL/izt783nK+Th40oUYJHWol+1k//M5GWhb734LYPh
         q8/qgw/4tmaaPLryJcmJyidDpahhB0cGZaxEKaAeeIMoAFzfgR6gnaSyt9g9+DQMXkcL
         /al7HspolA19Ubjla/oAWa6azU947pkO3IkGYMgcq9bSutvBtQTNoP3uzjBA7o7ltINh
         8Wkw==
X-Gm-Message-State: AOJu0YxSIgRKkq1t6NGypcqiX1I6Fn4oqhita7IuAMUbsnE+IWjjFHN2
	oFc5cT29ZVIc5SJDdxTSbgypADgWrlVbjk24Ya2wM8v5Uq6gPuciI0pHEIPylyzTqA8DetdHB7a
	Y/2W9yqcddPQUflNQQRzpZ0g33erZCKoaDhMIElF8Btf8rk1zD4NkZ6PR1lla6bERcaX3OJDKfz
	kpptES4fTrRzWXHN4w4pV90c8KF+WCSU0KYwGcjQ4Z5Ux5YKrk0Z83
X-Gm-Gg: ASbGncsSC3B2wioR8yH4knDS1rupKP6Y0iLBCU00wsl4Dwk8LeTjOcoiy9yxgrl06w+
	+JIfxAiE+fhk9VRGaIp7t8VmrSdMhybdT4fzbjeLipkkPlHcC3dxiVRTwqR73La/EVLPzocHMKw
	sxBITRY2cTjAvTZgMziApsjul+zMiuDg9Sadi7bF7lwKJ/OVy+PZLzCiFGbRDNj/VAxv+OGurxL
	C4hRuV+sPMx/Axxblnm4N6Zi766bZbUhpOUGVw2suMO43oyghkHoEL01d/ZSgUbEQvbEY0ccTzN
	E6oV7OKC5w0gwxGOg747Nt1GoHtXd9cSqrXER4DWK4njP2NWrDunLQjqlJ57KqHShCyq9u9zRQ=
	=
X-Received: by 2002:a05:600c:1c25:b0:46e:4586:57e4 with SMTP id 5b1f17b1804b1-477c114ed70mr344692625e9.24.1764256285017;
        Thu, 27 Nov 2025 07:11:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHr1sc4kOz2i6h9J+HXROCMSK/Ib25hZlYt7bO1qW2J8MIhXhGZa405eBSQq27apl+IXkA2wg==
X-Received: by 2002:a05:600c:1c25:b0:46e:4586:57e4 with SMTP id 5b1f17b1804b1-477c114ed70mr344692265e9.24.1764256284580;
        Thu, 27 Nov 2025 07:11:24 -0800 (PST)
Message-ID: <455a73db-2a18-414e-bf51-214f61d70eb1@redhat.com>
Date: Thu, 27 Nov 2025 16:11:23 +0100
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
X-Mimecast-MFC-PROC-ID: kJnV0hwhidZQs_dWCj8J0qRa2X2tJOyf5BxZluCb64E_1764256286
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] CVE-2025-61915 cups: Local denial-of-service via cupsd.conf update
 and related issues

Hi all,

we have CVE-2025-61915 reported by SilverPlate3 in CUPS project - it is 
moderate vulnerability with CVSS 
6.0 CVSS:3.1/AV:L/AC:L/PR:H/UI:N/S:C/C:N/I:N/A:H .

The advisory covers two reported issues related to cupsd daemon, and one 
issue discovered by Mike Sweet - detailed description in advisory: 
https://github.com/OpenPrinting/cups/security/advisories/GHSA-hxm8-vfpq-jrfc

The commits fixing the issue:

- master: 
https://github.com/OpenPrinting/cups/commit/524749b0449b49d8967d4f777854259bf22b278a

- 2.4.x: 
https://github.com/OpenPrinting/cups/commit/db8d560262c22a21ee1e55dfd62fa98d9359bcb0


Have a nice day,

Zdenek

-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC

