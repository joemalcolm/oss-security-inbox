Received: (qmail 22171 invoked by uid 550); 13 Jul 2024 11:59:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30479 invoked from network); 13 Jul 2024 02:17:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720837022; x=1721441822; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:references:subject:to
         :mime-version:user-agent:reply-to:from:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iDFWe9zuHLEp7WuH5MR2RyDpifPqjkHH4OAkIxZnfA8=;
        b=AHp3AXf1q6uFdzdDK7hBKnARzk0MJ7nFoA4O9bEL03EobMLPzVbOq2a4h+DWOyOc1u
         G0dQOBJdz60igvkVY626AGeqYIa5oJgRWH8YiEn2nRrVUeOIi5YGIBt7afd/VtqXlovh
         5tdRVDi4Y/j7epQG1nuG5QyZK3S/7fkKaCNcw4CcyDPW5EQgu1TkoHvHh+NtrCNGeanY
         QFUV5bsWI7ASR40nBCmFPDpCbfXnjUzqyrvnv3iD9Qbo1a9Z7X4Ag5n2+kRMpYOjGCBy
         AWOcElcF+x+4x0XwasHLfrCnMH3QYrpJSJY4/KgNwF1Xc9P62bS/PbstbX4n/bXuKdjO
         1dXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720837022; x=1721441822;
        h=content-transfer-encoding:in-reply-to:references:subject:to
         :mime-version:user-agent:reply-to:from:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iDFWe9zuHLEp7WuH5MR2RyDpifPqjkHH4OAkIxZnfA8=;
        b=jJ+nwLFiwHyztmdQIzzcyJdpw3JDvl+O6IAbbOahpXEdtExLQk19G9uIn3p3+mJN6M
         aTJZ9w0AveWhehLZGDWcqFNTdVlW+gpULcivYrlPnK8jwSoDQ3DHDRVjL9umcwJAh/NR
         3AXgsRfmeZNFo5z+cunjBzVmhtRQtJRqipfWV4K/4zadY7XVsCJk3ePSml9CH0DI0SKe
         2n1J09YIonQCHolOxdof+UIAwga70ixedmrucWGvpe/yFUCzsoEKmKEk8wRSopPKpxN1
         YtuJuO0BQfV5vxTkqOHfMcg7BL8XTADFBS8xgJQrLP4gWeCNCgF6zKw927O2/1W4JEpM
         CgUQ==
X-Gm-Message-State: AOJu0YxpeNklQ3bWqjX66DsJ08OLO6UimOGaPE5oxWXo3ByKUErSdcL6
	SGnfnw9oeRGHiQuLUwNMG8vQK4hcNi1NuH8HHFPYWeZELMnHn5U6EDE19g==
X-Google-Smtp-Source: AGHT+IEBGgo3QMI/Raq52PVRqIR7iMsdfbNc4KlIOHbVId2m+L5HvYCCdXkCUebUVEOfamH42VyKJg==
X-Received: by 2002:a05:6808:170a:b0:3d2:17c2:8301 with SMTP id 5614622812f47-3d93c039304mr15188442b6e.30.1720837021982;
        Fri, 12 Jul 2024 19:17:01 -0700 (PDT)
Message-ID: <6691E39C.8090600@gmail.com>
Date: Fri, 12 Jul 2024 21:17:00 -0500
From: Jacob Bachmeyer <jcb62281@gmail.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.8.1.22) Gecko/20090807 SeaMonkey/1.1.17 Mnenhy/0.7.6.0
MIME-Version: 1.0
To: oss-security@lists.openwall.com
References: <30400489-6c59-4133-a3ce-fa0c16b63c02@analygence.com> <6771f9536d49185fc8f1ea9905c13cf4dd8776d2.camel@debian.org> <20240710214412.8IXhxf8b@steffen%sdaoden.eu> <83F0CF09-6257-4949-9332-E6990CFE14C7@dwheeler.com> <20240712170603.XJ6iwd6q@steffen%sdaoden.eu>
In-Reply-To: <20240712170603.XJ6iwd6q@steffen%sdaoden.eu>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] ASLRn't is still alive and well on x86 kernels,
 despite CVE-2024-26621 patch

Steffen Nurpmeso wrote:
> [...]
>
> So if someone says "this  was a source of
> denial‐of‐service attacks" then i need to wrap my head, and it is
> not as if an in-between-the-lines reference to MAP_DENYWRITE ring
> any bells except that i think the flag has been removed.

The manpage indicates that, long ago, a mapping with MAP_DENYWRITE would 
effectively make the underlying file read-only, even to root, for as 
long as the mapping exists.

>   And then
> someone who seems to know uses it nonetheless in a small showcase
> program, likely trying to say even more in-between-the-lines.

That commit message seems to indicate that the program was using 
SHM_HUGETLB when it should have been using MAP_HUGETLB, those constants 
represent different bits, and passing SHM_HUGETLB to mmap(2) will be 
interpreted as MAP_DENYWRITE, and therefore ignored.  Presumably, there 
is some other syscall (likely shmat(2)) that uses that bit (represented 
under the constant SHM_HUGETLB) to request huge pages, and the test 
program in question was supposed to get huge pages from mmap(2) but was 
not actually asking for huge pages because it was using the wrong constant.

In other words, MAP_DENYWRITE was not being intentionally used at all.  
Another constant, for a different set of flags, that happens to have the 
same value, was being used, causing a quiet bug.  (The test program 
would have still worked, but was not actually exercising huge pages as 
intended.)


-- Jacob
