Received: (qmail 30699 invoked by uid 550); 8 Nov 2024 16:53:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15626 invoked from network); 8 Nov 2024 08:40:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731055218; x=1731660018; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gXCV+6dOUqtvh2bMX601Hin7WyS2wC8izRnI69wOKpg=;
        b=AXbdqN+4X+FR/NjVJMROw/wZZsRhdLMFkC6JO9qecuZRbtLR++ANwZoYV7pxyi7HnU
         S2ZYbuhYRD2Dcv3untXr/mYlppdLOcV34PPUxNwgeiKPv9yaShtWWjA3vfSUNynbLWD0
         5Y+bVJ3Ptcwg29KGwy6CdUzXWC3crE596ObjZVd3DV/Y3mWs7MRQgaJKpuK5elnuAL15
         PInuA08DoRyKEmQ+sy84czvh+Q3tOpEzw7RPbqgk5zul7xESFem5N4C62BpIcCpMB5O3
         y4sxIgJ+2H+gfho/gwM+Ykn/L/V1K/9lxVTvA94hx62mcTB01LREXllsEUvfwProsGkU
         FuAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731055218; x=1731660018;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gXCV+6dOUqtvh2bMX601Hin7WyS2wC8izRnI69wOKpg=;
        b=B08cw+qq3nzQgeQEqU9e7IaO0Oh7TSku8pH7N+46LZ7DwcEoQXMDge/FHq/MNGCfNP
         52CvKJYSdHZnGUTWcRJ1tyMJB0iDk8Hsqi3cXOKQXUh5u0VptvalKSLvImyRtW5MxIAZ
         5BeTcTmMx1LfXTx7EnFWhbL1x2q85HQdxa66s6ONzwU6pKgSwB7MBvlCmHyQ0RMPOK/S
         jysVedJ8hi0bj+x8XhpG+TiCsPVxtWnNdA0kYdtl7TqU1Xzp9Oa5LWZv/zNLTC0gSxSQ
         aIPM9IyrvlHBoTjBPAi7QOvlrNDuuVoJCMQijGrRTUqVpyaPpOLjkct3uq5fJG2YYtXY
         z3kQ==
X-Gm-Message-State: AOJu0Yylb+V2PbD54EXtgKVd1gx4p7TYIYpg7htjn/3+rCanj9EV03xr
	jbUe3qFzY2ADlSS8AfgMZoOpn66SFgTWeTq7BiLO7PD6Wz2m70E/+HYQFc0/ykV49EipxUJU+pD
	qz+Ye9lT097WARDuxn82jUaJfm9e3Qgak
X-Google-Smtp-Source: AGHT+IG6Jg+6hVxgaho8EaU9yEDZhQjWQ8k6uuhj7eHrWqYyOzzSlKJlGzBlDstlLl/dgyshqCJcqbXcdOErzod4RfI=
X-Received: by 2002:a5d:5886:0:b0:37d:524e:9431 with SMTP id
 ffacd0b85a97d-381f1848a5fmr1573609f8f.57.1731055217851; Fri, 08 Nov 2024
 00:40:17 -0800 (PST)
MIME-Version: 1.0
References: <20241106041215.GA4432@openwall.com>
In-Reply-To: <20241106041215.GA4432@openwall.com>
From: Georgi Guninski <gguninski@gmail.com>
Date: Fri, 8 Nov 2024 10:39:43 +0200
Message-ID: <CAGUWgD_T4vUhBfkmjm+8ELcuiOD9dx1vSC4HnKG88Py7ip+zPw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] shell wildcard expansion (un)safety

This is known since at least 2019, but the distro list can't tell
vulnerability from a rant [1] [2]

`grep text -- *` is not portable solution, since not all warez recognize --.

e.g.:

$find . --
find: unknown predicate `--'


[1] Shell wildcards considered dangerous?
https://seclists.org/oss-sec/2019/q4/133

[2] https://www.linkedin.com/pulse/careful-wildcards-linux-rm-georgi-guninski-ieaif
