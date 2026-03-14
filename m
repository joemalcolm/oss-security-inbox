Received: (qmail 13622 invoked by uid 550); 14 Mar 2026 00:56:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23554 invoked from network); 14 Mar 2026 00:15:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773447314; x=1774052114; darn=lists.openwall.com;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GpLpXfM285QPt2w8l/iHP9W7UHYcf17EprC+3h8vi2E=;
        b=XrNbWpUjVRUrRdMU1gYTHw20rb/WkXlNcErE0IVKoMzJq36uL+/aq5FOpwVITEHYzW
         2rE91Hsdbe7fXBSdh+Po9zbVLkf68OmpgVtuDPlaJ91Oc3KkukMnIuV0A/LwMKVLApbQ
         H0dqLMRlFe2mb05PP7KnlpsZrRs7gmqOULm/ijw5gxsJbKHFeS1tLDZIQC7HXi+BpI6+
         q4InXS+W9sN+JEC4/yyiJLm3QRHfXz5LD78lZLjcqTDn7N9UEe5ilS3R3G7rFdtUu5wk
         W8BsqqcL83Cy5pgCQN3uVTPaPLTJ02nkq+T4Hu1in/gxaJ3orGws9M6Rli4PbiDm1Q+3
         o77A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773447314; x=1774052114;
        h=mime-version:user-agent:message-id:date:references:in-reply-to
         :subject:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GpLpXfM285QPt2w8l/iHP9W7UHYcf17EprC+3h8vi2E=;
        b=UK7uHcj2laohHXOFfS1m2o0VC68lYhJMffsz0Lw1j4xGjiKUzZHxzCQcRIj9hl/0Xo
         CNA928TTEDNzrfN9zhjuOVKe2AQy3k/XFoSm/bcqqTl4Yfw0gtaAbtB2wWQ2z9idS2lT
         XJyyvsk+lFkzpq9gNYs3ZNGHbiytXrEM+p84WT92Jq/7Wv833/GB4r0TYrRjW0nMmtTz
         huUisFnepRy9mZaSI3tpbbAEHRDRtmqtbF/pluX0ghVdu+pRyDo6hFh/AhCxkASn+lWV
         KAob+G/hHWxd3/wgC0kf6/l8udHtF5+mqRpLeMsxsGNZQ/krb4VYVAIwCl16qMn2C76M
         +4VA==
X-Gm-Message-State: AOJu0Yw+j2iWDYHJ7Ctzf820cB1YpkWiicYQ/MZ4oaRWmtOH9E2BYG3t
	HhI86ZuDsJArylA1aYNtnpqXWphyQCI549VTRwvdhUX19sWT1VR/fum7XD/S6Q==
X-Gm-Gg: ATEYQzyXMoXbmwKScUKFmDD0dtYTUG6nFII1eBTdrY9sa87RQO+MxqbRvK2G2VaBV3a
	elEhXYC64d26ZMyOzJJrPwokFuKy55w00OTGPxJ73B5Z+M2nj/Y31h4DB9A5H29R9Zh4qSxj6s6
	6V6PKrZsQMck/gzWD9HZyM9xx4TDaWs12omSy2/oR/RV/eWkE5Xc8qpdow9OTlCXYU/kIw0b/Rq
	MEf+gmcwFxkaeRe+GO3tT2s2QKjiB4nA9UmFynV5qswRCiX1FAqaBryEL0GcJ3cMHFhzBQdJr4J
	nO4EaLqjQJMXwe8xKU15jrWs6qUpssD6yHLv+KFCzu7TmkEMfhV6L0dhoUPb2Tjj2/uFMCwG+Ef
	seCjH/hKArhVXcuGryq/kA6wsWzIxYLNJc6jjClnzFr3tLw+Ilc66yIZN9S9Sssfl9MhN9qBJGQ
	7Kc7Oaw9nY+xPRkyJST7XRhDxNfoj7zGquI4fcHxQD61HQwiRmKPbfc1AH3hx9+60=
X-Received: by 2002:a05:7300:a144:b0:2ae:51fa:b7ec with SMTP id 5a478bee46e88-2bea54eee8cmr2393481eec.25.1773447313964;
        Fri, 13 Mar 2026 17:15:13 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: oss-security@lists.openwall.com
In-Reply-To: <6d90b416fd9f2e4e8483885a480b390d@risingedge.co.za>
References: <6d90b416fd9f2e4e8483885a480b390d@risingedge.co.za>
Date: Fri, 13 Mar 2026 17:15:12 -0700
Message-ID: <874imj5krz.fsf@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [oss-security] Remote Pre-Auth Buffer Overflow in GNU Inetutils
 telnetd (LINEMODE SLC)

Justin Swartz <justin.swartz@risingedge.co.za> writes:

> Greetings,
>
> I would like to draw the community's attention to the following
> vulnerability [1], summarized as "Remote Pre-Auth Buffer Overflow
> in GNU Inetutils telnetd (LINEMODE SLC)", which was reported to
> the bug-inetutils mailing list recently.
>
> I am not affiliated with the researchers, inetutils, nor GNU/FSF.
>
> Regards,
> Justin
>
> ---
>
> [1]
> https://lists.gnu.org/archive/html/bug-inetutils/2026-03/msg00031.html

This was assigned CVE-2026-32746 by MITRE [1].

Collin

[1] https://nvd.nist.gov/vuln/detail/CVE-2026-32746
