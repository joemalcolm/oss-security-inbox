X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3795" "Saturday" "7" "August" "2021" "09:17:55" "-0500" "Ariadne Conill" "ariadne@dereferenced.org" nil "82" "Re: [oss-security] Re: [Lynx-dev] bug in Lynx' SSL certificate validation -> leaks password in clear text via SNI (under some circumstances)" nil nil nil "8" nil nil (number mark "U       ariadne@dere Aug  7   82/3795  " thread-indent "\"Re: [oss-security] Re: [Lynx-dev] bug in Lynx' SSL certificate validation -> leaks password in clear text via SNI (under some circumstances)\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Re: [Lynx-dev] bug in Lynx' SSL certificate validation -> leaks password in clear text via SNI (under some circumstances)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26305 invoked by uid 550); 7 Aug 2021 14:18:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26116 invoked from network); 7 Aug 2021 14:18:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dereferenced.org;
	s=mailbun; t=1628345878;
	bh=9eMphIdnzBi14TFnNgTFZzlEeVEGZr6zg0wItOJAo4U=;
	h=Date:From:To:cc:Subject:In-Reply-To:References;
	b=Z6bd/pXwgf2jQkj0Q5S1xwxQkUQ6pnGVaLggFDHBZGmGqranbAlwAqu+UnCcG/BV1
	 kosvsFuDzdrnfZwkEXjX1RnKlZ9iUIk51Cg2en+hlbzq/QoL4pJAHgHOMTTyAIKBcV
	 DsJ7LKYch/dEyu7K6k6STdnI1SN1Gt1xoNnAT9BJgVo82rAcEDwsLqd7cAoAB94nDO
	 5Jqq4R4Fqni6h84/q1OvA38ij4ZGnDMjwslP5GbP/Jir9qujqJraSCgt4vqMACQN00
	 3wZnuz4JPTVJmh42eFYTXKluQn2ecfd5fvj8qF5FFBj0US5eoh3sAQOFHpHZgY2UpB
	 ASi1QfOL3gb6Q==
Date: Sat, 7 Aug 2021 09:17:55 -0500 (CDT)
From: Ariadne Conill <ariadne@dereferenced.org>
To: oss-security@lists.openwall.com
cc: Axel Beckert <abe@debian.org>, lynx-dev@nongnu.org, security@debian.org, 
    991971@bugs.debian.org
In-Reply-To: <Pine.BSM.4.64L.2108070210210.904@herc.mirbsd.org>
Message-ID: <ab519dc0-7354-8e5-8855-ffea2534ea34@dereferenced.org>
References: <Pine.BSM.4.64L.2108061711590.28219@herc.mirbsd.org> <20210807015102.ea4f5immh2l5ku4n@sym.noone.org> <Pine.BSM.4.64L.2108070210210.904@herc.mirbsd.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="0-165752436-1628345878=:44151"
Subject: Re: [oss-security] Re: [Lynx-dev] bug in Lynx' SSL certificate
 validation -> leaks password in clear text via SNI (under some
 circumstances)

--0-165752436-1628345878=:44151
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8BIT

Hi,

On Sat, 7 Aug 2021, Thorsten Glaser wrote:

> Axel Beckert dixit:
>
>> This is more severe than it initially looked like: Due to TLS Server
>> Name Indication (SNI) the hostname as parsed by Lynx (i.e with
>> "user:pass@" included) is sent in _clear_ text over the wire even
>
> I *ALWAYS* SAID SNI IS A SHIT THING ONLY USED AS BAD EXCUSE FOR NAT
> BY PEOPLE WHO ARE TOO STUPID TO CONFIGURE THEIR SERVERS RIGHT AND AS
> BAD EXCUSE FOR LACKING IPv6 SUPPORT, AND THEN THE FUCKING IDIOTS WENT
> AND MADE SNI *MANDATORY* FOR TLSv1.3, AND I FEEL *SO* VINDICATED RIGHT
> NOW! IDIOTS IN CHARGE OF SECURITY, FUCKING IDIOTS…

It turns out SNI is only marginally related to this issue.  The issue 
itself is far more severe: HTParse() does not understand the authn part of 
the URI at all.  And so, when you call:

   HTParse("https://foo:bar@example.com", "", PARSE_HOST)

It returns:

   foo:bar@example.com

Which is then handed directly to SSL_set_tlsext_host_name() or 
gnutls_server_name_set().  But it will also leak in the Host: header on 
unencrypted connections, and also probably SSL ones too.

As a workaround, I taught HTParse() how to parse the authn part of URIs, 
but Lynx itself needs to actually properly support the authn part really.

I have attached the patch Alpine is using to work around this infoleak.

Ariadne
--0-165752436-1628345878=:44151
Content-Type: text/plain; charset=US-ASCII; name=fix-auth-data-leaks.patch
Content-Transfer-Encoding: BASE64
Content-ID: <e92e13a9-96ee-b63f-400-224ac73a16c@dereferenced.org>
Content-Description: 
Content-Disposition: attachment; filename=fix-auth-data-leaks.patch

