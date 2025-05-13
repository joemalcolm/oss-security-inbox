Received: (qmail 11702 invoked by uid 550); 13 May 2025 18:36:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14226 invoked from network); 13 May 2025 17:02:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1747155723;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pkUtE6eutLuFNlGZHQooyGIUMT0nHmA40j7IS2krGoo=;
	b=bUB6Kagu4Jy2rF6rq/BbXDlqTKLwEj5yk65Zl5kgFPJc37HyCfxij8Di1Tz2m3NBGwWpsm
	Vjt2E6K2lP/H9smS1bqbyOG8yBFT9G0EeIE8NOrEFsBYNPmKo887uvC3qZy1FDHFU8WjTh
	61O+9MebOx4s1iRRo2y+6S5qKr0MTRg=
X-MC-Unique: C2RTkLExNNu_UcnVVd4G3w-1
X-Mimecast-MFC-AGG-ID: C2RTkLExNNu_UcnVVd4G3w_1747155721
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747155721; x=1747760521;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pkUtE6eutLuFNlGZHQooyGIUMT0nHmA40j7IS2krGoo=;
        b=pHLSQxVKDGp48K1BIhos6QX6JdH1INQRba9DXMK9CLxm9P0uoKn5ZnQnZX4DunKpK3
         nfYnVfiJuZLCCmIlHOZrJwe//lEhmOX3Siby92jFTML/EUKR+orzoNL0GvtorTHNN+4Z
         5J/y+lAF6Og6KEbjTZ26tBkv6iRMTvEMN9gunKZx4admHY4XXkJXvnh5C7JeImexCU1B
         JBbUT5C07T14uQAdc7WecgwLxMXF7gM+vE2E86mYx4zM3fB1Bdxh7bEfN62hqPzL9kBO
         33/AH4Qjq+sCJ21PkxQnY13QcGPH9ngfawb97vUtsugPjQQK8lPHzYNcpIIEx+1FHSZO
         qP1w==
X-Gm-Message-State: AOJu0YwWIfJN/jWj8xJ/WFP/6SUfYiPhV4jJIJ9fUKY3Pom3rYL3QiPw
	1tzHQOwdMVdRvK+tg5FryDWcljfmTPnm0bAnmwulzJnwDVav7gj5hCwp46UWnoZGXjcryi0PWaA
	MBA7Cz8ZJUgJ+nNO77JIz6P8ARx5OLhhgMJRtwLB2eHSnRxv62eznwv7tb9mbFr2kdFUR71nxzj
	9VNYTv50JIexTvxmnKj5lRIrrUgOERiwW9Ov09QZ7bpql+8pUv
X-Gm-Gg: ASbGncuTbjLpmdnFSMaBaapsxkAsVsr5wIfEHE+bGAYYR07IFr7hApqHfhCQp0PLlg1
	H7hlWzv2DiLTQgxj7103xv6yMXOxo+qvvuuW0EKaXAmsJ1CQGKds0OADGHpGs+JHekqnYiAc=
X-Received: by 2002:a17:90b:3b43:b0:2f6:d266:f462 with SMTP id 98e67ed59e1d1-30e2e68a300mr382565a91.35.1747155719669;
        Tue, 13 May 2025 10:01:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEWadJ1s1tOHoPoDQkhseYBpFIDdrKEwYCf6yzeGCPzZmbm2VyrgutY4YPyI9XQ5bC0ziMQ/ohDJhpHAlRV0V4=
X-Received: by 2002:a17:90b:3b43:b0:2f6:d266:f462 with SMTP id
 98e67ed59e1d1-30e2e68a300mr382484a91.35.1747155718868; Tue, 13 May 2025
 10:01:58 -0700 (PDT)
MIME-Version: 1.0
References: <CA+NO1zTqeNPvwupEFgcr6T4NgU3V93vtJ8eEpmAHYMGjvpR6YQ@mail.gmail.com>
In-Reply-To: <CA+NO1zTqeNPvwupEFgcr6T4NgU3V93vtJ8eEpmAHYMGjvpR6YQ@mail.gmail.com>
From: Marco Benatto <mbenatto@redhat.com>
Date: Tue, 13 May 2025 14:01:22 -0300
X-Gm-Features: AX0GCFuxoGn4v3PcCtbiVnzIxJGMDvKPlqnM7jpkYIe_qziAuUSGHiViYI4nz6Y
Message-ID: <CAOGQQ29AS8yQ+QxxWhuMhV0u9G6745Ra6FERTq-XyuWB6J0J-g@mail.gmail.com>
To: oss-security@lists.openwall.com
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: etCB95p0s6ghOy3lJQG4y77aQCc8tagBYX19mXbZrrc_1747155721
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] VSV00016: Varnish Cache 6.0, 7.6, 7.7 - Request
 Smuggling Attack

