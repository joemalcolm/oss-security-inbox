Received: (qmail 15964 invoked by uid 550); 3 Apr 2024 13:49:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1204 invoked from network); 3 Apr 2024 13:38:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712151500; x=1712756300; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DVK+6r9Wr6DzWiaSd3XSabHBo4jHwac8RIubZBxkMzY=;
        b=gVQNzVU7nr1Cj4Ti8/jPChucwZRUSPZaQ5F5gB1L0jUiiLhDaXJHrLlHeoOr5tDfmP
         BlX2Dw/QH9ZnF654HPFEwEZkN6kcOfP2/M8qGE8rMdpOdfb6yfRlIAhEYyxQg6ek4ndH
         P4ZPm5P0G5W1R3ruZXiCBSaI+P282b2DkX25Ri532+l/tBCctyG7We/EUTDRkahBl0BH
         AupwbAzj63JkNcJN0i03HBNmtSMW55MwqoYgu6zJ1aAL7SYm4UlGZXQHjxFbg9qcCigv
         2u/RFFOgGhg9joR2t4y0MTNUKTmhpTKxVEmAiY9V8Ts0cIDdV+qVWFwXp/tg5imKVzBs
         Z3rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712151500; x=1712756300;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DVK+6r9Wr6DzWiaSd3XSabHBo4jHwac8RIubZBxkMzY=;
        b=Nr6PyDJB2ERm8CyTJ1DU3YmQ0ZzgYZRhyHPSGulQzvRFPWX45OtAelqAsmH6y5TRJv
         DiGIkF7pogZH5preMB6POR1nyvcCAbsbuPQyy/neM8Z7EU6/hfxrqkInjzE4voRRsfZ0
         wieircVtmDsnbTYeQ4H7WC305dDUI2QujlToUYk6JdCUZlHh6NY9FOAwb8tzESlbb4ey
         xSehDCgfRzzf7VToCADDxZR7L/95vt97hwAvEjzAU7geJFJ7nQME6SLdvXlwD63iWeXb
         BI9N/JevdrcHGhVgmivEnUISu9iOxTNMWEdhaD6s9FlBOFuYnpZXQb9bpVTUNTqpUbHJ
         YjBw==
X-Gm-Message-State: AOJu0YyEM/e+NsTDkxwjHWl5rx4XmO5LSEQ/e1Yv1WipfyTDPOkmiauf
	TOBmJHVt7MRsk+7C/PpdrmHCYwM2NqzIhfNTBt8Fik48fNaozy/rJZNovzBfsHlPFxXUisCU08t
	QH0QMVBD5Wy+9Sveh3hErgZy9RhxfN52Ok0g=
X-Google-Smtp-Source: AGHT+IFNpuv5pv4VZovtZuszn6StZgkSr4hTM8WxLbc/bCmRkPAX1RQl1sfnh74j43c2s2MIuwtsVcBTE7bsRLTzVKk=
X-Received: by 2002:a17:90a:710b:b0:29f:cf88:c2d2 with SMTP id
 h11-20020a17090a710b00b0029fcf88c2d2mr14131817pjk.12.1712151500323; Wed, 03
 Apr 2024 06:38:20 -0700 (PDT)
MIME-Version: 1.0
References: <loqt-RGEN6MMP_6J6pm7KJN3UgHgOBQ3NLoF3NsdmxQhyJrFIS0XYItBeLNZeSMliq69Lw8ogw3rnIW3BZEqCIHQQSFq307cqsyIt7dcocE=@proton.me>
In-Reply-To: <loqt-RGEN6MMP_6J6pm7KJN3UgHgOBQ3NLoF3NsdmxQhyJrFIS0XYItBeLNZeSMliq69Lw8ogw3rnIW3BZEqCIHQQSFq307cqsyIt7dcocE=@proton.me>
From: Stephen John Smoogen <smooge@gmail.com>
Date: Wed, 3 Apr 2024 09:38:08 -0400
Message-ID: <CANnLRdgMaDewcaKVq9OdiNBq-AsF-JchQsMLY0xuY033P6j=rw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000fa855a061531550c"
Subject: Re: [oss-security] xz backdoor prevention using hosts.deny?

--000000000000fa855a061531550c
Content-Type: text/plain; charset="UTF-8"

On Wed, 3 Apr 2024 at 09:07, Nick Sal <specialroumpa@proton.me> wrote:

> Hi,
>
> Assume we filter SSH access only to a public domain subnet using the files
> hosts.{deny,allow} as seen below.
> Would this prevent an attack if a malicious payload was *not* sent from
> the allowed subnet?
> Trying to figure out if an attack like this was still possible, for the
> few days in March the backdoor was active and undetected in rolling distros
> (e.g. debian testing).
>
> /etc/hosts.deny:  sshd: ALL
> /etc/hosts.allow: sshd: "a_subnet"
>
>

Does Debian still link hosts.allow/hosts.deny libwrapper with sshd? [or
does sshd pull it in from another source?] I know some distributions no
longer use this method to limit controls.


> Moreover, allowing only public-key authentication for SSH does not help,
> isn't this right?
>
>
Most likely not because the code is looking for a specific publickey to
unlock its payload.



> Regards,
> Nick
>
>

-- 
Stephen J Smoogen.
Let us be kind to one another, for most of us are fighting a hard battle.
-- Ian MacClaren

--000000000000fa855a061531550c--
