Received: (qmail 1512 invoked by uid 550); 12 Nov 2025 16:36:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3491 invoked from network); 12 Nov 2025 13:47:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1762955213;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=c/MJOszRs8BMCTHxGbB9GPORSXXK9uQaYIgniSs95gU=;
	b=OB2Dowjxe569YKRUzNw4GNogodKh8Rp4wH41lWKk5neOEWkvBPt+r5UzONagyQ6/k7s5Y4
	gianOTHSlypQ5LFItYYwC9Fkj9aMsxNMFxDUmuXOcZNijjXt6aZPcj7oCEa5PnlDi6WCMJ
	uxI0YShIVt5xNhSd0H5mY6OYiogUo9g=
X-MC-Unique: RMzgpuOwM-ixI-rrrKVbyw-1
X-Mimecast-MFC-AGG-ID: RMzgpuOwM-ixI-rrrKVbyw_1762955211
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762955210; x=1763560010;
        h=content-transfer-encoding:subject:from:cc:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=c/MJOszRs8BMCTHxGbB9GPORSXXK9uQaYIgniSs95gU=;
        b=EVMizYlRbvMOvJtkcQLGcd2+svwWMCU0s5HweKMUFjp8aq5/uD/ewoBsCrel3SiZoB
         uiYuzBbANw71lzQp8IDECQjUc1N8UagrlHCV0baLJSdx8n8rciDmRdv5V/ra71f9ccP+
         4gbXolyHddOCziwu7elXX61pPCx44zSeTWqdkj1cV4jTcFsqPkAEKag8lsHyrXjZts6F
         X7VPRbkQq1195rZ8t5WXZm8womRzfFfJ0qHyI9TBeoiU1seJUOfTAndUnQ2YhqugPqH4
         8TSNK4cKtiRRYjJPTMQuVdaFvL5IkwbNjCDBeJ5bQVXShVN4aAeOjkcI+JpocH4wlvM2
         Ledg==
X-Gm-Message-State: AOJu0YyiCuR1drdd7VPQV3v3QbtVtvupHTsWe3HBk04rRWr2F8yxiFrP
	cPqM08CFBiZCKkp95LZ2TT6Lbns/yMCuMul0XkeSixSYFJlDLd5Qs8DHwcIktCWZsoTlYBZIPOo
	Jsjh5L4cRBgXs0jU7XBv89QzGdR4Aa/uMt7vdjYHOBm8cpoZjq5ERT8H2Q3+l1s0TcKzSSU7KPw
	7EEKpzOt3cRVPCpx3W3c18DuQF2szY5xGEJENLaV6x5EP/YTNXMxSp
X-Gm-Gg: ASbGncvWt4a/EoGJbv7mkjw0hg00Vg1ex7tjgqgMTPvpkfm+kmouObqJUjrWyWQjjAB
	wNYQ56HQ/NhbCHuF7cAf4Jr+7kKED9gzMyq9ATWZR0j1YrSBeY7lbrETfQ+zmDbAL7CU1WWHfSJ
	0BZeJrJMhVfzoRL627fWadRUi5+Vj14LqBYnxZFRUvqlBT6ADBUyaJcds50NdCwA1uAkvmREeDo
	482fwU5/zMxStfedQV44KSE84CpjWWey4XMvzYeFHhCsDTudYjRyO6xsIwKWFeAtwl35IvS3Z2W
	gAtx8QE+Vvyzv80XrFdMH/SE1PssJinPsUDrDGZOu6TZL0daZyAgRuEoSgGHagD5ZE8DDGUU
X-Received: by 2002:a05:6000:40cd:b0:42b:4803:75e8 with SMTP id ffacd0b85a97d-42b4bdb44c0mr2045474f8f.43.1762955210138;
        Wed, 12 Nov 2025 05:46:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGtegqQRgG2PuPH78B+pTtGuCsx0iDiRp9mW/C0UFyZRVx6PjScNYka/WIPAXS75IgqcxeZmA==
X-Received: by 2002:a05:6000:40cd:b0:42b:4803:75e8 with SMTP id ffacd0b85a97d-42b4bdb44c0mr2045454f8f.43.1762955209617;
        Wed, 12 Nov 2025 05:46:49 -0800 (PST)
Message-ID: <e5945fa7-191d-44b5-951d-d4d70ce9dfcd@redhat.com>
Date: Wed, 12 Nov 2025 14:46:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
Cc: Red Hat Product Security <secalert@redhat.com>
From: Zdenek Dohnal <zdohnal@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: KScscmD4w8nq6KYxMRai5W5VST8XLq3lcGlLJRkTWdU_1762955211
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2025-57812 libcupsfilters, cups-filters 1.x: Multiple
 TIFF-related issues in libcupsfilters

Hi all,

we would like to announce CVE-2025-57812 which is fixed now in 
libcupsfilters and cups-filters 1.x project reported by 
big-sleep-vuln-reports. The vulnerability includes the following issues 
regarding TIFF processing in libcupsfilters:

- heap-buffer-overflow write in cfImageLut()

- heap-buffer-overflow in _cfImageReadTIFF()

- multiple out of bounds reads in _cfImageReadTIFF()'s scanline buffer

The CVE severity is Low (3.7/10) with following CVSS v3 base metrics - 
CVSS:3.1/AV:A/AC:H/PR:L/UI:N/S:U/C:L/I:L/A:N

The fixes are present in libcupsfilters project as commits:

https://github.com/OpenPrinting/libcupsfilters/commit/b69dfacec7f17628178

and in cups-filters 1.x (cups-filters project before split which 
happened in version 2.x, which moved library code into libcupsfilters):

https://github.com/OpenPrinting/cups-filters/commit/5122052dd8f06949242099401c59f6c3b14e61c3

https://github.com/OpenPrinting/cups-filters/commit/cb927006747b797aa9163cd0cbd41b9bbdf05db0

https://github.com/OpenPrinting/cups-filters/commit/719c557c9a29db32b855e6e108d7f4e7c5397613

https://github.com/OpenPrinting/cups-filters/commit/7bd588a1fc5c99ac0b1951beb1b54b438137a7b5

https://github.com/OpenPrinting/cups-filters/commit/5e5f1c5d46a043c57cbbe6e043aa95896d9c40fa

Detailed information about issues are in published advisories:

https://github.com/OpenPrinting/libcupsfilters/security/advisories/GHSA-jpxg-qc2c-hgv4

https://github.com/OpenPrinting/libcupsfilters/security/advisories/GHSA-rc6w-jmvv-v7gx

https://github.com/OpenPrinting/libcupsfilters/security/advisories/GHSA-fmvr-45mx-43c6


Have a nice day!

Zdenek Dohnal

-- 
Zdenek Dohnal
Senior Software Engineer
Red Hat, BRQ-TPBC

