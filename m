Received: (qmail 6069 invoked by uid 550); 27 Oct 2025 21:37:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19750 invoked from network); 27 Oct 2025 21:34:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761600831; x=1762205631; darn=lists.openwall.com;
        h=content-transfer-encoding:mime-version:user-agent:message-id:date
         :references:in-reply-to:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DTFW0RTy6QLVg+I2gKzdxVGQYhNRfMffsyBwagIFREM=;
        b=nnt6WaRqQAjSTnUUBqGBr+XDhTGfKis+M19a1M8uI6wmPCKtZd7bLT0W6IvwenblqF
         yv3r1x5SMAh/fVqGppRP5dRZK+QgyhgcNXGC3F5cbZ2H2jPKhG9+9IPRvLkHnJVeFn5i
         d8sllvdUWd6bKgtqmEbo8ERyka7YgceRIcR43+FAHu1gmRgFGsEjNV5sO1a8xTrSkiB9
         zaQrGUVWV13p9p8kMuv0TaoiIxhExs7FjYfJpOBNnqF5T+e4wWuw+jssepo1fZmyWMRE
         0fP76eTL/ECU1l3OjJdMUKb4zFpIPPNUZ8W/r9sRwcBdvOhCOu0Ro/rNhUvMGi9qYmVp
         a5hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761600831; x=1762205631;
        h=content-transfer-encoding:mime-version:user-agent:message-id:date
         :references:in-reply-to:subject:cc:to:from:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=DTFW0RTy6QLVg+I2gKzdxVGQYhNRfMffsyBwagIFREM=;
        b=IFZOZPOCEiHVSRi1kRrkkoMKitilxvjWN819RPnwyzrZesvj3r+bszsv1rBir9lbK7
         ZR3HF3E79JkhqF3ivouBWo38ocHj01TlKyLhursMOxXy0sOxjJ5fBsAaPc5EUm4rCFNG
         UCXtzC1WR4xDk6WxKvWK1Rsk5U1KNEu4hI37z+C6iNMVImO0HGBWLtNRmbS/q8iDToxg
         bBEcKkEhlVl//fQI7kubeJPbWkgWBVkbNJaE401AkcqHikxY7OymnKQP88+rKzK61Lbf
         saIdaCLtNTBdrUXwmKDt5QvVGg6OqAY6JL7NLGMBZwO4ods+zNLYX/I9hTgF9MBbxeUl
         pt4g==
X-Gm-Message-State: AOJu0YxppKkOPtdGV7pWIQB+SdV0ssc0HCKHnkSkQ7f+jPBJX36BKwrj
	GEfhGWT443MJYx+ulpVWSvdp0+62S0r4DviOGoxOl/rrJgwWGxZOD9AfhMA2WjVq
X-Gm-Gg: ASbGncuGxAerwKY3FgY/Euyw5OaQZxgDkuv4FNFwQY2ld8zzFmSpcXYutoKE5ickZLo
	Ho+hH66pC6+ywEgyDzwemghvtRXdLd1yIww2h/shsh3d8Q0YCBqEZ1HhtVzuRo3lAxkoVbh9kG4
	sa0xl3b7odLtfdM/Z4PDb0Honq8AhgaVZgMnoad3f1zFANzmQhGt5+wojErrYqPlFkDzLU5pBOt
	bdqgDtYn+Xyfi99w51CaNmBqwjgqXMthV78D9abwlXABsXHJRfyiCPbIApBLvtvwc5VjLJc+Ya1
	SnEZfrl2rhdoVYZFbyCJCNdyNM1KIy3RPQwoSSGRFSLT4L4d3MwC+Dxy1OhRt8TjGHsJCNF8vf2
	spdst/Gi8ljRoWImH3KpNYiZSXiuPzlhO+d5OU4dVneZbql/c/waDj9Qr+QFN9PvAxTV83Ha8B+
	D+CT8=
X-Google-Smtp-Source: AGHT+IEm6f5lSWJTa+Cu0MTBw4E7T+c6AsfdV6oZ2NBT3XPdY8ng0hg+O9BcF7+9VFa8j8/HZ5CAUQ==
X-Received: by 2002:a17:902:dacd:b0:290:af0e:1183 with SMTP id d9443c01a7336-294cb6746c8mr12543335ad.51.1761600831253;
        Mon, 27 Oct 2025 14:33:51 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: Moritz =?utf-8?Q?M=C3=BChlenhoff?= <jmm@inutil.org>
Cc: oss-security@lists.openwall.com
In-Reply-To: <aP_GUo51BVldIFVQ@inutil.org>
References: <2ccbcc13-fc25-484c-a34d-56f27ac87db7@oracle.com>
	<aP_GUo51BVldIFVQ@inutil.org>
Date: Mon, 27 Oct 2025 14:33:49 -0700
Message-ID: <87zf9c2fnm.fsf@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Questionable CVE's reported against dnsmasq

Moritz M=C3=BChlenhoff <jmm@inutil.org> writes:

> On Mon, Oct 27, 2025 at 09:34:03AM -0700, Alan Coopersmith wrote:
>> Among the new CVE's published this weekend were these from the VulDB CNA:
>>=20
>> For all three bugs, the documented "exploit" requires "Replace the defau=
lt
>> configuration file (/etc/dnsmasq.conf) with the provided malicious file."
>> and if you can replace the server's configuration file you don't need to
>> play games with putting invalid contents in to break the parser, but can
>> simply change the configuration directly.
>
> The same nonsense also happened for the Kamailio SIP server (CVE-2025-122=
04,
> CVE-2025-12205, CVE-2025-12206 and CVE-2025-12207).

GNU Bison got 2 CVEs assigned that are bogus, CVE-2025-8734 and
CVE-2025-8733.

The report for CVE-2025-8733 has a stack trace that references files
that do not exist in Bison. I'm pretty sure it is some AI hallucination
mixing up Gnulib and glibc, since the stack trace looks like an ancient
glibc version which had assertions there.

Collin
