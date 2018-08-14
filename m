X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["950" "Tuesday" "14" "August" "2018" "17:09:38" "-0400" "David T." "davidmthomsen@gmail.com" "<CAPdG+L40W-nprsiRV_bw68HP-eJ9u6F=sfXS39UJgJAd2TkuNg@mail.gmail.com>" "33" "Re: [oss-security] CVE-2018-5391: Linux kernel: IP fragments with random offsets allow a remote denial of service (FragmentSmack)" nil nil nil "8" "2018081421:09:38" "[oss-security] CVE-2018-5391: Linux kernel: IP fragments with random offsets allow a remote denial of service (FragmentSmack)" (number mark "U       davidmthomse Aug 14   33/950   " thread-indent "\"Re: [oss-security] CVE-2018-5391: Linux kernel: IP fragments with random offsets allow a remote denial of service (FragmentSmack)\"\n") "<334572023.2548916.1534278651965.JavaMail.zimbra@redhat.com>" ("<1545879296.2548069.1534278208403.JavaMail.zimbra@redhat.com>" "<334572023.2548916.1534278651965.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26565 invoked by uid 550); 15 Aug 2018 09:13:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23661 invoked from network); 14 Aug 2018 21:10:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=C9xq2wf1J1BxN7p8sNeLxReKXvGh/RPGa1OlMAOZgVg=;
        b=bEeHxudg//otep4IlGV5krkojvQk8L6gxfYEF7c9+9mn5xdSMPfA247yxBYzFopO6O
         ze/7CQyxZbFb+iJRVO+gliMejQMP5LZ6GyKcTRUpBqyrULW70eccrWyKXUxVof+cWwqw
         7FCekQWy/EcyWs7FCoRffOOtACq5XcNCMD4AA2caPrBqwpnVX1kQtPKyMb0vS3YZ7gCQ
         1nY7vcu/8zEO+LjTdACGd1BtzQPdMyEoDZoyNWTD8CEEL8kkfFuQWHyB6slhicBcupXC
         /AjYerE4XTRCNR8aOEtN7IGVMhHUDARbQs7B/nBrDyxzuD8Gi+dJ2xtVnAErFkwa0uEo
         4KfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=C9xq2wf1J1BxN7p8sNeLxReKXvGh/RPGa1OlMAOZgVg=;
        b=gXjPjDtyXdkflktEv3JxqsNXMBfkE++/rYCm9LMuirJ8zgpZEbZu0+S1oaxIqXTMFQ
         QEUPoiBQcayHX6SHc6Zu1VC3fAseSGDZjKIRz6s4H2hpiqZfcn5b00/q5o8avQplKHAS
         9JYiKQ3YrDKXWe/ZPYjQIEAQjtAVDh2KL7mPOfiys05b5pnsjSZiDtNTKf3fBNLu4lhY
         Nj/x+2+cG4Quhn4Oe2nhes3JqpA61arYdlEHsWQJPUomNBbW9cDhp/CuzrdZoxWtn+Pq
         3jJpBaumBX+Yz2cturDPiCxBpHAeYTg+HgZl0FYyQe0R1iTWNOseZYM5q4LOHyC1QyQE
         JR0g==
X-Gm-Message-State: AOUpUlG8xnf7QcQzSZEULbjmA5Ljp7wZsvah9e2RaSWUn1A9cj0ASRXl
	kKAbefj+SHGsic28MA18W95aU+EjBhwlZ/zncQDklA==
X-Google-Smtp-Source: AA+uWPx4GIIxpS78UfM7b2y+6M+HPNcnSPksZoGullEIN94u1Oynp3BtMkmbB7BkuwoZaGh2sb0oqbh2L18tFr5ao/E=
X-Received: by 2002:aca:c585:: with SMTP id v127-v6mr26000389oif.348.1534280989543;
 Tue, 14 Aug 2018 14:09:49 -0700 (PDT)
MIME-Version: 1.0
References: <1545879296.2548069.1534278208403.JavaMail.zimbra@redhat.com> <334572023.2548916.1534278651965.JavaMail.zimbra@redhat.com>
In-Reply-To: <334572023.2548916.1534278651965.JavaMail.zimbra@redhat.com>
From: "David T." <davidmthomsen@gmail.com>
Date: Tue, 14 Aug 2018 17:09:38 -0400
Message-ID: <CAPdG+L40W-nprsiRV_bw68HP-eJ9u6F=sfXS39UJgJAd2TkuNg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000005e149f05736ba1b7"
Subject: Re: [oss-security] CVE-2018-5391: Linux kernel: IP fragments with
 random offsets allow a remote denial of service (FragmentSmack)

--0000000000005e149f05736ba1b7
Content-Type: text/plain; charset="UTF-8"

Is this the same as "SegmentSmack" that came out last week, CVE-2018-5390?
Or, what is the difference?

On Tue, Aug 14, 2018 at 16:31 Vladis Dronov <vdronov@redhat.com> wrote:

> Heololo,
>
> A flaw named FragmentSmack was found in the way the Linux kernel handled
> reassembly of fragmented IPv4 and IPv6 packets. A remote attacker could
> use this flaw to trigger time and calculation expensive fragment reassembly
> algorithms by sending specially crafted packets which could lead to a CPU
> saturation and hence a denial of service on the system.
>
> External References:
>
> https://www.kb.cert.org/vuls/id/641765
>
> https://access.redhat.com/articles/3553061
>
> https://bugzilla.redhat.com/show_bug.cgi?id=1609664
>
> Best regards,
> Vladis Dronov | Red Hat, Inc. | Product Security Engineer
>
-- 
Very respectfully,

David M Thomsen

--0000000000005e149f05736ba1b7--
