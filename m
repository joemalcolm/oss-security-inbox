Received: (qmail 24056 invoked by uid 550); 8 May 2024 13:23:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24032 invoked from network); 8 May 2024 13:23:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715174579; x=1715779379; darn=lists.openwall.com;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mlEPhm+v30M7ZYLprypquS5OFpxwZC7+lb0oXGqAQYs=;
        b=eeKzmHYCTj1J9WeNJ38XVJW68//neWwB8F8JnIJDu+z8aj9OiPbVzMDZPtHXjlsIHV
         nEcxqud6deEcZDIIlEuY0RdIPPgBVBVrJySphXDkcTvlOcOiCxq++bH7hDVjABumn8Rp
         h3mKnGU/7XsjnwPQUjiPWKoJTEQdK5uCHOn3s2q5sjJpm0kyPWBrQqepMDjC8xflhcjp
         Q3AOU9LoDB4IMijJfU8y+Hwkv+zI791p1pz6oDD9V4ManLWC++lgpFKeEQFMltGPxBVT
         tBRCjqGxtdz9a1R4efdF5em9C5RPhMlt7DgEnkrONQ+yrEVWQsYPYU5R7sUsLymG/Q+Q
         MmKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715174579; x=1715779379;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:sender:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=mlEPhm+v30M7ZYLprypquS5OFpxwZC7+lb0oXGqAQYs=;
        b=MaGxvon0pc8xx81jZ5q6MiYFnkZzt6push0M+QbzpIsixLeirQ60u8FPzPtlbsEA5d
         uwOtFlKx3DqwWGF3sKY/+sj8CibL/XqZXi3+zjI19OrW2K9WFqVg/J6A8SlUtFZdObDn
         zUoQLPDmnOyuNx/MFohGKhcVObL5mSF406c8k+I6MjCp7BaK3l+nsLzSf0UgW90iQFww
         dGr9O+HVa2O4TRolKZJrC8xbRTf3QpBwuujF87MQvFWVfe8rGMf3XZ/51HvV5xW5g8gw
         MGSxXQcakPLLN4o0LLP2khkHvbaaYKvMSagUolmcO+H0ScoPN7HcPBJa50ZIF+u8S1rS
         /VBA==
X-Gm-Message-State: AOJu0Yy7Vxl0Et1QZNEwVa9HynbIptFKHCqRcH4p3pgtDWb0nL25x2M7
	JLe+6J9KSKUkIf/Yg8vyzuJOLD4MbgDSwS7UjdELjnyyPwL1+0Yb2MAFjypD
X-Google-Smtp-Source: AGHT+IGwBBm3vN4KsuBhSaNlKGuBG3xgfn/SOFHC79EvpQhiw2P9OonEHCQydKKG8A2OwJ8uQVHF4g==
X-Received: by 2002:a2e:99c5:0:b0:2e0:5b76:9acd with SMTP id 38308e7fff4ca-2e447086a82mr15151721fa.27.1715174578766;
        Wed, 08 May 2024 06:22:58 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Wed, 8 May 2024 15:22:57 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <Zjt8sRn2BjTdAt6t@lorien.valinor.li>
References: <CAAc67N2A1oS+wNkFT-t-xrF8PzSHfk5CekqDNggEhsbUj9WMNA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAAc67N2A1oS+wNkFT-t-xrF8PzSHfk5CekqDNggEhsbUj9WMNA@mail.gmail.com>
Subject: Re: [oss-security] CVE-2024-26925: Linux: nf_tables: locking issue
 in the nf_tables_abort() function

Hi,

On Wed, May 08, 2024 at 12:42:57AM +0800, HexRabbit Chen wrote:
> Hello,
> 
> I found a locking issue in nf_tables set element GC implementation and
> exploited it in kernelCTF. The bug breaks the sequence number assumption
> in set asynchronous GC, which can be used to cause double free, and
> leads to local privilege escalation.
> 
> Introduced in v6.5:
> https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?id=720344340fb9
> 
> Fixed in v6.9-rc3:
> https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?id=0d459e2ffb54

Should be noted that this though has been backported to stable series:

5.4.262, 5.10.198, 5.15.134, 6.1.56, 6.4.13

but equally the fix in

5.4.274, 5.10.215, 5.15.155, 6.1.86, 6.6.26, 6.8.5.

Regards.
Salvatore
