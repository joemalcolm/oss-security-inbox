X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2157" "Tuesday" "17" "November" "2020" "11:30:45" "-0500" "Ana McTaggart" "amctagga@redhat.com" "<CABBoStheRyxSVH2Bsr5gS_yQRDEGa0PtGBAE1fZO+z-1yxmgQg@mail.gmail.com>" "79" "[oss-security] Re: CVE-2020-25677 ceph: CEPHX_V2 replay attack protection lost" nil nil nil "11" "2020111716:30:45" "[oss-security] Re: CVE-2020-25677 ceph: CEPHX_V2 replay attack protection lost" (number mark "U       amctagga@red Nov 17   79/2157  " thread-indent "\"[oss-security] Re: CVE-2020-25677 ceph: CEPHX_V2 replay attack protection lost\"\n") "<CABBoStiTED9CRxFBD=Y521XyD=O5EU6Bh6gv1GohAsR2idhqyg@mail.gmail.com>" ("<CABBoStiTED9CRxFBD=Y521XyD=O5EU6Bh6gv1GohAsR2idhqyg@mail.gmail.com>") nil nil nil nil nil nil nil "[oss-security] Re: CVE-2020-25677 ceph: CEPHX_V2 replay attack protection lost" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22007 invoked by uid 550); 17 Nov 2020 16:39:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16046 invoked from network); 17 Nov 2020 16:31:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1605630664;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=pHBz41u2H/mY3x1N6XQ4cnORi63o3ld+XKrgjnsNMUA=;
	b=UiXyOXcq6wcvebBFc1iFJCmtfiGiCxPgdzA6BV3pQdHWdWGBDSgBsTINqLfW9VwwhQ2GTm
	WHCMcBvie/wZSB4ypkf3dU3nq9+fZH1JL9Dpgd+ni44nzwY1nw1LGcUowRM09Ro8H4NNSN
	S+cnH3zWkXvZJ0WiRoEYB0px7LR6Qo0=
X-MC-Unique: QbLbAq5pMMmzfWTOufermA-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=pHBz41u2H/mY3x1N6XQ4cnORi63o3ld+XKrgjnsNMUA=;
        b=aF2iPpFg3/QVKeTGW3NwhVTO6nNU61WTfTUdME0ote1HVEOPDvWr+4NUjey4vNVT3G
         7eW+quy+IdAi/b3DX7ZNSFzxv4nWCYzzhh45K5Ubz4IIQKZChV0iwjPSCfZFWxS9NQM7
         nZ0V0eMojqVN0n+3DBIo4LkMoW50mJZjQk2U30Uu7lP/PUnjvpx/dkU7uCQrFmcm8g3L
         wLGPm3BzIgVfTPbmkzorpcgaFWSOnfS30EMhbGVn1oHYelL2qnJjVkNWxz4KECbNLtrP
         TrMAWGk65hUm8tqQhvMw0GkkT3becsQUIR7sMzk/ppQMCnhrgedqxgQzlyItk9qgnPgf
         JHyQ==
X-Gm-Message-State: AOAM532oPksu+K5KjMGkXsZMLbPMyhXbZWboCgij5www/lMpBgLMjkUp
	oYBo4JcXqQYMtYldQcHOE6YtrOgVumf4ZZcPyrcsSwgkcW+RtIFG49ynwWAqzfVGIN39yFMdIsu
	DN7m9tmbv8GfTSdUyj+B5LhYbrdKMsontqbBC4moWpyXv
X-Received: by 2002:a92:aacd:: with SMTP id p74mr10783045ill.273.1605630658650;
        Tue, 17 Nov 2020 08:30:58 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxGXceycHYzm6lkGa6PWpGpu5Du88+OEKyyfMZw91HOTu5NPtxB2WseiYIojUclWYYFo+XixHRU7EJpCHiQwXs=
X-Received: by 2002:a92:aacd:: with SMTP id p74mr10783002ill.273.1605630657998;
 Tue, 17 Nov 2020 08:30:57 -0800 (PST)
MIME-Version: 1.0
References: <CABBoStiTED9CRxFBD=Y521XyD=O5EU6Bh6gv1GohAsR2idhqyg@mail.gmail.com>
In-Reply-To: <CABBoStiTED9CRxFBD=Y521XyD=O5EU6Bh6gv1GohAsR2idhqyg@mail.gmail.com>
From: Ana McTaggart <amctagga@redhat.com>
Date: Tue, 17 Nov 2020 11:30:45 -0500
Message-ID: <CABBoStheRyxSVH2Bsr5gS_yQRDEGa0PtGBAE1fZO+z-1yxmgQg@mail.gmail.com>
To: Ilya Dryomov <idryomov@redhat.com>, oss-security@lists.openwall.com
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=amctagga@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="00000000000002ce9d05b450053e"
Subject: [oss-security] Re: CVE-2020-25677 ceph: CEPHX_V2 replay attack protection lost

--00000000000002ce9d05b450053e
Content-Type: text/plain; charset="UTF-8"

Correction. The correct CVE is CVE-2020-25660

Ana McTaggart

Red Hat Product Security

Red Hat Remote <https://www.redhat.com>


secalert@redhat.com for urgent response


amct@redhat.com


M: 7742790791     IM: amctagga


Pronouns:They/Them/Theirs



On Tue, Nov 17, 2020 at 9:10 AM Ana McTaggart <amctagga@redhat.com> wrote:

> Dear all,
> cephx authentication protocol does not verify ceph clients correctly, and
> is vulnerable to replay attacks in nautilus and later. An attacker with
> access to the Ceph cluster network can use this vulnerability to
> authenticate with ceph service, via a packet sniffer. This allows them to
> perform actions allowed by the ceph service. This is a reintroduction of
> CVE-2018-1128[1], affecting msgr2 protocol. msgr 2 protocol is used for all
> communication except for older clients that do not support msgr2 protocol.
> msgr1 protocol is not affected.
>
> This was introduced in commit to msgr2 321548010578 ("mon/MonClient: skip
> CEPHX_V2 challenge if client doesn't support it") , due to commit
> c58c5754dfd2 ("msg/async/ProtocolV1: use AuthServer and AuthClient") . This
> results in nautilus and ceph being affected because commit c58c5754dfd2
> wasn't backported to nautilus, and although msgr1 isn't affected in
> nautilus, msgr 2 is the default. This made it so authorizer challenges
> could be skipped for peers which did not support CEPHX_V2, unfortunately
> making it so authorizer challenges are skipped for all peers in both msgr 1
> and msgr2 cases, disabling the protection that was put in place in commit
> f80b848d3f83 ("auth/cephx: add authorizer challenge", CVE-2018-1128).
>
> Proposed Patch:
> See attached.
>
> We have assigned it a CVE of CVE-2020-25677 at Red Hat.
>
> Credits to Ilya Dryomov
>
> [1]https://www.cvedetails.com/cve/CVE-2018-1128/
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
> M: 7742790791     IM: amctagga
>
>
> Pronouns:They/Them/Theirs
>
>

--00000000000002ce9d05b450053e--

