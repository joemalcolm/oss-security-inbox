X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/10/18/6
Message-ID: <5c7a8a0a-c788-48b1-b0a8-b0dea5ad6af8@email.android.com>
Date: Sat, 18 Oct 2014 09:39:52 +0200
From: Nikos Mavrogiannopoulos <n.mavrogiannopoulos@...il.com>
To: mancha <mancha1@...o.com>,oss-security@...ts.openwall.com
CC: Nikos Mavrogiannopoulos <nmav@...tls.org>,dkg@...thhorseman.net
Subject: Re: Re: neuter the poodle
Content-Type: text/plain; charset=utf-8

Ok indeed, there is nothing restricting it to browsers.  It is just that these were known to be the major users of the insecure negotiation.  If any other application is using it too it will be vulnerable too.

On 18 October 2014 09:25:06 CEST, mancha <mancha1@...o.com> wrote:
>On Sat, Oct 18, 2014 at 09:01:55AM +0200, Nikos Mavrogiannopoulos
>wrote:
>> Hi, The attack that you describe below is not an attack on tls
>> negotiation. If you would be using the gnutls api as documented it
>> wouldn't work. It is an attack on the insecure negotiation used by
>> firefox, which as it seems it shares code with thunderbird. The text
>> in my description is accurate, the attack affects mostly browsers,
>and
>> if you are using the tls protocol negotiation you are safe.
>
>Hi.
>
>I don't think DKG was suggesting the GnuTLS API is vulnerable to
>protocol downgrade attacks if used according to guidelines (I know I
>wasn't).
>
>His question relates to your "only browsers" comment, which as my
>attack
>against Thunderbird+IMAPS shows, is inaccurate. My second link contains
>a similar mistake by Red Hat.  
>
>--mancha

-- 
Sent fron my mobile. Please excuse my brevity.
