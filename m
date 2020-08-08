X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1908" "Saturday" "8" "August" "2020" "11:16:50" "+0100" "=?UTF-8?B?QmFydMWCb21pZWogUMWCb3RrYQ==?=" "bwplotka@gmail.com" "<CAMssQwbxY-LY1FmuZUeLEp2etkj6poQc+MVzL-ah=XoF2vptSg@mail.gmail.com>" "51" "[oss-security] Re: [prometheus-team] Voiding CVE-2020-16248" "^Cc:" nil nil "8" "2020080810:16:50" "[oss-security] Re: [prometheus-team] Voiding CVE-2020-16248" (number mark "        bwplotka@gma Aug  8   51/1908  " thread-indent "\"[oss-security] Re: [prometheus-team] Voiding CVE-2020-16248\"\n") "<CAD77+gR7G5zBc4pwQ86H-UuMk6QOgPcuK8R-hmmHqv8+8_+dbw@mail.gmail.com>" ("<CAD77+gR7G5zBc4pwQ86H-UuMk6QOgPcuK8R-hmmHqv8+8_+dbw@mail.gmail.com>") nil nil nil nil nil nil nil "[oss-security] Re: [prometheus-team] Voiding CVE-2020-16248" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13357 invoked by uid 550); 8 Aug 2020 12:39:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21803 invoked from network); 8 Aug 2020 10:17:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SzhcZrGV+eTxLcjByb2djw2KUAodVpwD++Xqa48v8hw=;
        b=YveRN8rNzagU4RZzvB8RalYRvxxkxyIP6HYdUH7b1qfPtPvGJvSSsi7uWf+MEK7PQU
         zLFgDyFkWfmAaFx6k2OVKmi/4HvFNTJK8K8HwZDkPO2wPTlXYea0NJ8Mmc6u+HCA9m6N
         awy2iaJO7pU212yG6dlwJ62qP59J+Ag2wBXwxnKb+oNxZWsPOltcbUiVIv3g1hTVvOm1
         m+Dk3mgSYTdvEzPZmxr6OLvi3KlfdFLTo8jF8Go8cvBQjksxOfGilmu6j8IJmx02bW+I
         6EVsT1psuWGCBh9YAyfi1Cpts+QwBjpfZCQoJ9/fa3ttXJVDAPLTfFO75sFW3MvBwAWq
         00gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SzhcZrGV+eTxLcjByb2djw2KUAodVpwD++Xqa48v8hw=;
        b=aw5Tl8B1mEiCn7HLFtmRipYBdQN8v8uib2GEWpOErlGLdYQoXyci7zFbOsCvI/OLxI
         FpiSlNe7hQzMxVFihhhPpSQED29x8IL2vPzU1kyhVlckYZdLPEXmsbnN9j1/YL3t7g20
         KcjDfK4npyEyAH3BGxqP1AMfu8tuSDFxyuxKmd0/n+DAe6bgOqXR8TLOu7zUH6NWpDkS
         u39jvoLaDr83dDDrU31R3GRXtw0+sc0GrH5qOH4q4ZKoYk+CMypOYffhpfyyM9X9beYF
         FVr/ALY62i0vCNrHjBr7txWxughTHz5nXQZJgqzcUI9a3C9hsE8jy5qG5PmsBWoMfP2w
         gOfw==
X-Gm-Message-State: AOAM531loLwH3iSjg0R2DYmSSB2s/UFpUjTe8AIosUx6T9O7NS8NgAgq
	UX0eerlZ+G9XTeBIULvHvBnbNfrhp77S5QqKCQ==
X-Google-Smtp-Source: ABdhPJyWNGUAgiT1LxmM183bs9gjfmAQ0EVOfqamkzfcgXLnaSnMqRpGfooS3U8lMFruIOoHxfErTQO4PD28c4pmYRY=
X-Received: by 2002:a92:1b5b:: with SMTP id b88mr8563414ilb.104.1596881826562;
 Sat, 08 Aug 2020 03:17:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAD77+gR7G5zBc4pwQ86H-UuMk6QOgPcuK8R-hmmHqv8+8_+dbw@mail.gmail.com>
In-Reply-To: <CAD77+gR7G5zBc4pwQ86H-UuMk6QOgPcuK8R-hmmHqv8+8_+dbw@mail.gmail.com>
Message-ID: <CAMssQwbxY-LY1FmuZUeLEp2etkj6poQc+MVzL-ah=XoF2vptSg@mail.gmail.com>
Content-Type: multipart/alternative; boundary="00000000000005494b05ac5b0609"
Cc: oss-security@lists.openwall.com, 
	PrometheusMonitoring <prometheus-team@googlegroups.com>, 
	Prometheus Developers <prometheus-developers@googlegroups.com>
Date: Sat, 8 Aug 2020 11:16:50 +0100
From: =?UTF-8?Q?Bart=C5=82omiej_P=C5=82otka?= <bwplotka@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: [prometheus-team] Voiding CVE-2020-16248
To: Richard Hartmann <richih.mailinglist@gmail.com>

--00000000000005494b05ac5b0609
Content-Type: text/plain; charset="UTF-8"

Thanks for this work Richi, this is quite... interesting that someone might
mark core functionality as CVE.

Kind Regards,
Bartek

On Sat, 8 Aug 2020 at 09:49, Richard Hartmann <richih.mailinglist@gmail.com>
wrote:

> Dear all,
>
> the Prometheus project[1] has received a public "vulnerability"
> report[2] against what the reporter called SSRF, but what is the core
> functionality of blackbox_exporter[3]: The ability to trigger network
> probes over the network to monitor a target's availability. The
> reporter stated that CVE-2020-16248 has been assigned. From context,
> it seems to be a paid assessment of our software for an unnamed client
> which increases motivation to get "results", in particular CVEs for
> "zero days" - which are then promptly reported publicly with an
> embargoed CVE.
>
> The reporter has not replied to our statement that this behaviour is
> core functionality. I could not find out which organization has
> reserved CVE-2020-16248 so I decided to send email to this list to
> inform the organization, enabling them to update their records.
>
> Sorry for using this list for that purpose, I could not find a less
> wrong place to inform the (hopefully) interested parties.
>
>
> Best,
> Richard
>
> [1] https://prometheus.io/
> [2] https://github.com/prometheus/blackbox_exporter/issues/669
> [3] https://github.com/prometheus/blackbox_exporter
>
> --
> You received this message because you are subscribed to the Google Groups
> "Prometheus Team" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to prometheus-team+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/prometheus-team/CAD77%2BgR7G5zBc4pwQ86H-UuMk6QOgPcuK8R-hmmHqv8%2B8_%2Bdbw%40mail.gmail.com
> .
>

--00000000000005494b05ac5b0609--
