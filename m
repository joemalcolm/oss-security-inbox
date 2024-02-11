Received: (qmail 7958 invoked by uid 550); 11 Feb 2024 20:06:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7938 invoked from network); 11 Feb 2024 20:06:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707682124; x=1708286924; darn=lists.openwall.com;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nHxYSuTRwgtTijP3a7hZdmKuNM0aC1JHMstj5Kj5XNI=;
        b=KStXfNnRaNvxuLmIIOZ1Kpcihc/IWqALACZMPb6mkXqdmj2VKM4LVC+2sicI79JxDo
         oUZMwsbt83CHK33sDEi9AYEVtQAKJZE2m9augVgGH3xQvFEDIY1EhayhgBeuXzJao1C3
         9j5K6aSCfAb2kaZf/aJviVuMv0KpY2vE8N4QeRM/orj4VwBziureKcqogQd4aBNJRxrI
         5eeMSyOgjMY0BSxs/IaIPeUp60TRCEaaD4mVdCGlWqfWpNAL+VV7ZTGCzW76tixeEmQT
         B+JkUPYLJAMZQY2mSa/Lvvzh89jlf+2ThCOPz8bJT6TVkYTua6KvjuGhjvVdAClypNEY
         U7qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707682124; x=1708286924;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:sender:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=nHxYSuTRwgtTijP3a7hZdmKuNM0aC1JHMstj5Kj5XNI=;
        b=pK5U1rhLpkKFctomnFjBzDR08k+gpMz0Ysq6gtfnJxKTqCiiD9DinPskl2rxR1oJK4
         gXsHF+JGbfBn+ZbiZ6ZZuqP0bHWIddcM3oUmTRZGA1/l7nDGu9VOckJ1/h9juioQT/vc
         XF/HKxLj5FtYmNX6aH9J/SX3oJJSJPU/adeN55CkDePvBbby6dP19bL72i1BreJwDWjc
         74Jy/d+e+tvcvSEcqBsUJq6UR6NhApUreIMgy0Gik6hqjfy1mFGWRe4/upwiCT4tcIi+
         tHdXRFFNhp/6m8+tbAFvwP5mxmUuJueU5DYtoFW9xFYKbGhQVxg2ZM+iLTLXQv+jxjX9
         fcpA==
X-Gm-Message-State: AOJu0Yy40cvm1vm9LkuG7hUWztpud0Aedgi/lu5bXctjpYMiILgbAMNI
	/YyYcUtZ7ve+CMTrh37ydFILFEvqEwCWFr9ydu93Tqy+Zq7gnOEHa3dfdj4ob2g=
X-Google-Smtp-Source: AGHT+IGxcK9nXFQQPjanGqDGrgEhcolVivnf5HzmtYm7YpYegUmlRZPzmqWfzwC41b/aKuSG8JEqdw==
X-Received: by 2002:a17:907:9715:b0:a38:4dc0:22f9 with SMTP id jg21-20020a170907971500b00a384dc022f9mr7636183ejc.4.1707682124225;
        Sun, 11 Feb 2024 12:08:44 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sun, 11 Feb 2024 21:08:43 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <ZckpS1D7bfqyJeq4@eldamar.lan>
References: <e24a80c7-33ee-408b-a86c-10eee0fe17a9@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e24a80c7-33ee-408b-a86c-10eee0fe17a9@oracle.com>
Subject: Re: [oss-security] libuv 1.48.0 released, fixes CVE-2024-24806

Hi,

On Thu, Feb 08, 2024 at 12:15:23PM -0800, Alan Coopersmith wrote:
> https://github.com/libuv/libuv/releases/tag/v1.48.0 shows the release
> yesterday of stable release 1.48.0, including a fix for CVE-2024-24806.
> 
> https://github.com/libuv/libuv/security/advisories/GHSA-f74f-cvh7-c6q6
> offers this information about that CVE:
> 
> > Affected versions: > 1.45.x
> > Patched versions:   v1.48.0

For completeness: The range of affected version in the above was
rectified after contacting upstream:

https://github.com/libuv/libuv/commit/6dd44caa35b4697d7e8c1b9fa0ba8e95d73355de

did introduce the support, which is in v1.24.0.

Regards,
Salvatore
