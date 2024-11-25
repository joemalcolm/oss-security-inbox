Received: (qmail 5747 invoked by uid 550); 25 Nov 2024 05:07:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13357 invoked from network); 25 Nov 2024 00:13:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=evancarroll.com; s=google; t=1732493585; x=1733098385; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lliZs+UZ4PGcqCwj4CcIJMrlJqDb8VnDmn8T6WpthHA=;
        b=MKMmeDgiismXEgiGWFRdZcoY2vUZLha9GAziNIs5gVx6tZMlA6pLl51Sk1ShXVwFAi
         2gApi0tZ1EUQRUFLhigao5Yutt7HaUMYPg4BECMZVXTS8QKsvPt0naXf//YKGStbF02F
         Jw9BaaJznCo/PSmwjPoxKSiDfq9KdpxaYPoKicsRAg96u0Itwr4O9d+LI5pXh3ZYsmc9
         HH++sme1jPFwzC2ic+q8CcECXj+g6UqwZQQkkxGK2qHlQ61bxlD9COmzutQYXT1kM8S1
         TaLhM/sCTj9beL6g/g8nJEGDnq9G9Z1ynPnnDN+uLps2QPBgivV/R6yaWBHQB6/V+R/i
         TWRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732493585; x=1733098385;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lliZs+UZ4PGcqCwj4CcIJMrlJqDb8VnDmn8T6WpthHA=;
        b=RgifP7C6mNA9IG5e9Ha6OX+VZ4yO3T1QAFv2QoaAUr45S67vkVn65/NEbymyzNncXi
         8byCGY1kjjRX1ZjerE6UvA5V5rYCFk204I9dG/4+1KgpgIAeTABH6qmtNMua28zDmRmz
         IU3mQzU+WzM2kFOc5YFJqr9RWzMAte1KxVx+ooJM/DWObAVTxhXJfy8jJdwO9I8LQnPB
         +PqVcZXrVRxlk6z5iPpoCwuTcoOJIUyyUkdqAc7yugxChCWlJxAIG0Ht5BxHMOhBhkYm
         giDcwLXzH2eg6xLPOS2bAyFv7WmdPrvhwaCCc6CoHX5XU6k3Ff5qDcoDywenwqy2wYHx
         yDFw==
X-Gm-Message-State: AOJu0Yx4XvuJz+1tKud0m257HTSAJtr4xubPb33pH1VxTlCYSOjuf+BP
	8nAaAeKczKN6pfreZZTrnXGulgEOB16osq7v5OpQSpAfJj2mfMIeOkDGPKdUY8q9TSZqIm4mDi/
	sZNokqeuQmjpBJEL32L6Szqpt158kLomHgIh0oW6YpCee9yRIea0S
X-Gm-Gg: ASbGncuKhlx/T6qYVX0+d+TCdby1hp1o1lYEh283iLGP/FfVxJk8pfT83q1hT3OgAKF
	JYy7w4Qx5kK3JXGrX+oLnNk1mEzyVYBPh
X-Google-Smtp-Source: AGHT+IElN7nUwPZWjeUlUqEN84HupUZbThCj/2Kba61DBxty2L0RIPwNP7L+zBHQl9xiaDV0yS9pDeQM0IpfLCOTF68=
X-Received: by 2002:a17:902:cec2:b0:20d:2848:2bee with SMTP id
 d9443c01a7336-2129f762404mr131017695ad.16.1732493585028; Sun, 24 Nov 2024
 16:13:05 -0800 (PST)
MIME-Version: 1.0
References: <ykmy97joESH91bCHsZwXrM1OS3YcckmX8UcuxUQ6ogsxZjKI9lox0cTS-HuVaVUgn7fcmBdjRV4kdvZU3X5J6j8Ro1OJKzl1DHnka9f6g-M=@hexsys.org>
 <20240520120909.GA8629@openwall.com>
In-Reply-To: <20240520120909.GA8629@openwall.com>
From: Evan Carroll <me@evancarroll.com>
Date: Sun, 24 Nov 2024 18:12:29 -0600
Message-ID: <CAAiePB65qp8UeYHGZsH3g+mbCe76jCS=MJ5EeM4f=F2x-FfyDw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000b636080627b1983c"
Subject: Re: [oss-security] Article: State of Sandboxing in Linux

--000000000000b636080627b1983c
Content-Type: text/plain; charset="UTF-8"

A lot of words on that one,

Not sure if you're the author of the paper. But off the get go, I'm
extremely confused. I wanted to give my critique on the paper instead of
the technology. My experience with "user-space sandboxing" is kernel
user-namespaces. My interface to them is podman. It's not clear what this
"sandbox" offers that podman's rootless mode does not. I believe I'm in the
majority with experience in containerization. But you're grounding this
paper in "two prime examples of sandbox: Gentoo's sandbox and Exherbo's
sydbox" -- things most people have probably never used. This for me raises
the question: when would I want "Gentoo's sandbox and Exherbo's sydbox"
over kernel user-namespaces and podman?

I don't see that answer immediately and so my desire to continue reading
drops significantly. This is only constructive criticism, maybe I'm not
your desired audience but the title was interesting enough for me to jump
in.

--
Evan Carroll - me@evancarroll.com
System Lord of the Internets
web: http://www.evancarroll.com
ph: 281.901.0011 <+1-281-901-0011>

--000000000000b636080627b1983c--
