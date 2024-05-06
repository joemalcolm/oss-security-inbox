Received: (qmail 6018 invoked by uid 550); 6 May 2024 19:32:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32114 invoked from network); 6 May 2024 19:30:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1715023836;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:autocrypt:autocrypt;
	bh=uahJwny5tnOgTNlAqsHboxoJpj4q282MJGJr47RhiEs=;
	b=gijOVmQ5lAvZe3UNJpmhyx4SHJn9XQ/4zR1IB958sZgUPKCIz/H0Dh6F5QQ/LkNZB60+8R
	ygHRHyQ0HWrv/Wzp4Nj/9zhWAKy7JdQ79NytAJo6ZHqJ7TGTwn4vEpGhrWiDhF6TITlZmZ
	XQcjn/SmDTwB8f7ubGt2BIO+/ojc2HQ=
X-MC-Unique: 75gWT8fHOxmZUiH-oHVdsg-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715023833; x=1715628633;
        h=content-transfer-encoding:organization:autocrypt:subject:from:to
         :content-language:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uahJwny5tnOgTNlAqsHboxoJpj4q282MJGJr47RhiEs=;
        b=mDd2JzIyzLhYA+nY5W1CgH4rclBKQAksRR0evQ/RZOkz/01g+/143TEVABE706vQQr
         Z2EtQCrpYYl853+z89eCGRY0NjicnYSmG+5MmBaaWwVRovXpOMW91S98K4ygxhz4Z8/Q
         7LteWbQmiis4WqFOURWao7K4NAmF+hxViUP+vdZ62iWosN39ltEGgEFnTL2LbtvudA+b
         G8rIeIBaf2wOvZf+f7HGKMh6W6MB0SQN8LZ6fw/JhAPBNvBA8ae1ms2YwLKj94FqoQui
         xY1LLmr7wWM/oGspgwsyfnh65S3n4lfItT8ItnNp3YcNtVCbw1T5e9RPcPa8Oj+dRzxD
         eBew==
X-Forwarded-Encrypted: i=1; AJvYcCUh+SFOnEV3zrjB7VzKtg5Ngfj+FQJ8Qw35tCqbZYJkTdfNJmXuVnaks1eR7BtpNlH6Z3gbEKQK7CYcsLmWjSQWA05mPVMXXa219Wzsdkxd
X-Gm-Message-State: AOJu0Ywvl5Ydt+jH2P4a8kIdf5LHTNAbPo78MhpdkW+rBV4F/VqnfeDx
	vCTq7Eln46vXRA8ueCZl2BLHBlg10JL2t6Xkuvz+JuqqRmy+PljYBNQEFcA+C6zRCL+VOaqVNwS
	iaqhky1yUV9nUkAwjLcvZBBMeyr7VcQaSO8QfcqIWv7OUB1l2s1ynEhoYc/K+HB9HDM3Ae6ZcEQ
	==
X-Received: by 2002:a05:620a:20cf:b0:792:950c:a444 with SMTP id f15-20020a05620a20cf00b00792950ca444mr4666371qka.30.1715023833246;
        Mon, 06 May 2024 12:30:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH3hP28EW/EPxJhDzWxlJ60LjtPt4bPov4HumNgYrXsb3RUfOhjRhFABSOJUgFoX9FFn0ujzA==
X-Received: by 2002:a05:620a:20cf:b0:792:950c:a444 with SMTP id f15-20020a05620a20cf00b00792950ca444mr4666341qka.30.1715023832652;
        Mon, 06 May 2024 12:30:32 -0700 (PDT)
Message-ID: <5eb84ce4-86a5-44ca-8c78-89e7bd1c8920@redhat.com>
Date: Mon, 6 May 2024 15:30:31 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: libc-announce@sourceware.org, oss-security@lists.openwall.com
From: Carlos O'Donell <carlos@redhat.com>
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 vjq6hMJAjA==
Organization: Red Hat
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] The GNU C Library security advisories update for 2024-05-06

The following security advisories have been published:

GLIBC-SA-2024-0005:
===================
nscd: Stack-based buffer overflow in netgroup cache

If the Name Service Cache Daemon's (nscd) fixed size cache is exhausted
by client requests then a subsequent client request for netgroup data
may result in a stack-based buffer overflow.  This flaw was introduced
in glibc 2.15 when the cache was added to nscd.

This vulnerability is only present in the nscd binary.

GLIBC-SA-2024-0006:
===================
nscd: Null pointer crash after notfound response

If the Name Service Cache Daemon's (nscd) cache fails to add a not-found
netgroup response to the cache, the client request can result in a null
pointer dereference.  This flaw was introduced in glibc 2.15 when the
cache was added to nscd.

This vulnerability is only present in the nscd binary.

GLIBC-SA-2024-0007:
===================
nscd: netgroup cache may terminate daemon on memory allocation failure

The Name Service Cache Daemon's (nscd) netgroup cache uses xmalloc or
xrealloc and these functions may terminate the process due to a memory
allocation failure resulting in a denial of service to the clients.  The
flaw was introduced in glibc 2.15 when the cache was added to nscd.

This vulnerability is only present in the nscd binary.

Subsequent refactoring of the netgroup cache only added more uses of
xmalloc and xrealloc. Uses of xmalloc and xrealloc in other parts of
nscd only occur during startup of the daemon and so are not affected by
client requests that could trigger an out of memory followed by
termination.

GLIBC-SA-2024-0008:
===================
nscd: netgroup cache assumes NSS callback uses in-buffer strings

The Name Service Cache Daemon's (nscd) netgroup cache can corrupt memory
when the NSS callback does not store all strings in the provided buffer.
The flaw was introduced in glibc 2.15 when the cache was added to nscd.

This vulnerability is only present in the nscd binary.

There is no guarantee from the NSS callback API that the returned
strings are all within the buffer. However, the netgroup cache code
assumes that the NSS callback uses in-buffer strings and if it doesn't
the buffer resizing logic could lead to potential memory corruption.

Published advisories are available directly in the project git repository:
https://sourceware.org/git/?p=glibc.git;a=tree;f=advisories;hb=HEAD

