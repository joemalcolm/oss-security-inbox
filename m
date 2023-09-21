Received: (qmail 13618 invoked by uid 550); 21 Sep 2023 21:02:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13585 invoked from network); 21 Sep 2023 21:02:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695330146; x=1695934946; darn=lists.openwall.com;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PU2fg0djprK6Xbxxofgqg1SbLDEX/vvJyolyRTTp9bo=;
        b=Jv76QfYf1iyJJqA3lc4tUquWjF6spnsCfNXiZFnZ2LouqLpe3Qw+Ts7jyDHHcvY8pG
         vPMhBW1zQPIbVVLz2C71MWzLjZbcTK32vWQr1SUv0iybmYAyfVq0F+ZqAYmO+em1gI1I
         ccwbG8qftdNu2OhO6d0a7CSiB/a2EZoXc+hxaAUW8tA+psNJOi61NDAhxoJ9JvWfEfWE
         RvQFDB5fY/2AzKyQMKfhz6Szow+Vo72wjLWfQ8DMEOt8Xm3ujA9n8EwVYIclnjokr02V
         CkB8zeP6ua02PeL4i5d5tv8i/XE7MjLwJoqnnEsIwA2x6QlA0L2hPEqKW/asHMRc7vYG
         AjEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695330146; x=1695934946;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:sender:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=PU2fg0djprK6Xbxxofgqg1SbLDEX/vvJyolyRTTp9bo=;
        b=PIiuzT7qD4iQD6hwpHajsISoXc6t+mN2BRv9cqBZwkcVfHuRYAUZjXzliVhqaF68VV
         3fTSKasLhAE5QqR1A5JQxY8l8iQIOWHkaay8fK1jjfwQrfXGJSP/onYs9C4IcJ9SUPEe
         RjFdsHzkeUeYAoMBXIFUBcckzfCjZgNdEQUrr859tRAj17qfZZw+i24LLSm7cHWqnubU
         yk0L4nAoMDnVfq0DeSgUwD8z0lgoFT5TdBIddmt8sldlZwx3K9CRvLMiwxAi82c5cBpl
         w2nH1urqSiLGoqmUnP/w1GiFqN/7xAft8d3aHRe0DBmJY4E7Wnl71hlftoUXyWZLs9uF
         bQtA==
X-Gm-Message-State: AOJu0YzUxmDz/YM6FQ54cBZ5TACaS+8VQ3x+WR9TFnT7LGlKgAEwK5XZ
	5R9GVelgLn1rGXqhdhwwrf8clko7APeefw==
X-Google-Smtp-Source: AGHT+IEAVWbndAN2Et0Rib9P0Bo8qQBdDaYuaz/jOOspqDCOFMnwCWsfdkLNzuDgEyCRVoRX4o944Q==
X-Received: by 2002:a05:600c:2203:b0:401:b204:3b8d with SMTP id z3-20020a05600c220300b00401b2043b8dmr6134666wml.27.1695330146159;
        Thu, 21 Sep 2023 14:02:26 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Thu, 21 Sep 2023 23:02:24 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <ZQyvYCfvJyVF2KsQ@eldamar.lan>
References: <ZPsjthELNqb7nPFf@kasco.suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZPsjthELNqb7nPFf@kasco.suse.de>
Subject: [oss-security] Re: croc: multiple issues in file sharing utility

Hi,

On Fri, Sep 08, 2023 at 03:37:55PM +0200, Matthias Gerstner wrote:
[...]
> 5) CVE Assignments
> ==================
> 
> I have requested CVEs from Mitre for the more tangible issues 3.1 through 3.5
> and issue 3.8. I will publish them here once they are available.

They are CVE-2023-43616, CVE-2023-43617, CVE-2023-43618,
CVE-2023-43619, CVE-2023-43620 and CVE-2023-43621.

Regards,
Salvatore
