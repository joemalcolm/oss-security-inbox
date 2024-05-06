Received: (qmail 12218 invoked by uid 550); 6 May 2024 10:27:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3121 invoked from network); 6 May 2024 10:25:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mind.be; s=google; t=1714991099; x=1715595899; darn=lists.openwall.com;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QUsAdEQRZvp3s997svKqnvR6wmXgNdL+/YCdf1T3gRA=;
        b=FG9fvOLU4Ky1u4tYFGItpWXDZy1Mjf3AA3LY/S1ORmNWzWbhkNDVOdgKnUXAjGZin/
         rukLRYdba5xSaIhhHaB4G1pwIsB3dfi8tZFypHMQ2/OxXabmu1CCnRVleOsfavgXI6gV
         YPRXbp11G5710rZhlu35Ak2Gp4ImyECAfBtHCfhHaOO5TlUDct6rkVjt/gEpYycXagyA
         0k96ZUVfqDumlXZ83BKLnkAXv5Sfhsy3wq56XomFGO+fmCBRhWP98S1n10czUCInJU01
         n7L/q5QYZJpsxfy3GHea++IO+kYLFcrxZ5Utb75URmkPJZ+xe80MG072zRv8YTj2zkm1
         Qy8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714991099; x=1715595899;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QUsAdEQRZvp3s997svKqnvR6wmXgNdL+/YCdf1T3gRA=;
        b=B+9VHrTRNfalPN1LFKzONiOOdxXX7l6Ek84P6qtGWKj8B7O6Qwfyz6SLwsIBfop9wT
         yifTm3NGhKK6j3Zgql7np45O/aGCzdvHIYVwDFAoX9LZ7Eme8V3MlI60r105Orx97E3z
         Qx3o5bEK5bCJAerXkP3Zgj+xXzwLor9W2eW3qdB+quqHA4oKYTz8w9yAFRppyj6sASE1
         GNHpvQ+ZOhNYLNXwN+h5vsYx9E6U+eZubE+/VRnVbTy65ycFecV9RgFidQ46Jb8ntGdc
         zRpDmh21LmEMEifWSJ/vMWymYCDxd/kSDr8cQCUiT8IPX7l4P38+w9MunIBR7MKnXxgB
         Rvsw==
X-Gm-Message-State: AOJu0YwZdy68xs8OrMvdO+c8Q3XdbbmjznSh2yIS9B7m1ugWjFw6aOhl
	FxR34NxNdVeEoE0Fx+3tsFNd9oM48eiCt1ZroDS5xJXsxyr46IGnnjalJSlFahbtEWEP7VggL6+
	aKdo=
X-Google-Smtp-Source: AGHT+IE7N7PzkWW1gYO7NcD+bKDbdkNLvUJ4vAa3Ts8gGVr3/tB1hxpRLqbo9u8anf9n6Nc+DBa8UA==
X-Received: by 2002:a05:600c:3596:b0:41b:bb90:4bf with SMTP id p22-20020a05600c359600b0041bbb9004bfmr7364145wmq.18.1714991099138;
        Mon, 06 May 2024 03:24:59 -0700 (PDT)
Date: Mon, 6 May 2024 12:24:55 +0200
From: Ben Hutchings <ben.hutchings@mind.be>
To: oss-security@lists.openwall.com
Cc: buildroot@buildroot.org
Message-ID: <Zjiv9wzmqtfy8DYr@cephalopod>
References: <20240411152016.1185109-1-ben.hutchings@mind.be>
 <ZhgCNMQXfxPXuqvs@cephalopod>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZhgCNMQXfxPXuqvs@cephalopod>
Subject: [oss-security] Re: Buildroot: incorrect permissons on /dev/shm

On Thu, Apr 11, 2024 at 05:31:02PM +0200, Ben Hutchings wrote:
> Buildroot is a Linux distribution and system builder for embedded
> systems.  Starting in Buildroot 2011.08, its default /etc/fstab
> included an entry for /dev/shm with incorrect permissons (sticky bit
> not set). (CWE-276)
> 
> Buildroot 2017.08 removed this entry for systems using systemd, and it
> has never been included for systems using OpenRC.  So this only
> affects Buildroot-built systems that use sysvinit, and some older
> systems that use systemd.
[...]

This has been assigned CVE-2024-34455.

Ben.

-- 
Ben Hutchings · Senior Embedded Software Engineer, Essensium-Mind · mind.be
