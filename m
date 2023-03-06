Received: (qmail 11369 invoked by uid 550); 6 Mar 2023 13:23:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11831 invoked from network); 6 Mar 2023 07:53:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678089218;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zh1AgAInl6NWM00R6FtTn7OAC4CeszLk0BLT3Ky2Jvc=;
        b=H2otoaHBZJ7fmX0TZ6OGb0ybixb33e5BcA3HAaBUxQrGAi+eKN8gbcetIe9+BCL/sP
         DzRvOiHNRWjqdniYeMTpPdTiiJksT/VzqmseRwuObwoT8FpZERvnklGZdCbfOyAvwkg8
         XnbveVpTLG5pdeuWD7ISMErjFZv0mYKjCqx8I85rHFuQXFfTeETHcoaEZka+f35aI7nj
         9Hmj821RUAoi1fN/N1zfj3oo9akh4dKU/o4YnsApfK6ABc/trzXzZ306HkwqhMNiBQ8y
         xiIb9zkcFEm5pqff4KVEZ1I8xbEoY12BQRj9M3jbIwKMui3r9DNor0wVqw9lsuA4akb2
         NcEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678089218;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Zh1AgAInl6NWM00R6FtTn7OAC4CeszLk0BLT3Ky2Jvc=;
        b=t3VYqsafafWZusdrqnjlcvibF5xgJvi9MSp824KDWr0dGmB5evxBNYWSS37dy6LubU
         AyG8l6zb03zAAq9jM8bkv0TRaYmqZ7uni8Im3ZlsEg+BvWdyJml59ZIYRXyRgYte8RQa
         dr0RVJvj96qlaFaNErHxvz4nGzgwpdA0bWSmcMP9jwuyEZiVcGbZArDG4uxlzvCarkZ+
         N+lyZZbJ20zblCkCloB8bMo8ZvALW0NLIROkb4jJgvWPZ+cDsEJcweQwjqj1dELcaOnl
         8J+LKRd+NH73z7zqFqboi5Usr8FSA/BU2NJ3zkx/GwT+B94YM0KXHZX3QH3nGGdbjawD
         JqGQ==
X-Gm-Message-State: AO0yUKXAEO4xjTWWQEHDbFyzwclEQnzGDY33xAFB2PEgCQz3ChEeOeBg
	V00bKK49xa4msqaQW1oyEyTrTpFfnzVmyvLXyz+rw77S1DA=
X-Google-Smtp-Source: AK7set9Dc+ghweuaQrlV076s3FtfEx9OZ4UJSy5j46jWBPsTm3Fbj/KCJw5FWulDfVhJ7i036eMMSzevkH5PzxISVEA=
X-Received: by 2002:a62:cd4d:0:b0:593:a89e:a992 with SMTP id
 o74-20020a62cd4d000000b00593a89ea992mr4252396pfg.2.1678089217858; Sun, 05 Mar
 2023 23:53:37 -0800 (PST)
MIME-Version: 1.0
References: <20230202130212.GA15689@localhost.localdomain> <20230213120214.GB19824@localhost.localdomain>
In-Reply-To: <20230213120214.GB19824@localhost.localdomain>
From: Georgi Guninski <gguninski@gmail.com>
Date: Mon, 6 Mar 2023 09:53:06 +0200
Message-ID: <CAGUWgD-RAoKOCtQ3COqyuFKxo0KHnwQFYpV9ZRfyidWPd4v2VA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Re: double-free vulnerability in OpenSSH server
 9.1 (CVE-2023-25136)

On Mon, Feb 13, 2023 at 2:05=E2=80=AFPM Qualys Security Advisory <qsa@qualy=
s.com> wrote:
>
> Hi all,
>
> On Thu, Feb 02, 2023 at 01:02:04PM +0000, Qualys Security Advisory wrote:
> > Exploiting this vulnerability will not be easy: modern memory allocators
> > provide protections against double frees, and the impacted sshd process
> > is unprivileged and heavily sandboxed.
>
> Quick update: we were able to gain arbitrary control of the "rip"

So besides the double free bug you managed to circumvent
the mitigation in both linux and openbsd, right?
Did you find weakness in the mitigation or did you find
fundamental way to exploit double free?
