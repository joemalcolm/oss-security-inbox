X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1805" "Friday" "2" "September" "2016" "02:48:30" "+0000" "Diogo Monica" "diogo.monica@docker.com" "<5309095AF4F10E2D.C7403B94-0E12-4BBF-9F83-04F9E21584CD@mail.outlook.com>" "72" "Re: [oss-security] Re: cve request: docker swarmkit Dos occurs by repeatly joining and quitting swam cluster as a node" nil nil nil "9" "2016090202:48:30" "[oss-security] Re: cve request: docker swarmkit Dos occurs by repeatly joining and quitting swam cluster as a node" (number mark "U       diogo.monica Sep  2   72/1805  " thread-indent "\"Re: [oss-security] Re: cve request: docker swarmkit Dos occurs by repeatly joining and quitting swam cluster as a node\"\n") "<CANO=Ty2n6Nus2uJkaJ3OTWrt0wgeOU1zydjAZtABdmp_itpP0g@mail.gmail.com>" ("<CA+q1=fSKUpSWOGusA99-_KkBZOxqjUzVZFSOQECgjAP+QMzuig@mail.gmail.com>" "<CANO=Ty2n6Nus2uJkaJ3OTWrt0wgeOU1zydjAZtABdmp_itpP0g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31974 invoked by uid 550); 2 Sep 2016 02:51:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30612 invoked from network); 2 Sep 2016 02:48:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=docker.com; s=google;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version;
        bh=Iylhdx5WdxW1x3D0fXQQhkHPiDMeQr18jpZ1IpC/VF8=;
        b=HtFjQ6HKBRRhLs1XSLgfyhhAYiu4TUWwbEA1LlgA7b3ptXSW0XNgqwmI1SdrsaXlVK
         fZ2AeW/LSzO9vjk//DIMGNVEYjjZOGYwQkNfOADSt7tVLnHPC+TceIFfcDnRQBnFOHjK
         yecN8EklKvnCwuYKsEWOprDZKDbxndnz+U4o4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:message-id:in-reply-to:references
         :subject:mime-version;
        bh=Iylhdx5WdxW1x3D0fXQQhkHPiDMeQr18jpZ1IpC/VF8=;
        b=RzXM/zFgdl1TDrpadcwvrXcFodOxibpJV9Dgaw2MNw/Po1QDffGvMDkfpwSTmcEC3Y
         GM+05jURfd7qqeV8c130MeyLOaQzp7k76zbXuOqHaWff94DPJqPa2zT2nRNVZPtgtWX7
         F7ldYItw6qstR/OGSeEsUMRGhA9/5wS6/YmHi8PPM/982e8bqJ2D1Qn4+QxVdOpMtb5Z
         uo8rDgKvf+WB1nXLmi7+TBG4Eq2xcrXo+7oSaMvpcXjGHB0P+ALJaVIIli0Ppij7Dc36
         dCgmh5VnrCLmhrpUQ/zVDpjqIiBDNYjY2DGKtRESBWIsjJc1M5JAjRRsvqdj+KYeJxjE
         z5pA==
X-Gm-Message-State: AE9vXwPEQkysAul06lDXyM3vvH5GyPg1cK4KBuetiOLIn2gFBjZO5lMh/S2YCsMM669GFxhW
X-Received: by 10.66.181.16 with SMTP id ds16mr32570494pac.102.1472784512742;
        Thu, 01 Sep 2016 19:48:32 -0700 (PDT)
Date: Fri, 2 Sep 2016 02:48:30 +0000 (UTC)
From: Diogo Monica <diogo.monica@docker.com>
To: oss-security <oss-security@lists.openwall.com>, 
	oss-security@lists.openwall.com
Message-ID: <5309095AF4F10E2D.C7403B94-0E12-4BBF-9F83-04F9E21584CD@mail.outlook.com>
In-Reply-To: <CANO=Ty2n6Nus2uJkaJ3OTWrt0wgeOU1zydjAZtABdmp_itpP0g@mail.gmail.com>
References: <CA+q1=fSKUpSWOGusA99-_KkBZOxqjUzVZFSOQECgjAP+QMzuig@mail.gmail.com>
 <CANO=Ty2n6Nus2uJkaJ3OTWrt0wgeOU1zydjAZtABdmp_itpP0g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_478_852766697.1472784510921"
X-Mailer: Outlook for iOS and Android
Subject: Re: [oss-security] Re: cve request: docker swarmkit Dos occurs by
 repeatly joining and quitting swam cluster as a node

------=_Part_478_852766697.1472784510921
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Can you please describe how this vulnerability makes a worker node be able =
to administer the swarm?






On Thu, Sep 1, 2016 at 7:12 PM -0700, "Kurt Seifried" <kseifried@redhat.com=
> wrote:










On Thu, Sep 1, 2016 at 5:17 PM, Diogo M=C3=B3nica=20
wrote:

> A few weeks ago (Aug 4, 2016), a CVE (CVE-2016-6595) describing a DoS on
> docker swarm got issued. We believe this not a real issue, and would like
> to have the CVE rescinded.
>
> The person reporting this "vulnerability" is exhausting the resources of a
> remote manager by doing hundreds of join/leave operations without removing
> the state that is left by old nodes. At some point the manager obviously
> stops being able to accept new nodes, since it runs out of memory.
>
> Given that both for Docker swarm and for Docker Swarmkit nodes are
> *required* to provide a secret token (it's actually the only mode of
> operation), this means that no adversary can simply join nodes and exhaust
> manager resources.
>
> We can't do anything about a manager running out of memory and not being
> able to add new legitimate nodes to the system. This is merely a resource
> provisioning issue, and definitely not a CVE worthy vulnerability.
>

I checked the documentation and it looks like a worker node is only
supposed to work and is not supposed to be able to administer the swarm. As
such this is a trust boundary violation, and needs a CVE.



> Thank you,
> --
> Diogo M=C3=B3nica
>



--=20

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com






------=_Part_478_852766697.1472784510921--
