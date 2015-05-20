X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1627" "Wednesday" "20" "May" "2015" "13:14:59" "-0400" "Paul Wouters" "pwouters@redhat.com" "<555CC113.2050206@redhat.com>" "30" "Re: [oss-security] Logjam attack /  Imperfect Forward Secrecy: How Diffie-Hellman Fails in Practice" nil nil nil "5" "2015052017:14:59" "[oss-security] Logjam attack / Imperfect Forward Secrecy: How Diffie-Hellman Fails in Practice" (number mark "        pwouters@red May 20   30/1627  " thread-indent "\"Re: [oss-security] Logjam attack /  Imperfect Forward Secrecy: How Diffie-Hellman Fails in Practice\"\n") "<1432123050.6062.5.camel@debian.org>" ("<1432123050.6062.5.camel@debian.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26271 invoked by uid 550); 20 May 2015 17:15:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26249 invoked from network); 20 May 2015 17:15:12 -0000
Message-ID: <555CC113.2050206@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
References: <1432123050.6062.5.camel@debian.org>
In-Reply-To: <1432123050.6062.5.camel@debian.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
Date: Wed, 20 May 2015 13:14:59 -0400
From: Paul Wouters <pwouters@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Logjam attack /  Imperfect Forward Secrecy: How
 Diffie-Hellman Fails in Practice
To: oss-security@lists.openwall.com

On 05/20/2015 07:57 AM, Yves-Alexis Perez wrote:
> I guess most people will already have seen that, but just in case,
> because it might interest readers (even though it's not specifically
> about open source stuff).
> 
> https://weakdh.org/
> https://weakdh.org/imperfect-forward-secrecy.pdf

Note that it really points to TLS. While they mention other protocols, IKE / IPsec are not really (as) vulnerable. The original IKE design from November 1998
has a minimum MODP group of 768 bits. Why is TLS till allowing 512 bits SEVENTEEN years later?

I did a write up on MODP and IKE/IPsec from the freeswan/openswan/libreswan point of view:


https://nohats.ca/wordpress/blog/2015/05/20/weakdh-and-ike-ipsec/

    TL;DR The LogJam downgrade attack does not apply to MODP groups in the IKE protocol, only to TLS, so IKE or IPsec is not impacted.

    If you are using libreswan you are not vulnerable to weak MODP groups and using MODP2048 per default unless specifically configured for a lower MODP group.
    If you are using openswan with IKEv2 you are using MODP2048, but if you are using IKEv1 you are using MODP1536 which is still much stronger than MODP768 or
MODP1024.

    Libreswan as a client to a weak server will allow MODP1024 in IKEv1 as the least secure option, and MODP1536 in IKEv2 as the least secure option.
    Openswan does not properly implement INVALID_KE, so it cannot connect to another DH group than the one it started out as, so it runs the risk of getting
locked out if the server side bumps their minimum MODP group to 2048. openswan defaults to MODP1536 in IKEv1 and MODP2048 in IKEv2

[...]

Paul

