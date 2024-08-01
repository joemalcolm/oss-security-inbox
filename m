Received: (qmail 5180 invoked by uid 550); 2 Aug 2024 00:00:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7669 invoked from network); 1 Aug 2024 23:06:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=yngvason.is; s=google; t=1722553563; x=1723158363; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+R0O02ExO9sy5vQHxTdPDsjrzO/ig0FxQ+vtIlsQzAw=;
        b=Zr+l20GLlFgAG0EAip+7TN8N5gfexeJcoDHPVrjnxo6rF9I6cCaeUlpx1b7QWBrJK4
         PF0bd0issklTiwi7yHEEQO0/8Pj1uSqAqbVmS76rQy8+IbkqkicoPFzd03M36XmPTu20
         l24lxnAjkSeYwgDXZ/gK4a3gobosShfJPU4Lc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722553563; x=1723158363;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+R0O02ExO9sy5vQHxTdPDsjrzO/ig0FxQ+vtIlsQzAw=;
        b=B9oaLdGOkcJBklWNmQ5zMYV6UtY1V/K1LwNdzbuSz/V+YNC/W+t5ENIInuLA61/mQ6
         cj2aj1Kjgoezb0GInKpbg1O+gk/3Shg9HyXH+1YL6sS27V2ATBkxRa8RaOdTNLB/fYM7
         qT4zd4h6TPP53FUvAvpBBxEmVs4MPkFguspOxWVEOl0qh8SoF3Dcbr11jOII8MrgyQFH
         Hsudjn14KJVm/FJOBr15Xrj4UPbVBoobUUQNDflVCQTtLQxSWcbkdX4ibqDrITLiRHRn
         NxPE45wxwsXjx7Aow/IWUgIeONF03xN7ZW4q21xCLLERFVl3hSeQHaLeX3/UxY3U82VM
         Bn4w==
X-Gm-Message-State: AOJu0Yygkf6yUPQgq3N1VS+Hq8dBKgskrLAg1ROsimR8yRuji0yHsNvl
	DHAlwpKjmV3dnDkjvl+DoBslgrtHzXk/jhFwhPF+Sq81KySn9zJcZ+Vh2rtUrS94U2wn+C3okiD
	Xd17DNRmvexOqzqK/tKq3r0WZiUr0+qJJKq6IFZr/MKFS4BKlC8wV5Q==
X-Google-Smtp-Source: AGHT+IGBRciev/Gl0cQf9n1U9lBXDA7cKGWsHWuneqBFps8HAYfOQ+HmHD/SMZqeWUam2A/YwZhrdH5ddMMzp/DgdtM=
X-Received: by 2002:a05:6358:50c3:b0:1aa:b7fa:4f59 with SMTP id
 e5c5f4694b2df-1af3bac330bmr156878255d.30.1722553563548; Thu, 01 Aug 2024
 16:06:03 -0700 (PDT)
MIME-Version: 1.0
From: Andri Yngvason <andri@yngvason.is>
Date: Thu, 1 Aug 2024 23:05:27 +0000
Message-ID: <CAFNQBQwnnA_=sZCvYf=sRzz2SXfqJB5_JEFYjCC+pcGekN9WFw@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Dane Bouchie <dbouchie@iradimed.com>, Travis Wise <travis@wavesquared.com>, 
	security@raspberrypi.com, Simon Long <simon@raspberrypi.com>, 
	=?UTF-8?Q?Moritz_M=C3=BChlenhoff?= <jmm@inutil.org>, 
	Salvatore Bonaccorso <carnil@debian.org>
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Neat VNC Security Vulnerability

Hi,

It has come to my attention that there is a security vulnerability in Neat VNC.

I've released a new version that fixes the vulnerability:
https://github.com/any1/neatvnc/releases/tag/v0.8.1

Regards,
Andri