Hello Asad,

Is any CVE already assigned after the announcement was sent? If not I
can provide a CVE identifier if needed.

Thanks,

Marco Benatto
Red Hat Product Security
secalert@redhat.com for urgent response

On Tue, May 13, 2025 at 12:23=E2=80=AFPM Asad Ahmed <asadsa@varnish-softwar=
e.com> wrote:
>
> Hello there,
>
> We released Varnish Cache 7.7.1, 7.6.3, and 6.0.14 yesterday (sorry for t=
he
> delay).
>
> These releases fixes a vulnerability reported to us, which got the name
> VSV00016.
>
>
> *CVE*: Not assigned yet, expect a follow-up here.
>
> A client-side desync vulnerability can be triggered in Varnish Cache. This
> vulnerability can be triggered under specific circumstances involving
> malformed HTTP/1 chunked requests.
>
> An attacker can abuse a flaw in Varnish=E2=80=99s handling of chunked tra=
nsfer
> encoding which allows certain malformed HTTP/1 requests to exploit improp=
er
> framing of the message body to smuggle additional requests. Specifically,
> Varnish incorrectly permits CRLF to be skipped to delimit chunk boundarie=
s.
> Impact <https://varnish-cache.org/security/VSV00016.html#impact>
>
> The primary risk of this vulnerability is enabling HTTP request smuggling
> attacks, which could have consequences for downstream systems. Specifical=
ly:
>
> *Cache Poisoning*: A downstream cache positioned in front of Varnish could
> cache incorrect or malicious content if it allows the aforementioned
> malformed HTTP/1 requests to pass through unhandled. This can lead to
> unintended responses being served to users, potentially exposing sensitive
> information or delivering harmful payloads.
>
> *Security Risks*: Bypass of WAF type products downstream from Varnish cou=
ld
> be achieved if these products are configured to not inspect request bodies
> and in addition allow the aforementioned malformed HTTP/1 requests to pass
> through.
>
> The vulnerability has been given a severity rating of *low/medium*.
> Versions affected
> <https://varnish-cache.org/security/VSV00016.html#versions-affected>
>
>    -
>
>    Varnish Cache releases up to and including 7.7.0.
>    -
>
>    Varnish Cache 6.0 LTS series up to and including 6.0.13.
>
> Versions not affected
> <https://varnish-cache.org/security/VSV00016.html#versions-not-affected>
>
>    -
>
>    Varnish Cache 7.7.1 (released 2025-05-12)
>    -
>
>    Varnish Cache 7.6.3 (released 2025-05-12)
>    -
>
>    Varnish Cache 6.0 LTS version 6.0.14 (released 2025-05-12)
>
> Solution <https://varnish-cache.org/security/VSV00016.html#solution>
>
> The recommended solution is to upgrade Varnish to one of the versions whe=
re
> this issue has been resolved, and then ensure that Varnish is restarted.
> Thankyous and credits
> <https://varnish-cache.org/security/VSV00016.html#thankyous-and-credits>
>
> Ben Kallus at Dartmouth College for finding and reporting the issue to the
> project in a responsible manner.
> Nils Goroll (UPLEX), Dridi Boukelmoune (Varnish Software) and Poul-Henning
> Kamp for the patches.
> Varnish Software for handling this security incident.
>
> References:
>
> - https://varnish-cache.org/security/VSV00016.html#vsv00016
> - https://varnish-cache.org/security/index.html
> -
> https://varnish-cache.org/lists/pipermail/varnish-announce/2025-May/00076=
7.html
> - https://github.com/varnishcache/varnish-cache
> - https://varnish-cache.org/releases/rel7.7.1.html#rel7-7-1
> - https://varnish-cache.org/releases/rel7.6.3.html#rel7-6-3
> - https://varnish-cache.org/releases/rel6.0.14.html#rel6-0-14
>
> --
> Asad

