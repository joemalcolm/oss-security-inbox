Received: (qmail 24364 invoked by uid 550); 8 Aug 2022 16:06:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12211 invoked from network); 8 Aug 2022 15:58:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1659974300;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tE9hPA/nrGaSG5fmXb22Hx90L0H5QpFRtT5Jcnj8TLk=;
	b=c2I0vHNmLANh4bYKK4YdYGNLiNbEnAZPJ4uKfdBLQCyLX85Hj4RNaqd3ds036qkx4wn+q0
	HQlWbgGDA7MpPyo4wEwDdlbaJxP7L7N/4lGSqfVRVhVaZjZ2cFhqcM5qKTtdLHFpns7rNt
	1QJQdIrzEVJYLh1CvL3UU/PJZUGjmmw=
X-MC-Unique: LyYNkBBcNeqMFuh3BDA58w-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:subject:organization
         :references:to:from:content-language:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc;
        bh=tE9hPA/nrGaSG5fmXb22Hx90L0H5QpFRtT5Jcnj8TLk=;
        b=mYed7p8tVi5i/qR/DGUt/hYB9S3j/RidZUz7SqUt5bTHI99D+Ur8fgL2DfP8dtiES8
         BxnrU9paIfawQmwcFpAUnD8Rf2wpOA4xr0R7VnVcvsIL2bsy0xhuzetI1/L36CRYn6od
         kcjt2UyX5+W/B/394nD9Xwsot44NLNNvHZKuUm5Hm+iZwGeeQuV/wdNzaTZ4DAxrVs+p
         xS6ZWQYCUU/TCBgA+W71FSir+3UTTLQROH7QsvjWi6nET4pRrgqQ2ibEmCJ52gGTFjJH
         pBovFXKeWCnygwQpPpjlWNuw5p0ZscyBHhWM3/VIHTZFDIfcM0oayn2vB/PdF/j7AOk7
         a9yA==
X-Gm-Message-State: ACgBeo2y8zrmQLWctZJ5VuiOlufD9ovj6pICpQTs5urP4J2Zis7Q7+mu
	PLC8yR/f+0Yr8HwClf/v82zK/MCTL66tgILjX4P+tPlpKeeKKM5wINnP+BggeAk74+Cci27q1aV
	FR53LmI+p5j/bFfetTirvzrIQQzTDbjZWfrFhVigTqMS7bz27jsGUycqaQqiAT8yoB7ObLHzr+9
	HH
X-Received: by 2002:a5d:4202:0:b0:21f:10f9:a968 with SMTP id n2-20020a5d4202000000b0021f10f9a968mr11463343wrq.231.1659974298106;
        Mon, 08 Aug 2022 08:58:18 -0700 (PDT)
X-Google-Smtp-Source: AA6agR6s8CwalJ3kXywcHWVw4AXoh/m3sGBh86wSIcJde1pL61+RAR2fb8ES9O38aXvKHX4hPCv9WA==
X-Received: by 2002:a5d:4202:0:b0:21f:10f9:a968 with SMTP id n2-20020a5d4202000000b0021f10f9a968mr11463328wrq.231.1659974297787;
        Mon, 08 Aug 2022 08:58:17 -0700 (PDT)
Message-ID: <2e838ffb-2a57-79ff-812c-3baf554e22f9@redhat.com>
Date: Mon, 8 Aug 2022 17:58:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
From: David Hildenbrand <david@redhat.com>
To: oss-security@lists.openwall.com
References: <1973d16e-bb3e-c5b2-74e0-cc2faf9db2bd@redhat.com>
Organization: Red Hat
In-Reply-To: <1973d16e-bb3e-c5b2-74e0-cc2faf9db2bd@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Re: CVE-2022-2590: Linux kernel: Modifying shmem/tmpfs files without
 write permissions

On 08.08.22 09:18, David Hildenbrand wrote:
> Hi,
> 
> I found a security issue (CVE-2022-2590) in the Linux kernel similar to
> Dirty COW (CVE-2016-5195), however, restricted to shared memory (shmem /
> tmpfs). I notified distributions one week ago and the embargo ended today.

I forgot to add an important part: Nadav Amit raised [1] that the dirty
bit is possibly problematic and essentially participated to the
discovery of this security issue.

s/I found/Nadav and I found/

Credit where credit is due.

[1] https://lore.kernel.org/all/20220619233449.181323-4-namit@vmware.com/

-- 
Thanks,

David / dhildenb

