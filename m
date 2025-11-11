Received: (qmail 32294 invoked by uid 550); 11 Nov 2025 18:41:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9814 invoked from network); 11 Nov 2025 14:49:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1762872576;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=mzLSUtnDIEb7JwMZcdVp2HEdWg+v+06kX1WnGXuFPjQ=;
	b=UyqC3VrkEEMPB7BeLoFVLpkCpJhBOYo04dm6S6hKyxrwTQzH1ZkpTRgXY4SAT70bMUSAqj
	k59Swk39t9F9nEn1Zp/+KMv8RpPVMlU7Fxyh/Ler+G12YabXGPDMKEtiCAm76W46MhPxR7
	//qZrHkiKgQesENGwJxNoUOhraf1rcA=
X-MC-Unique: o1gyDCrUM_GK4pbfghzoWQ-1
X-Mimecast-MFC-AGG-ID: o1gyDCrUM_GK4pbfghzoWQ_1762872573
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762872571; x=1763477371;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mzLSUtnDIEb7JwMZcdVp2HEdWg+v+06kX1WnGXuFPjQ=;
        b=gLX3Y8UCS7cYWpTAr1FD3OfCX3FhCsXfd7APXo6e5M4hNIcrg8SloVmyEYVtzCLMpl
         ljcRWZmKr0HDRKw+oIuEQo0He0TVB60d+OIAWJ73HJf8SaODP/2XkzOcEgc3MCXj1nwA
         ISiHUGn/nIOuunt2iQk1Fzlr4Xc4xCUU0iNElEPJQ+dWHRdk7yKoijOpSsT/Mxzi7r1F
         vPtf98qE4y/btlObt66iSd6VAtgAp27Xjcypj7PCTkca6WAzHUWgC1hmLt7PoMGvju1/
         1KQSqb68jP/uIJv+Zl+CbE/1EyAkcBC1qP8G4CYE+3G5r2hBaPIaxeYBnBrdlDuvC6YD
         CJGw==
X-Forwarded-Encrypted: i=1; AJvYcCWn6p5dYvqsqs+XITuhoXsMWp1JgBMTEAN8g9gI211X2p7HH7Zkf4wM+6OPMVodHs1fiRE/wsD3ZIkW3mU=@lists.openwall.com
X-Gm-Message-State: AOJu0YwV7VzZddqFdt0tgUrK7R3o6Q439uv8j7qEI8oaEj7pgU5rCoyn
	/TXUQZm4j1KTiVCc9ejaDSQVK73EzRHSWCHwE3NATyGScgt2kpldVZQcFIT1YDG0Ke28SvqGL6L
	IUf+KGDbgziurk+e49KnxmnY7H4d73mgNcJ2SwzemgFcZuOFv26T2nzwKkEZC/DEzyziVSZwWNs
	otPOxsTVjd1BoblcWE+0vL1meUOxOo/9KO3MLXgKfTwCgxO6FXur5piXw=
X-Gm-Gg: ASbGnctZXLusKzh29ifbtMg/Jx+XgS6YMrec4hmh4ELRZTZwtWvpyHKoOT0i0CLSOD3
	cwYva35BSofjaHahX7EnxGeOI0b3eaGornTMtiPPnE5HpuvbRJiWoAS3rfU/4Ozs5EFhuKUbtJw
	zWPYqO/N4kJqsk/aTXXM2C8fK3ooSdGmFfWjAZ7yLwP+atOTWEIRtmn9E=
X-Received: by 2002:a05:6402:2793:b0:641:8d40:8672 with SMTP id 4fb4d7f45d1cf-6418d4088a6mr7392899a12.16.1762872571316;
        Tue, 11 Nov 2025 06:49:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHc+i03sJ0W8PWKrrq1H0WeKIl57PDgX+2XnvsB4t6eq+chMudjS66IECC6vPBqVk0rcGzylYRn2l/gMH1mC+s=
X-Received: by 2002:a05:6402:2793:b0:641:8d40:8672 with SMTP id
 4fb4d7f45d1cf-6418d4088a6mr7392873a12.16.1762872570812; Tue, 11 Nov 2025
 06:49:30 -0800 (PST)
MIME-Version: 1.0
From: "Sage [They / Them] McTaggart" <amctagga@redhat.com>
Date: Tue, 11 Nov 2025 09:49:19 -0500
X-Gm-Features: AWmQ_bntrPqGu-4CYYyv3c6S70ajMY8Qpl1Uvs9wzjqZvSQaMTjbpyEXCf6qkqY
Message-ID: <CABBoSti2LtHdkMw=dkx_0bAgfg6pnwnzLjGW_ung6cORPNzh5g@mail.gmail.com>
To: =?UTF-8?B?546L55uI?= <wangying2023@ict.ac.cn>, 
	oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: h9PlphGoHAdvtK2R2bJOk_18YDdANbTUSy6XUlGSIPY_1762872573
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="0000000000005e3c42064352c12d"
Subject: [oss-security] CVE-2024-47866 Ceph: RGW DoS via improper input validation.

--0000000000005e3c42064352c12d
Content-Type: text/plain; charset="UTF-8"

Hello all,
A flaw was found in Ceph's RGW module. An attacker can use improper input
validation to create a Denial Of Service within RGW. By using the argument
`x-amz-copy-source` to put an object and specifying an empty string as its
content , it will lead to the RGW daemon crashing, resulting in a DoS
attack.

Our public advisory may be found at the following URL:
https://github.com/ceph/ceph/security/advisories/GHSA-mgrm-g92q-f8h8

We have assigned it a CVE of CVE-2024-47866 with a CVSS Score of 7.5
CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H
It is fixed in an upstream PR[1] and will be backported promptly to other
releases.
In downstream Ceph, it will be patched in Ceph 8.1z4 [2] set to be released
this week.

[1]https://github.com/ceph/ceph/pull/65159
[2] https://www.ibm.com/docs/en/storage-ceph/8.1.0?topic=release-notes-81

Credits to: Ying Wang for discovery.

Sage McTaggart
IBM Product Security

amct@redhat.com

sagemct@ibm.com


Pronouns:They/Them/Theirs

--0000000000005e3c42064352c12d--

