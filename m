X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8498" "Thursday" "13" "December" "2018" "08:07:40" "-0800" "Hacker Fantastic" "hackerfantastic@googlemail.com" "<CAG-OieOk+nyreyHs9xP5V+e=4KciHbcc0vh0poggCxYAa-CrEg@mail.gmail.com>" "174" "Re: [oss-security] Multiple telnet.c overflows" "^Cc:" nil nil "12" "2018121316:07:40" "[oss-security] Multiple telnet.c overflows" (number mark "        hackerfantas Dec 13  174/8498  " thread-indent "\"Re: [oss-security] Multiple telnet.c overflows\"\n") "<CAG-OiePvtSA1Wu03T76iXfYhER0Qr7fCBZ6n+mSfVpbjJ-UnQQ@mail.gmail.com>" ("<CAG-OieOVQkON9yTYJcKuKGfP5XK5zitz0nTr9+ci71mTZrz-+A@mail.gmail.com>" "<3f060bee-a765-4cd8-e752-e0cdfef5c6f2@oracle.com>" "<CAJ_zFkK-Wg5cvzQ_Om+=+pyddbyPvT8D07qL8wL8NYX6MNnnXg@mail.gmail.com>" "<CAG-OieODDwrDfoci2ehVUbHg13Ehz66VB50KERZ01qCdrgCLBw@mail.gmail.com>" "<CAJ_zFkLKWJnC9t27kN74jNueh3nTqx2+2hB3dsv74CsfBY_qfg@mail.gmail.com>" "<CAG-OieOUdanQyhyksodXwP7WyQpnAh0t3gy_Z_Cq-PTf+22GYw@mail.gmail.com>" "<CAJ_zFkKWP18xP6jUh=Gax3o_R4mFB905FC9yKWTd9-VEwEZEmA@mail.gmail.com>" "<CAG-OieMJ=sJxrf37ndMZF8akPtTibc-RMAgi8+Dkxz5URabR+A@mail.gmail.com>" "<CAJ_zFk+Dhd0buWMW7p4sRDZ_0KEDnOiKp4nV35XUgCUnFc5q-w@mail.gmail.com>" "<CAG-OiePvtSA1Wu03T76iXfYhER0Qr7fCBZ6n+mSfVpbjJ-UnQQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17478 invoked by uid 550); 13 Dec 2018 16:10:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14190 invoked from network); 13 Dec 2018 16:08:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=a3fOs1LXmJss70gdqpFeqlrz4b5KIK+yokKhQV5DOpY=;
        b=CAotgOVdiBHalKcXdbGqrHuEEJ7I1062YE/vYVSIYqP+Fk7r8PZsd1UZ9pC0+fyAVr
         RTE/GQlJWp8R6i1jOMA1RXKvk6yvTOJa6YTsBYb9bL/MGBqkG+xxe/Kqtysza+t/03Ns
         O15x8oTALRv22E9L1J54BN2kmQYz6cxo65QuBg5KJc6c346G/iBFlD0iiOaZhumKdxj7
         VDkrcb+O7LkZheMjnv4paH2Z0vnmbV3o/5kW4pNE7fLvKlZ98UM/SStIBFGEJyZ18OPM
         NO/mRUDVSpPiQ9tHr22CyudCv/V1tutT4Esred39VaXW9zFHVBGFbu/vUqK6WsO0I0br
         46/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=a3fOs1LXmJss70gdqpFeqlrz4b5KIK+yokKhQV5DOpY=;
        b=btcvoCI9JbwzAneGttkXl3emVoqTks1PQyrjhvTVAIgqW9LvefVEDVZA0aG8nRwA2B
         sn4frlC6o641V9G5h/8q2q4QudeRrYixidrHzxpAvBuo2Q/g3joNRQMuhkT3vc56PleM
         abfHSzRbuFNCMIcvVnn1HNbZQr32Yj/lcQ2p/2tLuY8wHeJZzNBzGVpg+aJKCFgfUA15
         NuvFx3kEGq22XIICqFRBYGCQyfhV69gJ7u0FHgty7aPUYHboWMFfrAw64XEe9HOt8IYe
         2FI3ci5wiCDP/7AIhyDvXfohfKdZYlJUMMfSdqj9lKIfJZBnlaxyB+10AIxlTqxXrCne
         yisg==
X-Gm-Message-State: AA+aEWb3dCFy8QbgGHMH3/GRiEzzC2zgpn3lmwMljZR5V4G1yXyI7YUS
	P+gXHj3Y7Aacd+DIlqbNrNSdPktvKjSx43YxdMUg9g==
X-Google-Smtp-Source: AFSGD/VmSu9ljZ11zvQ+6IOEVjGCLnzUiTbi3tmSVBY7tn+zPRaCW9PKo6zaYIP6bd2mJBQu35NKDJHDE3Hef8epsxw=
X-Received: by 2002:a2e:8ec8:: with SMTP id e8-v6mr15205523ljl.162.1544717272202;
 Thu, 13 Dec 2018 08:07:52 -0800 (PST)
MIME-Version: 1.0
References: <CAG-OieOVQkON9yTYJcKuKGfP5XK5zitz0nTr9+ci71mTZrz-+A@mail.gmail.com>
 <3f060bee-a765-4cd8-e752-e0cdfef5c6f2@oracle.com> <CAJ_zFkK-Wg5cvzQ_Om+=+pyddbyPvT8D07qL8wL8NYX6MNnnXg@mail.gmail.com>
 <CAG-OieODDwrDfoci2ehVUbHg13Ehz66VB50KERZ01qCdrgCLBw@mail.gmail.com>
 <CAJ_zFkLKWJnC9t27kN74jNueh3nTqx2+2hB3dsv74CsfBY_qfg@mail.gmail.com>
 <CAG-OieOUdanQyhyksodXwP7WyQpnAh0t3gy_Z_Cq-PTf+22GYw@mail.gmail.com>
 <CAJ_zFkKWP18xP6jUh=Gax3o_R4mFB905FC9yKWTd9-VEwEZEmA@mail.gmail.com>
 <CAG-OieMJ=sJxrf37ndMZF8akPtTibc-RMAgi8+Dkxz5URabR+A@mail.gmail.com>
 <CAJ_zFk+Dhd0buWMW7p4sRDZ_0KEDnOiKp4nV35XUgCUnFc5q-w@mail.gmail.com> <CAG-OiePvtSA1Wu03T76iXfYhER0Qr7fCBZ6n+mSfVpbjJ-UnQQ@mail.gmail.com>
In-Reply-To: <CAG-OiePvtSA1Wu03T76iXfYhER0Qr7fCBZ6n+mSfVpbjJ-UnQQ@mail.gmail.com>
Message-ID: <CAG-OieOk+nyreyHs9xP5V+e=4KciHbcc0vh0poggCxYAa-CrEg@mail.gmail.com>
Content-Type: multipart/alternative; boundary="00000000000049c417057ce98487"
Cc: oss-security@lists.openwall.com
Date: Thu, 13 Dec 2018 08:07:40 -0800
From: Hacker Fantastic <hackerfantastic@googlemail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Multiple telnet.c overflows
To: Tavis Ormandy <taviso@google.com>

--00000000000049c417057ce98487
Content-Type: text/plain; charset="UTF-8"

Morning coffee not fully consumed, I meant to write NetBSD (stack overflow,
others unsure as no time to test but assumed vulnerable) in the list of
clients. I hope the supplied PoC is useful to others in testing and
removing these flaws. In my past life of having free time I would write an
IAC environment handling stress tester to isolate all occurrences of these
issues. If you think about the growing risk of IoT equipment and the use of
telnet as a management protocol still being put to use then the core issues
at play here will ultimately be in systems that I cannot reasonably account
for all occurrences. Mikrotik are just the vendor whose equipment is
immediately accessible to me at present, other embedded device vendors
should check their telnet client implementations for the bugs using the 4
test cases I have outlined.

1. stack overflow by connecting with large DISPLAY= parameter
2. heap corruption by supplying large USER= & or other supported
environment variables (DISPLAY, LOGNAME, TERM, etc.)
3. heap ring.cc corruption through IAC handlers when setting environment
variables, telnet_term_0day.py can trigger and takes a few minutes due to
the nature of the heap
4. review the use of URI handlers in applications that reference telnet://
to ensure environment variables cannot be supplied to vulnerable functions
via telnet://user@ip

These issues are only present when a connection occurs and so the telnet
client implementation needs to be connected to a server to trigger the flaw
as this happens within the handling of telnet protocol packets,
specifically those related to environment variable handling.

Cheers,
Matthew

On Thu, Dec 13, 2018 at 7:53 AM Hacker Fantastic <
hackerfantastic@googlemail.com> wrote:

> Hi, I do not believe this is either CVE-2005-0469 or CVE-2005-0468. The
> issue is the same problem I described in handling environment variables
> originally, the TERM environment being a remotely reachable way of trigger
> the issue in inetutils and other clients. The issue appears to behave
> differently on netkit-telnet instances, and mirrors that of the Mikrotik
> client - causing a ring.cc assertion error to be printed, however the
> application still causes a SIGABRT when the connection is then terminated
> with the large buffers having caused a failure in ring.cc.
>
> Here is an example of the latest netkit-telnet behaviour with what I
> believe is heap corruption caused by the same PoC trigger -
> telnet_term_0day.py (the SIGABRT happens after the connection is killed to
> cause the ring.cc assertion):
>
> telnet: buffer overflow, losing data, sorry
> telnet: ring.cc:143: int ringbuf::flush(): Assertion `top-bot > 0 &&
> top-bot <= count' failed.
> Aborted (core dumped)
> Program received signal SIGABRT, Aborted.
> 0x00007ffff7a59d7f in raise () from /usr/lib/libc.so.6
> (gdb) bt
> #0  0x00007ffff7a59d7f in raise () from /usr/lib/libc.so.6
> #1  0x00007ffff7a44672 in abort () from /usr/lib/libc.so.6
> #2  0x00007ffff7a44548 in __assert_fail_base.cold.0 () from
> /usr/lib/libc.so.6
> #3  0x00007ffff7a52396 in __assert_fail () from /usr/lib/libc.so.6
> #4  0x000055555555f417 in ringbuf::flush() ()
> #5  0x000055555555f01f in netflush() ()
> #6  0x000055555555fcbe in process_rings(int, int, int, int, int, int) ()
> #7  0x00005555555639cf in Scheduler(int) ()
> #8  0x0000555555563acf in telnet(char const*) ()
> #9  0x000055555555ea9b in tn(int, char const**) ()
> #10 0x0000555555559acd in main ()
>
> I couldn't account for all clients in my original advisory as I stated,
> the telnet client code is quite messy and there are buffers that are
> referenced in loops using functions such as sprintf() / free() and
> realloc() - supplied environment arguments DISPLAY, USER, TERM and things
> like LOGNAME,LINEMODE which have a corresponding IAC handler all seem to be
> ways of reaching the root vulnerable code paths. It also appears that this
> issue maybe much deeper rooted in the BSD code base that is shared amongst
> many telnet clients - inetutils and Mikrotik included. I have provided a
> PoC for testing purposes of the issue through a supplied IAC handler to set
> the TERM protocol in a connecting client.
>
> I have also learned that Safari still supports "telnet://" URI handlers
> however telnet command is deprecated on OS-X, a user would need to have a
> vulnerable telnet client installed such as the one in "homebrew" - however
> the USER= overflow is not reached in that client due to some additional
> argument length checking code by Apple. For a remote telnet client to
> trigger this issue in a URI handler an attacker would need to supply the
> "USER=" environment variable through telnet://user@ip which is a correct
> way of supplying a username in a uniform resource identifier - thus giving
> these vulnerabilities a potential way of being called remotely when a user
> supports telnet URI handlers and is using a vulnerable telnet
> implementation. Alternatively if USER= cannot be reached or overflown (as
> in the Apple client) then the overflows could be caused by a connecting
> telnetd service such as the telnet_term_0day.py example proof-of-concept.
> That could be reached simply by accessing telnet:// - URI handlers are not
> just limited to web browsers and are a means to identify network resources,
> there could be other clients not just web browsers out there using them
> (rfc3986)
>
> Unfortunately it is really busy for me this time of year and I do not have
> the time to investigate further beyond what I have provided to the list.
> They are present in at least a dozen BSD based telnet clients so far,
> Apple's telnet client from Sierra, NetKIT BSD (stack overflow confirmed,
> heap unsure), inetutils-1.9.4 & also netkit-telnet. It is hard for me to
> determine exploitation risk of all such instances that are out there but I
> hope now this list can see that this is a widespread problem not just
> limited to a single telnet client and has security implications from a
> remote perspective and also locally - when a user is in a restricted shell
> and calls the "telnet" command they could breakout of the shell using one
> of these overflows. Hackers out there might now cry out "ah-hah but what
> about !sh" - in some restricted shells in embedded devices (Mikrotik) such
> functionality is often removed and thus this offers a way to overwrite /
> corrupt memory and potentially breakout of such shells. I will agree that
> the use of the stack-overflow and its restricted shell breakout is minimal
> but it should still not be dismissed as "not a vulnerability" because
> security implications aren't immediately apparent.
>
> With that my original advisory needs amending to take into account that
> the core problem being demonstrated here is more wide-spread than I
> initially realised. I would argue telnet should be deprecated entirely in
> systems where it has not yet been disabled in favour of more regularly
> audited & peer reviewed OpenSSH. I believe the reasons these flaws have
> persisted for some 20 years in various forms is that no-one takes telnet
> client security as an issue yet I have shown two ways it could be triggered
> remotely and also used in a local context.
>
> Happy Hacking to all and to all a Merry Haxmas!
>
> Kind Regards,
> Hacker Fantastic
>
>
> On Wed, Dec 12, 2018 at 10:13 PM Tavis Ormandy <taviso@google.com> wrote:
>
>> On Wed, Dec 12, 2018 at 5:21 PM Hacker Fantastic
>> <hackerfantastic@googlemail.com> wrote:
>> >
>> > Please see the below proof of concept in triggering the heap overflow
>> using the IAC SB TELQUAL_IS environment option variable assignment. As per
>> my original advisory, which did not fully indicate the details but gave the
>> overview of how to trigger the condition.
>>
>> Cool, but I think this is a different bug (AFAICT, it's CVE-2005-0469,
>> it was fixed in netkit, but far fewer distros use inetutils). I agree
>> this was a real vulnerability, It's a pretty good sign inetutils
>> should be deprecated imho.
>>
>> Tavis.
>>
>
>
> --
> Matthew Hickey
> Tel: +44 7543 661237
> Web: http://blog.hackerfantastic.com
>
> Please visit my website for blog postings, status updates and project
> information.
>
>
>
>
>

-- 
Matthew Hickey
Tel: +44 7543 661237
Web: http://blog.hackerfantastic.com

Please visit my website for blog postings, status updates and project
information.

--00000000000049c417057ce98487--
