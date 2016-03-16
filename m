X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/03/16/3
Message-ID: <0dae3f4d-39b1-82aa-2ac7-8da5738a1e0d@laposte.net>
Date: Wed, 16 Mar 2016 02:58:22 +0100
From: Laël Cellier <lael.cellier@...oste.net>
To: oss-security@...ts.openwall.com
Subject: Re: server and client side remote code execution through a buffer overflow in all git versions before 2.7.1 (unpublished ᴄᴠᴇ-2016-2324 and ᴄᴠᴇ‑2016‑2315)
Content-Type: text/plain; charset=utf-8

GitHub talks about a simple memory corruption because I was unable to 
proof a ʀᴄᴇ. While I’m sure the affected variables aren’t at the end of 
allocated heap, I definitely lack the required skills to produce a proof 
for remote code execution 
http://security.stackexchange.com/q/117394/36301 (I can put arbitrary 
data in paths but I don’t know how to exploit a heap overflow even 
without aslr and dep). Being too lazy, I didn’t get the required mark to 
go at the university which could have taught it (I had to go at an 
another one). So I won’t write it.

If someone is interested in producing such proof … Please do it 
