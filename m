Received: (qmail 11418 invoked by uid 550); 29 Mar 2024 23:00:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1178 invoked from network); 29 Mar 2024 22:59:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1711753164; x=1743289164;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=OIUc2CfPCS3ibdrQZM9CEs3YJB3h1CT4PT06Cki6d8M=;
  b=pCLfF18zXxgOxrirpx182Y5bi6Ou1/7GhrZioPfdyQc8YOMoYPpAwmC4
   Hu64zEWs+m1zDe3u0d6ARKmRCEDUNe0gtay3eNW0WGc8xyQKup6DdvWnZ
   SnmtKfFdn/TJ0F7HpS3JjerbuwAg8tzEUz5DyKswXYz1reVT8ovq2b6zG
   8=;
X-IronPort-AV: E=Sophos;i="6.07,166,1708387200"; 
   d="scan'208";a="77274090"
X-Farcaster-Flow-ID: 306876f9-48f7-401e-a9e9-6619154c0d95
From: "Liguori, Anthony" <aliguori@amazon.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: [oss-security] Re: backdoor in upstream xz/liblzma leading to
 ssh server compromise
Thread-Index: AQHagiy2seKHLjTh7kGoaTfVwfCagA==
Date: Fri, 29 Mar 2024 22:59:11 +0000
Message-ID: <01322afdcf6b4dd7b81452dc5afed6b1@amazon.com>
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
 <uu76c4$u7g$1@ciao.gmane.io> <20240329211052.GA2470@openwall.com>
 <uu7da3$87n$1@ciao.gmane.io>
 <20240329221938.dqit6xuh4es2v6gc@awork3.anarazel.de>,<uu7g5q$8hl$1@ciao.gmane.io>
In-Reply-To: <uu7g5q$8hl$1@ciao.gmane.io>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [10.187.171.33]
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [oss-security] Re: backdoor in upstream xz/liblzma leading to ssh
 server compromise

On 2024-03-29, Andres Freund wrote:
> Hi,
>
> On 2024-03-29 21:54:11 -0000, Tavis Ormandy wrote:
>> On 2024-03-29, Solar Designer wrote:
>> >> I have a minor procedural question for Solar though, shouldn't this
>> >> have been redirected to oss-security immediately from distros? What's
>> >> the rationale for an embargo here?
>> >
>> > We don't have a clear policy for such case.=A0 Some distros list membe=
rs
>> > have indeed suggested making this public ASAP.=A0 We ended up delaying
>> > publication by one day per my suggestion (as a compromise between ASAP
>> > and having no specific CRD), and I think these are some reasons why:
>>
>> Thanks, a compromise is better than nothing :) I think I would have
>> argued for immediately discussing this in the open.
>
> FWIW, I don't know much of the tradeoffs in this space. With that caveat:

I think we should have a policy that if issues are suspected to be actively=
 exploited, that the issue goes public immediately.  If even there is no pa=
tch or mitigation, there's not a lot of benefit to keeping it private.

I think everyone was acting in good faith here and did great work, but ther=
e wasn't a clear policy for handling this type of issue.

I very much agree that there's very little benefit to limiting the number o=
f folks that know what's going on when someone is actively taking advantage=
 of an issue.

Regards,

Anthony Liguori=
