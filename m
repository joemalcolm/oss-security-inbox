X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["976" "Tuesday" "5" "May" "2015" "12:01:50" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFkJ+o3cYy+BTcetvJ+HCP-DXChWS04MXejbXZ=qLWLXdHw@mail.gmail.com>" "26" "Re: [oss-security] Problems in automatic crash analysis frameworks" nil nil nil "5" "2015050519:01:50" "[oss-security] Problems in automatic crash analysis frameworks" (number mark "        taviso@googl May  5   26/976   " thread-indent "\"Re: [oss-security] Problems in automatic crash analysis frameworks\"\n") "<5548B4DC.4080305@redhat.com>" ("<CAJ_zFkJw7hNxGp0PNmQbH0suVwfkgzbCsvs2Sv1OdxD+UBiraw@mail.gmail.com>" "<55315C2B.6050207@redhat.com>" "<553943C3.5060704@redhat.com>" "<5548B4DC.4080305@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24126 invoked by uid 550); 5 May 2015 19:02:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24102 invoked from network); 5 May 2015 19:02:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-type;
        bh=eTaMtZzLbkyl5U1mg9nB3affpWE61ThvVrrwq5wQOBA=;
        b=H40wa7xJWbwIskfDOQl4vVXGpQ00E0mF61SgCduHpyi/DtDyEi26bcGQGDxXmhJI1L
         ebf9bPy4cqRgTktRxVYHpkfxI/Rj/7+NgfnWRd1ppyfu3d5S3/pXhR8dvvo+P0iDuhOd
         gPcLdaTpkSF7OTdYfQAykTh+Zn/Z/K3vXe/hsi9L7MM9V5CRhfqJmdF/daWukFSQZ1/5
         HTYJzFYhgTFPWo3fq+lyQ8b6mwb9XqGorDy7xYR1jx6cdtcKyVmzUQPsgtcVABG3Vsio
         zoav04m7Ckmpbpev4bFUiwthUPUofSidi/NBNwmA1ZzBH81bbqVjX5vjkaCZsmt8QqgH
         H3Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-type;
        bh=eTaMtZzLbkyl5U1mg9nB3affpWE61ThvVrrwq5wQOBA=;
        b=DjJn8+jpg3AHKZlcWlPQt4Bkpv3QIDS636aHjlJbM+2RRIhTk15VutHSbkaoZhmuJa
         tLaHkYLMdt1J2vi+82Ki3B/CoVToxkxLK5o8iUi/vI++w1fV0mD1SPYUwjLGJZFVXZdU
         0EJuJowiHt/se7ZPtX2n3PnX77MJOEKmTrWwlD9LTPI/Z4M0Zp8j+6+r9GuLo6/pd8Z0
         l0uITgjygAvnGYcl4Bdh9XnWVUn4kQqr3yOYl6xtjJsCfaP8I376JQVGrQAf5nx20JvK
         LhgN8u3l0QJ+OIMtVHmL4K++q8wn3YhAQmXE8cY89rH3mh6MktFKggsmK7pm6kTl+34o
         ELgQ==
X-Gm-Message-State: ALoCoQniEl3/VxbFbP6dAHHep6d99UUyLEqewqq/e0XmtSx1MY8hNcccc4VdLgt66fwiSsPed/PJ
X-Received: by 10.141.19.7 with SMTP id v7mr38169403qhd.94.1430852531458; Tue,
 05 May 2015 12:02:11 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <5548B4DC.4080305@redhat.com>
References: <CAJ_zFkJw7hNxGp0PNmQbH0suVwfkgzbCsvs2Sv1OdxD+UBiraw@mail.gmail.com>
 <55315C2B.6050207@redhat.com> <553943C3.5060704@redhat.com> <5548B4DC.4080305@redhat.com>
Message-ID: <CAJ_zFkJ+o3cYy+BTcetvJ+HCP-DXChWS04MXejbXZ=qLWLXdHw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Tue, 5 May 2015 12:01:50 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Problems in automatic crash analysis frameworks
To: oss-security@lists.openwall.com

On Tue, May 5, 2015 at 5:17 AM, Florian Weimer <fweimer@redhat.com> wrote:
> On 04/23/2015 09:10 PM, Florian Weimer wrote:
>> On 04/17/2015 09:16 PM, Florian Weimer wrote:
>>> A quick update on the abrt situation.
>>
>> Another update.  We now have a public tracking bug listing the issues:
>>
>>   <https://bugzilla.redhat.com/show_bug.cgi?id=1214172>
>
>
> There is a public build (against EPEL7) of the consolidated fixes,
> available as a Copr repository:
>
>   <http://copr.fedoraproject.org/coprs/jfilak/abrt-hardened/>
>
> This also includes the consolidated fixes.
>
> At this stage, we'd appreciate additional comments/reviews.

Thanks Florian, this looks great. I'm just looking at the new ccpp, Is
it intentional that os-release and so on are still copied from the
process root? I realize now the dump directory is owned by root, so
there's no direct way to read it, but it seems like asking for trouble
to have a copy of /etc/shadow in there or something.

Tavis.
