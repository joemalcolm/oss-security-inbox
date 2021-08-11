X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1387" "Wednesday" "11" "August" "2021" "08:09:57" "+0100" "Matthew Wild" "mwild1@gmail.com" nil "34" "Re: [oss-security] STARTTLS vulnerabilities" "^Date:" nil nil "8" nil nil (number mark "        mwild1@gmail Aug 11   34/1387  " thread-indent "\"Re: [oss-security] STARTTLS vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] STARTTLS vulnerabilities" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18181 invoked by uid 550); 11 Aug 2021 07:11:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17965 invoked from network); 11 Aug 2021 07:10:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=VnzJBymw15qEBwZEkxsH4MgQsflH9AeUfNdFsiHx2Fg=;
        b=m1pgVBnSlXqXk38j2AwubkCiiB6vvCJ3kun/rC+eaulqGuQBcXtML+jHnVRd8UeaOJ
         CqgTQi0PqJI0TI8SV5qnBUp/wrlN8pWyLUHZyTH1Uq8/BNmnYkwl3USlDhAtXqkrAX40
         UgSE6BOjcr5LPXnJ7Ezea5eKsXE74nHsXiOJFeqbwQ3N6ZlhQb7K/LqrCH6Lux8radZ3
         gy7G+wmTuceTxYfZwFG7vtdk/jOPcSNAfuahIor3spxCQMhP/H8J8JSn9d2OjMC8ta8U
         H57w/9tFlwaFFELMUcjqyPPpx2K+DtPWIzI5RmGADMfETTgkFBsz9ZKbeMgg6rErBP9M
         17YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=VnzJBymw15qEBwZEkxsH4MgQsflH9AeUfNdFsiHx2Fg=;
        b=tbXT74cN265IFGKLOa9ntdfgnwslhnFvo/2Ed2n4Tt32JWs1vRAoPEz+KbA6tbr0+C
         n4AHLdU7QL8n5z+5NAGWlMMa4KJjxDE2int7sXokH7sOLpYMRlhNdDw6xppuLbKGKndW
         SDJ/g+e+peFWD2JllImYJIu2rKgdYtjthq9vOPcph+tUd9oS72g86KQnMXAVQuWBjgNP
         3Iw7AGpHzLwgpA/cW3qa/5dwOcSKVDyld9fDL13DwVjqA2Z4LUTun0WkKzxsc75erxwn
         W0vBAO3+v/JbFQ+5V6mlHabSemjo4nLfpLUziPcBjgm+84ygGPpdK797C1j8GKZ8IHYT
         MEmA==
X-Gm-Message-State: AOAM530DRGZQvVfZRVAT6NTKvu5hjmnfmaAfT1bvQFxFtmw5qai6w3rk
	msmNxiP/Gk1CZR9eCv+5HJ9hoIlbcdUNH5swE639dOQkyYh3uQ==
X-Google-Smtp-Source: ABdhPJzzvJoAVwAlLrJmO9S5reT0buJyPbvEvZbZhV2QWoQhGdpfFasO1ivF5Xb6lgMCGi+qwttxXAxbwD4FPTxd12Y=
X-Received: by 2002:a05:622a:11cc:: with SMTP id n12mr28681889qtk.363.1628665809106;
 Wed, 11 Aug 2021 00:10:09 -0700 (PDT)
MIME-Version: 1.0
References: <20210810122113.3fe65cc9@computer> <20210810134156.GF1599104@hal>
In-Reply-To: <20210810134156.GF1599104@hal>
Message-ID: <CAJt9-x5xY3ikisc=RZ1=tqNO+8Tm8YLfjVw=3=UQ2_nAP_7Oiw@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000027a4905c9434f88"
Date: Wed, 11 Aug 2021 08:09:57 +0100
From: Matthew Wild <mwild1@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] STARTTLS vulnerabilities
To: oss-security@lists.openwall.com

--000000000000027a4905c9434f88
Content-Type: text/plain; charset="UTF-8"

On Tue, 10 Aug 2021 at 14:52, Guido Berhoerster <
guido+openwall.com@berhoerster.name> wrote:

> Hi,
>
> have you or are you planning to look into XMPP client/server
> implementations as well?  The use of STARTTLS for both c2s and s2s
> connections is still prevalent both in terms of implementation
> support and actual practice and could potentially suffer form the
> same issues (command injection or downgrade attacks).


XMPP has some additional protections against this in its design. It is
required, after TLS negotiation, for both parties to discard the pre-TLS
XML stream and negotiate a new one after TLS has been established[1].
Combined with TLS being considered mandatory by practically all modern
implementations and deployments[2], I'd hope that the attacks described
here do not translate well to the XMPP ecosystem.

However we all know standards are not always reflective of the real world.
We (the XMPP Standards Foundation and community) are always open to
researchers interested in this kind of thing, and have collaborated in the
past for coordinating disclosure of cross-implementation vulnerabilities.

Regards,
Matthew

[1]: https://xmpp.org/rfcs/rfc6120.html#tls-process-neg-success
[2]: https://xmpp.org/2013/11/xmpp-ubiquitous-encryption-a-manifesto/

--000000000000027a4905c9434f88--
