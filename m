Received: (qmail 5423 invoked by uid 550); 7 Aug 2022 15:20:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5405 invoked from network); 7 Aug 2022 15:20:27 -0000
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vulndisco.cc; s=mail; t=1659885615;
	bh=Di1YlZOw1d8FnO4lEmI9C8UHuyT2/uVJrtrnIf6pmRk=;
	h=In-Reply-To:From:Date:References:To:Subject:Message-ID;
	b=PCJwPUyKj0yeG1CzaUmNf+ZdSAlDqPVnVX+qZ4B2PGbjmmILkzG6CQSoqDnbU75cP
	 nlYM+FvPXPd2ueRg5d4yIeMtc1Q70Q26T0KRaILrgbt6u15JMpKs8qQvZDN2SkTdyu
	 JTSm9rUwsellNFIDysmptQQ7UADkkkE8Kp7kIdvU=
Authentication-Results: vla3-3dd1bd6927b2.qloud-c.yandex.net; dkim=pass header.i=@vulndisco.cc
Message-ID: <16331f22-c81e-fa25-3930-9c282a975e0e@vulndisco.cc>
Date: Sun, 7 Aug 2022 18:20:11 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: oss-security@lists.openwall.com
References: <2007d258-97ab-fb3c-bfa8-0544c63ec1b8@vulndisco.cc>
 <Yu5+6SlKH6n6afZv@gentoo.org>
 <5f0712ff-44b4-cef2-1276-424c1cfa094e@vulndisco.cc>
 <20220806184721.GA8594@openwall.com> <20220806192502.GA10997@openwall.com>
From: Evgeny Legerov <admin@vulndisco.cc>
In-Reply-To: <20220806192502.GA10997@openwall.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Exim 4.95 invalid free

Hi,


Here is another interesting code in Exim 4.96.

I really doubt that it is exploitable, but if someone manages to 
reproduce at least ASAN crash, it would be great.

SPF_dns_exim_new(int debug)
{


memset(spf_dns_server, 0, sizeof(SPF_dns_server_t));
spf_dns_server->destroy      = NULL;
spf_dns_server->lookup       = SPF_dns_exim_lookup;
spf_dns_server->get_spf      = NULL;
spf_dns_server->get_exp      = NULL;
spf_dns_server->add_cache    = NULL;
spf_dns_server->layer_below  = NULL;
spf_dns_server->name         = "exim";
spf_dns_server->debug        = debug;


spf_nxdomain = SPF_dns_rr_new_init(spf_dns_server,
   "", ns_t_any, 24 * 60 * 60, HOST_NOT_FOUND);
if (!spf_nxdomain)
   {
   free(spf_dns_server);
   return NULL;
   }


if SPF_dns_rr_new_init() fails, spf_dns_server will be freed with free().


regards,

-e

On 06.08.2022 22:25, Solar Designer wrote:
> On Sat, Aug 06, 2022 at 08:47:21PM +0200, Solar Designer wrote:
>> Yet I understand we cannot really ask you for more, and a brief
>> link-only heads-up is better than none.
> When I wrote the above, I didn't realize these two bugs (in zlib and
> Exim) were Evgeny's own findings.  Now that I do, I think it isn't
> unreasonable for us to ask Evgeny to include the full detail in such
> postings going forward.  We'd appreciate that, Evgeny!
>
> Alexander