LS0tIGx5bngyLjguOXJlbC4xLm9yaWcvV1dXL0xpYnJhcnkvSW1wbGVtZW50
YXRpb24vSFRQYXJzZS5jDQorKysgbHlueDIuOC45cmVsLjEvV1dXL0xpYnJh
cnkvSW1wbGVtZW50YXRpb24vSFRQYXJzZS5jDQpAQCAtMzEsNiArMzEsNyBA
QA0KIA0KIHN0cnVjdCBzdHJ1Y3RfcGFydHMgew0KICAgICBjaGFyICphY2Nl
c3M7DQorICAgIGNoYXIgKmF1dGg7DQogICAgIGNoYXIgKmhvc3Q7DQogICAg
IGNoYXIgKmFic29sdXRlOw0KICAgICBjaGFyICpyZWxhdGl2ZTsNCkBAIC0x
MjEsNiArMTIyLDE4IEBADQogICAgIH0NCiANCiAgICAgLyoNCisgICAgICog
U2NhbiBsZWZ0LXRvLXJpZ2h0IGZvciBhbiBhdXRoZW50aWNhdGlvbiB1c2Vy
bmFtZS9wYXNzd29yZCBjb21iaW5hdGlvbiAoYXV0aCkuDQorICAgICAqLw0K
KyAgICBmb3IgKHAgPSBhZnRlcl9hY2Nlc3M7ICpwOyBwKyspIHsNCisgICAg
ICAgaWYgKCpwID09ICdAJykgew0KKyAgICAgICAgICAgcGFydHMtPmF1dGgg
PSBhZnRlcl9hY2Nlc3M7DQorICAgICAgICAgICAqcCA9ICdcMCc7DQorICAg
ICAgICAgICBhZnRlcl9hY2Nlc3MgPSAocCArIDEpOyAvKiBhZHZhbmNlIGJh
c2UgcG9pbnRlciBmb3J3YXJkICovDQorICAgICAgICAgICBicmVhazsNCisg
ICAgICAgfQ0KKyAgICB9DQorDQorICAgIC8qDQogICAgICAqIFNjYW4gbGVm
dC10by1yaWdodCBmb3IgYSBmcmFnbWVudCAoYW5jaG9yKS4NCiAgICAgICov
DQogICAgIGZvciAocCA9IGFmdGVyX2FjY2VzczsgKnA7IHArKykgew0KQEAg
LTEzNSwxMCArMTQ4LDE0IEBADQogICAgICAqIFNjYW4gbGVmdC10by1yaWdo
dCBmb3IgYSBob3N0IG9yIGFic29sdXRlIHBhdGguDQogICAgICAqLw0KICAg
ICBwID0gYWZ0ZXJfYWNjZXNzOw0KLSAgICBpZiAoKnAgPT0gJy8nKSB7DQot
CWlmIChwWzFdID09ICcvJykgew0KLQkgICAgcGFydHMtPmhvc3QgPSAocCAr
IDIpOwkvKiBob3N0IGhhcyBiZWVuIHNwZWNpZmllZCAgICAqLw0KLQkgICAg
KnAgPSAnXDAnOwkJLyogVGVybWluYXRlIGFjY2VzcyAgICAgICAgICAgKi8N
CisgICAgaWYgKCpwID09ICcvJyB8fCBwYXJ0cy0+YXV0aCkgew0KKwlpZiAo
cFsxXSA9PSAnLycgfHwgcGFydHMtPmF1dGgpIHsNCisgICAgICAgICAgICBp
ZiAoIXBhcnRzLT5hdXRoKSB7DQorCSAgICAgICAgIHBhcnRzLT5ob3N0ID0g
KHAgKyAyKTsJLyogaG9zdCBoYXMgYmVlbiBzcGVjaWZpZWQgICAgKi8NCisJ
ICAgICAgICAgKnAgPSAnXDAnOwkJLyogVGVybWluYXRlIGFjY2VzcyAgICAg
ICAgICAgKi8NCisgICAgICAgICAgICB9IGVsc2Ugew0KKyAgICAgICAgICAg
ICAgICBwYXJ0cy0+aG9zdCA9IHA7DQorICAgICAgICAgICAgfQ0KIAkgICAg
cCA9IFN0ckNocihwYXJ0cy0+aG9zdCwgJy8nKTsJLyogbG9vayBmb3IgZW5k
IG9mIGhvc3QgbmFtZSBpZiBhbnkgKi8NCiAJICAgIGlmIChwICE9IE5VTEwp
IHsNCiAJCSpwID0gJ1wwJzsJLyogVGVybWluYXRlIGhvc3QgKi8NCg==

--0-165752436-1628345878=:44151--
