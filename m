Received: (qmail 24444 invoked by uid 550); 6 Aug 2024 17:24:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5370 invoked from network); 6 Aug 2024 15:25:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=openssl.org; s=google; t=1722957922; x=1723562722; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GuwCCrT7paSMz/yFpYX8KmkSzYcaYnKsVheSHZzGWxY=;
        b=e6S8c3Mlh0xMcwfSj0TgGLi/wv8M2Z+ABTorh0hEKqHXVxzKrRf5v176CpOOaP9e39
         zMxPPhsRT3kzVvn5fQgm0tl9oibWbbhzny1FLOOQUGUO8ex+WwfhF0N9b70uyDiKlZcq
         KCNcajh8XBSXOZei/81FYa9o+g9X8ZlmRlkzl5TF+V2VbrrvTPAosT63LXyoyWm+ezUl
         LBv+pmSMZtPVA1nG9Yv1gFP7HS9MZCsmXbx+y192hLv1wCtuMLQGaBD0xi8OEEafU8q4
         unQxgY0N0Jj0BHJ4DOHnOccHxcvG3IfOLAcXCKt+lGWNZsa6+DLHsUFmr43oTKnjyXHK
         q9Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722957922; x=1723562722;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GuwCCrT7paSMz/yFpYX8KmkSzYcaYnKsVheSHZzGWxY=;
        b=iXdmqpJxpBbwnkgkTu1B5cj9CdlF6y1ft5bwaMu6836oiUeLUtKIWRWB6epYEu1hOu
         YX5VaUd7M5ubgWoGBc6JI7d2Pfcds7OnFTUB7xGzR/LhIfY2nSInBFwzGPMpZ4FW4fwP
         QbuwnwaAu4Ow8P/xNvBPGrCbne1dQIpjo9Dkw8X7Ki9uR6eft//cu7kSH7gjapa4rHCc
         +1giAhk58RknqtHXUvOffhrlyQPT7QktPitB45xtXt4WiH8yUiypan77wFDEvVJanzUQ
         vwYDyUWyfQwLWSBUtVzwpqU9ZyyABPeE41EbHv2sZCiOVPf/e8SEW/w1V5jLfXfDROF6
         hGeg==
X-Gm-Message-State: AOJu0Yzkq44VzUzQc/L5Kp9tBQQ+1NJnkFpGdjgpTbpJMZeIqYxeEIRF
	dfO/PanwZixLgoEQbe0EPXizjtxDa8k521m6c5Rks2I2sQSzJ+Vg+pUORi3LLVvLnA7SBtLQuKC
	VZ7Qz9ZpYn6dbOIqIZHiZYcW6FtLtvFV5VNl/1MK2fGJJWJm2
X-Google-Smtp-Source: AGHT+IEKfM+Uq1DbHSmgkuQAmLBn7GZJBYevWT0qW3F1++L4F8pyOJTwrIw6W02FtMsLlrUrBA1yaKIGr2W9Jcyv4Ik=
X-Received: by 2002:a05:6512:239f:b0:52c:881b:73c0 with SMTP id
 2adb3069b0e04-530bb3736b0mr11064834e87.17.1722957922014; Tue, 06 Aug 2024
 08:25:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com>
 <20240806171232.6bd08942@zbook>
In-Reply-To: <20240806171232.6bd08942@zbook>
From: Neil Horman <nhorman@openssl.org>
Date: Tue, 6 Aug 2024 11:25:10 -0400
Message-ID: <CAJbOq15d8KaGn2NA-hdLAfSKSCNzhwfL3LAo5gAg-FEoS39L6w@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000e7b001061f0566ce"
Subject: Re: [oss-security] feedback requested regarding deprecation of TLS 1.0/1.1

--000000000000e7b001061f0566ce
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I don't think outputting to stderr is feasible as OpenSSL might be used in
a use case that has no tty connected.  Likewise there is no guarantee that
syslog will exist.

What would likely be reasonable would be a two fold approach:
1) Issue a warning on build if TLS1.1/1.0 were enabled at build time (or
some other build time notification)
2) augment openssl version (or other openssl applet) to indicate that
TLS1.1/1.0 support is built in but is deprecated

On Tue, Aug 6, 2024 at 11:17=E2=80=AFAM Marco Moock <mm@dorfdsl.de> wrote:

> Am Tue, 6 Aug 2024 05:02:14 -0400
> schrieb Neil Horman <nhorman@openssl.org>:
>
> > 1) Are distributions/users comfortable with this approach in the time
> > frame proposed?
>
> As a user, this is acceptable for me, but I know there are still
> machines outside that only offer such old versions.
> Some of them can't be upgraded easily because the vendor doesn't
> provide any new versions.
>
> > 3) If the deprecated protocols are re-enabled, what would constitute a
> > reasonable warning mechanism to inform users that these protocols are
> > going away at some point in the future to pressure users to update to
> > a newer, more secure protocol?
>
> Is it reasonable to output that on STDERR any time those protocols are
> used?
>
> Maybe log to syslog?
>

--000000000000e7b001061f0566ce--
