X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3918" "Thursday" "11" "January" "2018" "18:48:20" "-0800" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFkLv4TXc1ty6uX+ajrBcaU=0y612bnatryBSt1usp2gEhA@mail.gmail.com>" "100" "[oss-security] Re: transmission: rpc session-id mechanism design flaw results in RCE" "^Date:" nil nil "1" "2018011202:48:20" "[oss-security] Re: transmission: rpc session-id mechanism design flaw results in RCE" (number mark "        taviso@googl Jan 11  100/3918  " thread-indent "\"[oss-security] Re: transmission: rpc session-id mechanism design flaw results in RCE\"\n") "<CAJ_zFkLDRxE3wOXw9AwmOR1URO0xwTAK6Ud3i72mmOV7An=67A@mail.gmail.com>" ("<CAJ_zFkLDRxE3wOXw9AwmOR1URO0xwTAK6Ud3i72mmOV7An=67A@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 4033 invoked by uid 550); 12 Jan 2018 02:48:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3935 invoked from network); 12 Jan 2018 02:48:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=Ll3C+ExWwEbF7WzjyLuhJaRaMmbKe1IqEFZXIY1fZsM=;
        b=enDn0jw1DuFut8POwZtC9B9iqkPpgQIgNMC/HHKltEoQ7uGz9n0NWvtMTghSt4rawF
         MNPsv8BxG5t5oIdkNbSwx+u4XxqJaN17ZwhH/QFRmZDjnLNCgh4DKfVBIFlmCP8seSLz
         jQb+pT0uLAxa8zEL5Z8OI16qtAIAJ4ESzSOOhyiX+dRVq8brqQmyijWgTzhCAaNkXp9x
         AVIDCCItffR8sFvh5ld+tpSW2LmDxXquPrnQIsjGWarpUnul93VLQEf+FXunOcg32Rsg
         UoqOAUAjEb3XeyBWUa9C6rN8NY69iqRzI2K509pBDGvzifSxE8BaQVHq0wqPg5GRFf0x
         9wRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=Ll3C+ExWwEbF7WzjyLuhJaRaMmbKe1IqEFZXIY1fZsM=;
        b=F5gEyN92g5/a/KvvMVoE7AMX2EORMogpmX9fuqvTOZcv1yMqT9WX5qOsAkL0Sg/Z9y
         kNxsVBzS3fwj1ccIZY0eqoWSKWZbzXCCJRy0IASSSJNpZcR708LVXJ2PwxuV/rP9HUNI
         MN3tnsv/flI2bHcq8hwibm+ikE5ZUjPPB5uByi9a8sH4wJCT8Ra9+9crP7N4BiYT1cSj
         GVKTTOLnSABIterP/Sw14j15JiXAneepI6Ircp62aOD5ps/2A2+tDt4Sir2KtpBlT4Ac
         4fDMGfM+BmbIeySsR4TIUhAOKqxP71q5lcDItuC/VJU/E8hcgwECwS4dugE3NuYvq9J4
         QvmA==
X-Gm-Message-State: AKwxytd65nGQtgkM5nZ5FUFPmsCPhknq2LsLbnGBCdJj6czqHeNRBThs
	70wMe0TuQ936UqZyVnVHoQ1RVy6HwTask17dKZN5JYrBkVQ=
X-Google-Smtp-Source: ACJfBovQykTLVVjxTMX9NSNNdNFCMA2YrKedV6fmcR2/85LGp7KsxWgQwwO3nY37wNNwX+lYY1+H7pGOiuLKYUP6oEc=
X-Received: by 10.55.79.138 with SMTP id d132mr3736742qkb.328.1515725320498;
 Thu, 11 Jan 2018 18:48:40 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CAJ_zFkLDRxE3wOXw9AwmOR1URO0xwTAK6Ud3i72mmOV7An=67A@mail.gmail.com>
References: <CAJ_zFkLDRxE3wOXw9AwmOR1URO0xwTAK6Ud3i72mmOV7An=67A@mail.gmail.com>
Message-ID: <CAJ_zFkLv4TXc1ty6uX+ajrBcaU=0y612bnatryBSt1usp2gEhA@mail.gmail.com>
Content-Type: multipart/alternative; boundary="001a114a865e4f033605628b4d7b"
Date: Thu, 11 Jan 2018 18:48:20 -0800
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: transmission: rpc session-id mechanism design flaw results in RCE
To: oss-security@lists.openwall.com

--001a114a865e4f033605628b4d7b
Content-Type: text/plain; charset="UTF-8"

Here is an updated version of the patch (some tests were failing):

https://patch-diff.githubusercontent.com/raw/transmission/transmission/pull/468.diff

On Thu, Jan 11, 2018 at 10:47 AM, Tavis Ormandy <taviso@google.com> wrote:

> Hello, the transmission bittorrent client uses a client/server
> architecture, the user interface is the client and a daemon runs in the
> background managing the downloading, seeding, etc.
>
> Clients interact with the daemon using JSON RPC requests to a web server
> listening on port 9091. The daemon will only accept requests from localhost
> by default, but it's common to configure NAS devices to accept remote
> clients.
>
> A sample RPC session looks like this:
>
> $ curl -sI http://localhost:9091/transmission/rpc
> HTTP/1.1 409 Conflict
> Server: Transmission
> X-Transmission-Session-Id: JL641xTn2h53UsN6bVa0kJjRBLA6oX
> 1Ayl06AJwuhHvSgE6H
> Date: Wed, 29 Nov 2017 21:37:41 GMT
>
> $ curl -H 'X-Transmission-Session-Id: JL641xTn2h53UsN6bVa0kJjRBLA6oX1Ayl06AJwuhHvSgE6H'
>  -d '{"method":"session-set","arguments":{"download-dir":"/home/user"}}'
> -si http://localhost:9091/transmission/rpc
> HTTP/1.1 200 OK
> Server: Transmission
> Content-Type: application/json; charset=UTF-8
> Date: Wed, 29 Nov 2017 21:38:57 GMT
> Content-Length: 36
>
> {"arguments":{},"result":"success"}
>
> As with all HTTP RPC schemes like this, any website can send requests to
> the daemon listening on localhost with XMLHttpRequest(), but the theory is
> they will be ignored because clients must prove they can read and set a
> specific header, X-Transmission-Session-Id.
>
> Unfortunately, this design doesn't work because of an attack called "DNS
> rebinding". Any website can simply create a dns name that they are
> authorized to communicate with, and then make it resolve to localhost.
>
> The attack works like this:
>
> 1. A user visits http://attacker.com, which has an <iframe> to a
> subdomain the attacker controls.
> 2. The attacker configures their DNS server to respond alternately with
> 127.0.0.1 and 123.123.123.123 (an address they control) with a very low TTL.
> 3. When the browser resolves to 123.123.123.123, they serve HTML that
> waits for the DNS entry to expire (or force it to expire by flooding the
> cache with lookups), then they have permission to read and set headers.
>
> I have a domain I use for testing dns rebinding called rbndr.us, you can
> use this page to generate hostnames (source code is here:
> https://github.com/taviso/rbndr):
>
> https://lock.cmpxchg8b.com/rebinder.html
>
> Here I want to alternate between 127.0.0.1 and 199.241.29.227, so I use
> 7f000001.c7f11de3.rbndr.us:
>
> $ host 7f000001.c7f11de3.rbndr.us
> 7f000001.c7f11de3.rbndr.us has address 127.0.0.1
> $ host 7f000001.c7f11de3.rbndr.us
> 7f000001.c7f11de3.rbndr.us has address 199.241.29.227
> $ host 7f000001.c7f11de3.rbndr.us
> 7f000001.c7f11de3.rbndr.us has address 127.0.0.1
>
> Here you can see the resolution alternates between the two addresses I
> want (note that depending on caching it might take a while to switch, the
> TTL is set to minimum but some servers round up).
>
> I just wait for the cached response to expire, and then POST commands to
> the server.
>
> Exploitation is simple, you could set script-torrent-done-enabled and run
> any command, or set download-dir to /home/user/ and then upload a torrent
> for ".bashrc".
>
> Here is my (simple) demo, it's slow, but could be made very fast:
>
> http://lock.cmpxchg8b.com/Asoquu3e.html
>
> I've verified it works on Chrome and Firefox on Windows and Linux (I tried
> Fedora and Ubuntu), I expect other platforms and browsers are affected. There
> are screenshots of how the attack is supposed to look on the bug report
> here:
>
> https://github.com/transmission/transmission/pull/468
>
> Tavis.
>
>

--001a114a865e4f033605628b4d7b--
