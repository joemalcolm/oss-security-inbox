X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["696" "Wednesday" "12" "December" "2018" "11:59:12" "-0800" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFk+7hJZWXHT3ufnR7FtJ0ybtts3VbUZmKhFHaMUPiX0JTw@mail.gmail.com>" "18" "Re: [oss-security] Multiple telnet.c overflows" "^Date:" nil nil "12" "2018121219:59:12" "[oss-security] Multiple telnet.c overflows" (number mark "        taviso@googl Dec 12   18/696   " thread-indent "\"Re: [oss-security] Multiple telnet.c overflows\"\n") "<alpine.GSO.2.20.1812121308451.10494@scrappy.simplesystems.org>" ("<CAG-OieOVQkON9yTYJcKuKGfP5XK5zitz0nTr9+ci71mTZrz-+A@mail.gmail.com>" "<3f060bee-a765-4cd8-e752-e0cdfef5c6f2@oracle.com>" "<CAJ_zFkK-Wg5cvzQ_Om+=+pyddbyPvT8D07qL8wL8NYX6MNnnXg@mail.gmail.com>" "<CAG-OieODDwrDfoci2ehVUbHg13Ehz66VB50KERZ01qCdrgCLBw@mail.gmail.com>" "<CAJ_zFkLKWJnC9t27kN74jNueh3nTqx2+2hB3dsv74CsfBY_qfg@mail.gmail.com>" "<alpine.GSO.2.20.1812121308451.10494@scrappy.simplesystems.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13598 invoked by uid 550); 12 Dec 2018 19:59:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13577 invoked from network); 12 Dec 2018 19:59:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=gb7kcXySbSyjMlVXsQrL5sBPKHZyCgbXowp22oNv2+E=;
        b=Hs9h0VkaCb3soCqp2bxuX8kGtNHkkWYCy1PIGIbB4TUKrwJUWHvqBKWGhxK/H+0/EO
         z1nZejYqqsJAb8JwjoBYI8XTobttM3zReTMDan64n3kpSOsZR5HNm3aioMMXgIcwrFA0
         oClgVV9EgEhxfz4dRy/VoAGlQv7cFWxtTOOqIrAsUnyeFQTkvEov6B/2ASTMYimwsEoj
         MvnASbnsjnj7YVMm697lW++WVgugimP7epRUJIE9IDNc9YAOq1XAT7JctgyAxTdrJGMe
         bJ2q/ZVcDpfi6bO5ISzuLtYP52r0LVgfTnTWEmrW1xgbIbE8e8IMjXSTmSf2SF8/zaR9
         p0fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=gb7kcXySbSyjMlVXsQrL5sBPKHZyCgbXowp22oNv2+E=;
        b=Rd2vXpejG2G2ECfkcsOTsjnseFCTRAK6h5Ey2b2tHTIHOY/81ZAz/wBnqeuwNfiPlq
         XVPmZT61tLnEyLoAnD7Rcnfsfctxo++EZM227l7XLbFP8aTYQXYk7oJEitjqBm/k2KyP
         lnzf8mix5OdVxwwDPvApW58DqRj/pOFvEw8AN8Q/w2fm0pAVjMpEKpIU3fR3Ck8jn4XI
         rz28PZkz9MP/rGDA6ePjdZQYGG5eXDyCA8gExqUqaQduENIdZV2lhRYhwSGn20PUhFaW
         ULbOyj4qPUfL9tgXmTTrOmTrDYj2s2EYi5J2bUNGdmmaiQ3tYY3aOvsfV36UvmSa9J4i
         PcdQ==
X-Gm-Message-State: AA+aEWYnb0mJ98WLYKa/ypSen2ezN9UYTsHXosclyairi1F0TlHgfhT+
	zJBa3hziUmNbUYz66fNkJF9alGpPMclWGoxUQvmibpYWf1Y=
X-Google-Smtp-Source: AFSGD/WiMhsiUQN5qaDbX/gXJATzJyUL98vohyMeahxdQDKlEMz9N4msI0YoqoxM+pxanDTDxbAhAObsBWOhbZw/xcY=
X-Received: by 2002:ac8:29b7:: with SMTP id 52mr20941186qts.266.1544644764292;
 Wed, 12 Dec 2018 11:59:24 -0800 (PST)
MIME-Version: 1.0
References: <CAG-OieOVQkON9yTYJcKuKGfP5XK5zitz0nTr9+ci71mTZrz-+A@mail.gmail.com>
 <3f060bee-a765-4cd8-e752-e0cdfef5c6f2@oracle.com> <CAJ_zFkK-Wg5cvzQ_Om+=+pyddbyPvT8D07qL8wL8NYX6MNnnXg@mail.gmail.com>
 <CAG-OieODDwrDfoci2ehVUbHg13Ehz66VB50KERZ01qCdrgCLBw@mail.gmail.com>
 <CAJ_zFkLKWJnC9t27kN74jNueh3nTqx2+2hB3dsv74CsfBY_qfg@mail.gmail.com> <alpine.GSO.2.20.1812121308451.10494@scrappy.simplesystems.org>
In-Reply-To: <alpine.GSO.2.20.1812121308451.10494@scrappy.simplesystems.org>
Message-ID: <CAJ_zFk+7hJZWXHT3ufnR7FtJ0ybtts3VbUZmKhFHaMUPiX0JTw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Wed, 12 Dec 2018 11:59:12 -0800
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Multiple telnet.c overflows
To: oss-security@lists.openwall.com

On Wed, Dec 12, 2018 at 11:15 AM Bob Friesenhahn
<bfriesen@simple.dallas.tx.us> wrote:
>
> On Wed, 12 Dec 2018, Tavis Ormandy wrote:
>
> > It's not that environment handling is a non-issue, I've reported
> > dozens over the years, it's just that it requires a privilege
> > boundary. For example, setuid binaries are the classic example.
>
> Is a network connection between two machines not a 'privilege
> boundary'?  If the remote machine has the ability to subvert the
> accessing machine (e.g. by transmitting something which causes harm to
> the client) then that seems to qualify.

That would certainly qualify, but the attack your describing does not
seem relevant to this bug, no?

Tavis.
