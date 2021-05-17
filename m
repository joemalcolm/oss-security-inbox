X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1383" "Monday" "17" "May" "2021" "15:34:12" "-0400" "Ana McTaggart" "amctagga@redhat.com" nil "66" "[oss-security] Re: CVE-2021-3531: Ceph: RGW unauthenticated denial of service" nil nil nil "5" nil nil (number mark "U       amctagga@red May 17   66/1383  " thread-indent "\"[oss-security] Re: CVE-2021-3531: Ceph: RGW unauthenticated denial of service\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: CVE-2021-3531: Ceph: RGW unauthenticated denial of service" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22153 invoked by uid 550); 17 May 2021 19:57:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6067 invoked from network); 17 May 2021 19:34:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1621280068;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=mpHfU47ytWvlKOlEeYHf2CeTsnO8dNF9IS4QAmxAHXE=;
	b=Ha/30AkkSRSHmROkPF2YlFFL0XUuvvu6M2mhQQpwIqplzUX6zNcg53IHiAvgjyif2kImSA
	2XYHF9wLSsbnqgHEcT1XP5JLIHThvRh1RSfb6OQCaQil+N4Wo9XI8ReHKOB35s6G3i6dcb
	/IRmU0mh/MwNhStGd/6bbWzGGrQ7G/Q=
X-MC-Unique: pPc7ebkhNheylgawnHugcw-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=mpHfU47ytWvlKOlEeYHf2CeTsnO8dNF9IS4QAmxAHXE=;
        b=aBjZoQAbQ0xDFvQyk1QgTOZPQAzmZDLoj1GM9LoK1YDfr2wRQtuUKKPz5d6ICpby6A
         f/4ZqkpAyR02vvAEq2hWT2S8MUDC8zuJualX/8tvIWSaaYuObj+26tX7tdDjCyFUI2d4
         TtypS2P4F+oFGZH9faou7tXw76LWEW5fxWtDR4Q8dV5H0By+/kjTMoHdsPYHFvH10Ih0
         QyBJZP3RjiJ2DpeXtRUJid2NTnZEZlKJCmts6VE9rJtYZzMspOfZPEx7yKWP08AI4lf/
         x6OQPP1PdvqMtcL01rfo5DKNpTeM7w50zclYvzqQxGKuhab3EvhWz0rGW87N3ExrIBYL
         f8dQ==
X-Gm-Message-State: AOAM532cOM/t5yr5icUxBu2ni/FOTYbsuFbSlVpsWyXMkuBeZdCVmQD3
	sRGYxq/qofZFsO9wNkD57+CnQhGmpakpc8yXNt69fap1JBiHoPMjTxkwQCkgtefO6SQ7ssASu92
	u0X2/RhVYGrdBm//FVBYQSsnSWI4acDZXp8wnd4s0Q9+4
X-Received: by 2002:a05:6214:18c4:: with SMTP id cy4mr1308098qvb.31.1621280063724;
        Mon, 17 May 2021 12:34:23 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzrIS3kb6w7PmbFlq9UBRJ350ROG7AamuOK9hbuWbq3L1MNHUQLZVSL3vwxDiiO1r5WAqQNVYwKM1+ZejVUBq8=
X-Received: by 2002:a05:6214:18c4:: with SMTP id cy4mr1308076qvb.31.1621280063443;
 Mon, 17 May 2021 12:34:23 -0700 (PDT)
MIME-Version: 1.0
References: <CABBoStjJjmxfF-4OLiBq4D_uJ4LuUqrxftAeh5UCxntLsyoshQ@mail.gmail.com>
In-Reply-To: <CABBoStjJjmxfF-4OLiBq4D_uJ4LuUqrxftAeh5UCxntLsyoshQ@mail.gmail.com>
From: Ana McTaggart <amctagga@redhat.com>
Date: Mon, 17 May 2021 15:34:12 -0400
Message-ID: <CABBoStiNOoDZWc+ehgQSYDLaLSz0prSGR+fTS0wbuyCmB9muwQ@mail.gmail.com>
To: oss-security@lists.openwall.com, felix.huettner@mail.schwarz
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=amctagga@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="00000000000043691b05c28bae4b"
Subject: [oss-security] Re: CVE-2021-3531: Ceph: RGW unauthenticated denial of service

--00000000000043691b05c28bae4b
Content-Type: text/plain; charset="UTF-8"

To clarify, the correct patch may be found in the following commit.
https://github.com/ceph/ceph/commit/f44a8ae8aa27ecef69528db9aec220f12492810e

Ana McTaggart

Red Hat Product Security

Red Hat Remote <https://www.redhat.com>


secalert@redhat.com for urgent response


amct@redhat.com


M: +1 (774)279-0791 <7742790791>     IM: amctagga


Pronouns:They/Them/Theirs



On Fri, May 14, 2021 at 3:16 PM Ana McTaggart <amctagga@redhat.com> wrote:

> Hello,
> A flaw was found in the Red Hat Ceph Storage RGW. When processing a GET
> Request for a swift URL that ends with two slashes it can cause the rgw to
> crash, resulting in a denial of service.
>
> We have assigned it a CVE of CVE-2021-3531 and a patch is attached.
>
> Fixes may be found here:
>
> Nautilus:
> https://github.com/ceph/ceph/commit/f44a8ae8aa27ecef69528db9aec220f12492810e
> Octopus:
> https://github.com/ceph/ceph/commit/b87e64e3206210580f4a6df2d77f9ae3f1033039
> Pacific:
> https://github.com/ceph/ceph/commit/bf06990ab41d7ac299e4441ad9cd434e926a18e7
>
> Ana McTaggart
>
> Red Hat Product Security
>
> Red Hat Remote <https://www.redhat.com>
>
>
> secalert@redhat.com for urgent response
>
>
> amct@redhat.com
>
>
> M: +1 (774)279-0791 <7742790791>     IM: amctagga
>
>
> Pronouns:They/Them/Theirs
>
>

--00000000000043691b05c28bae4b--

