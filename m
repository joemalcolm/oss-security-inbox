Received: (qmail 22357 invoked by uid 550); 8 May 2026 19:29:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7448 invoked from network); 8 May 2026 19:03:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redcoat-dev.20251104.gappssmtp.com; s=20251104; t=1778266971; x=1778871771; darn=lists.openwall.com;
        h=in-reply-to:references:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c3mTVBnriNzv4da+WL58Ntlp9UziKcVM20AMetpCvj4=;
        b=EZY43Qj0e80d0vxN/ktwJ6Iefjs5DaFKteWSXXEmQwJPiUossIbH0obAPq3MlsFOE2
         FZXux4Tt7CFxwgVu+3rf/H60xEHaX4DxA+RUk7q0pToLGNr6CEzRP/Ucr9jWY8LDSsO4
         AAsrkRmt53cHr4v92Z9a2L5RnoS7aLS8+QF00OMiS38fJCzA/9V6PhkKriqa+AxA2TdR
         xU37XKjTEdABESQJpfjlRsjrEKcV64quv7SrBWOgiPZtUejTJD9qBAgXLyxRX5STfJOA
         bMMBly+uXjbrURh9s+E7movAK9BZ+vyFkFKqdlQz2EMcrA+7Qh0/GDdkopk3JrY1cKzR
         m+Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778266971; x=1778871771;
        h=in-reply-to:references:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=c3mTVBnriNzv4da+WL58Ntlp9UziKcVM20AMetpCvj4=;
        b=N8tqdIp3HzkeH0I2DCxm/bbvY27snsWLCzjwqOSpVj3mr9PlJIKRA8REqrqi55VHlh
         232j0C+eskT1YqcOe6Nni2YAJKgEOvCmjcXdHSh+jd0i06TS0khUcrccJmdFgEJht1kO
         +OqlDwHovHAXYubT0/Lz9ttySRked0G0GXcEV7BxYzAMP37aggL3Fy3TG1+xgLZxh2Wh
         OVmyjc2sCTDFlVWT8yoCQ/LqZpPFg8ioHV28x3FLlkkbPESS60tsX3DqthMkQhoVyNiC
         toQqAcuvrKRB02WVgBvd4IxVLTuFgXPfli/GTR5F9Tp0O0h2CjlYtu+7RlWJ0WHVdbTZ
         sEbw==
X-Gm-Message-State: AOJu0Yy+WpslJedAHSpqT9DK6kdcHGLp0LHzQoA8yaiQycTULfqjugtf
	rCPe92ZjChrwgenRNGle35/Mmvng5++Mw/amybt3+hBdHLGrxp5C6aN5sLf8YkTOhtl/l6Mns9y
	5eoxP
X-Gm-Gg: AeBDietBFZETxwNEFI7u5tV3w6FAw3X5gY6k+nazfkpFzPXrpXZWKZqSEIL6XVZXPIR
	FPOYSgNy05cgcfFUip9HwtnTvgctd1IIg6+FBt8vp5BhFPqdvb/lls/hu0QKeILbIGvbEFbPNbd
	ZSphQkZlFyl1Tj8vyHPCg5bgRF827TKNvoaPAUgc8+VKLpriclCYC+4hj+MsNK7Uu7IPKGzk2bl
	I+9Sc5P8zpHGN3XcIxzElTybCyqJKB10sv1cRFUfS2aUG/cZPlKiUvMvdq6vk900tVhDHr9UaF7
	OJQqqlZ8N3SXTM4VID478Yc8ugMuTmo/uJseErsjwU1aiAiGY4ct0DY1OB5KPrCook0wacevxys
	ZcfSugvesPyFbY6bkQlavIeFHsMkK6xYph6Nnp5mVMPwF4zKTFmBj8yH/TtqYDCxGXH7RsJv7JF
	rbS8Gt2puNSeyZpOydse7x21pL2WmpIyD2dNu42A0ofXZoJeyQxbco
X-Received: by 2002:a05:600c:4749:b0:488:aa33:dc8f with SMTP id 5b1f17b1804b1-48e5df8d7a7mr118886085e9.0.1778266970180;
        Fri, 08 May 2026 12:02:50 -0700 (PDT)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 08 May 2026 20:02:48 +0100
Message-Id: <DIDJ13P8RU4A.11N96L2KY4IDT@redcoat.dev>
From: "Emily Shepherd" <emily@redcoat.dev>
To: <oss-security@lists.openwall.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <afzgS2SCWNcZU3vU@v4bel> <5098645.GXAFRqVoOG@daniel-desktop3>
 <CAKXLc7dbALVK=jV4p9gcAD33LK44fjSan2YX7RYm7J7Qt-mg4g@mail.gmail.com>
 <CAM=PXV60JrnGErsv1OHSdO_y46eTPVWV=miFVW7UYhhiHX7XzA@mail.gmail.com>
In-Reply-To: <CAM=PXV60JrnGErsv1OHSdO_y46eTPVWV=miFVW7UYhhiHX7XzA@mail.gmail.com>
Subject: Re: [oss-security] Re: Dirty Frag: Universal Linux LPE

On Fri May 8, 2026 at 6:50 PM BST, Greg Dahlman wrote:
> PF/AF 1,2,10,16,17 are the ones that most people would use, with
> AF_VSOCK(40) as an exception that may be too noisy to log, along with
> bluetooth on desktops etc...
>
> IMHO, longer term, a bounding set in a text file in /etc of PF/AF
> families that can be used on a system is the more maintainable and
> robust solution in the end. socket() is just too tempting of an
> interface, with no real security boundaries unless it is device/file
> mediated.  It should be blockable at the system level by PF/AF no
> matter if it is loading a module or is compiled in at the system level
> IMHO.

Fyi it is possible to block socket calls by AF/PF with seccomp.

If using the OCI schema for seccomp definitions, blocking calls to=20
socket and socketpair with AF_ALG looks like [1]:

```
{
  "names": ["socket", "socketpair"],
  "action": "SCMP_ACT_ERRNO",
  "errnoRet": 97,
  "args": [
    {
      "index": 0,
      "value": 38,
      "op": "SCMP_CMP_EQ"
    }
  ]
}
```

[1]: https://github.com/moby/profiles/issues/19

Emily
